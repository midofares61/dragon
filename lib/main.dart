import 'package:bloc/bloc.dart';
import 'package:dragon/generated/l10n.dart';
import 'package:dragon/shared/components/components.dart';
import 'package:dragon/shared/components/constance.dart';
import 'package:dragon/shared/local/chach_helper.dart';
import 'package:dragon/shared/network/remote/dio_helper.dart';
import 'package:dragon/stripe_payment/stripe_keys.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:wakelock/wakelock.dart';
import 'cubit/bloc_observer.dart';
import 'cubit/cubit_app.dart';
import 'cubit/state_app.dart';
import 'layouts/home_layout.dart';
import 'modules/login/login_screen.dart';
import 'package:intl/intl.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  print("on background message");
  print(message.notification!.title.toString());
  // Fluttertoast.showToast(msg: "on background message");
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent));
  await Firebase.initializeApp();
  await CacheHelper.init();
  token = await FirebaseMessaging.instance.getToken();
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    print('User granted permission');
  } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
    print('User granted provisional permission');
  } else {
    print('User declined or has not accepted permission');
  }
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessageOpenedApp.listen((event) {
    print("on Message Opened App");
    print(event.data.toString());
  });
  FirebaseMessaging.onMessage.listen((event) {
    print("on Message");
    print(event.data.toString());
  });
  if(CacheHelper.getData(key: "wake")==null){
    Wakelock.enable();
    print("wake on");
  }else {
    Wakelock.toggle(enable: CacheHelper.getData(key: "wake"));
    print("wake off");
  }
  
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  Stripe.publishableKey = ApiKeys.publishKey;
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  Widget widget;
  uId = CacheHelper.getData(key: "uId");
  if (uId != null) {
    widget = HomeLayout();
  } else {
    widget = LoginScreen();
  }
  runApp(MyApp(
    startWidget: widget,
  ));
}

class MyApp extends StatelessWidget {
  final startWidget;
  MyApp({super.key, required this.startWidget});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => CubitApp()
        ..getPosts(),
        child: BlocConsumer<CubitApp, StateApp>(
            listener: (context, state) {},
            builder: (context, state) {
              return MaterialApp(
                locale: Locale(CubitApp.get(context).chooselanguage),
                localizationsDelegates: [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: S.delegate.supportedLocales,
                title: "House Of Dragon",
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  scaffoldBackgroundColor: Colors.white,
                  bottomNavigationBarTheme: BottomNavigationBarThemeData(
                    backgroundColor: Colors.white
                  ),
                  appBarTheme: const AppBarTheme(
                    backgroundColor: Colors.white,
                    titleTextStyle: TextStyle(color: Colors.black),
                    iconTheme: IconThemeData(color: Colors.black),
                  ),
                ),
                home: SplashScreen(
                  Finishwidget: startWidget!,
                ),
              );
            }));
  }

  void dispose() {
    Wakelock.disable();
  }
}

bool isArabic() {
  return Intl.getCurrentLocale() == "ar";
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key, required this.Finishwidget});
  final Widget Finishwidget;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) =>
        navigateToFinish(context: context, widget: widget.Finishwidget));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage("assets/images/Logo.png"),
        ),
      ),
    );
  }
}
