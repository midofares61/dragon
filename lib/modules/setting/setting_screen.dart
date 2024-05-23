import 'package:dragon/modules/generalSetting/general_setting_screen.dart';
import 'package:dragon/modules/login/login_screen.dart';
import 'package:dragon/modules/workoutSetting/workout_setting_screen.dart';
import 'package:dragon/shared/components/components.dart';
import 'package:dragon/shared/components/constance.dart';
import 'package:dragon/shared/local/chach_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../cubit/cubit_app.dart';
import '../../cubit/state_app.dart';
import '../../generated/l10n.dart';
import '../../main.dart';
import '../../stripe_payment/stripe_payment_manger.dart';
import '../dialog_widget.dart';
import '../restartApp/restart_app_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw Exception('Could not launch $url');
    }
  }

  String language = "English";
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitApp, StateApp>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CubitApp.get(context);
          return Directionality(
            textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
            child: Scaffold(
              backgroundColor: Colors.grey.shade300,
              appBar: AppBar(
                scrolledUnderElevation: 0,
                title: Text(S.of(context).settingTitle.toUpperCase(),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold)),
              ),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    clipBehavior: Clip.antiAlias,
                                    child:
                                        Image.network(cubit.usermodel!.image!)),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Expanded(
                                  child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    cubit.usermodel!.name!.toUpperCase(),
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                  Text(
                                    cubit.usermodel!.email!,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ],
                              )),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.arrow_forward_ios_outlined)
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          if (!cubit.usermodel!.vip!)
                            defaultButton(
                                text: S.of(context).premium.toUpperCase(),
                                color: Colors.white,
                                background: Color.fromRGBO(33, 58, 255, 1),
                                navigate: () {
                                  PaymentManger.makePayment(
                                      (50.0)
                                          .toInt(),
                                      "EGP").whenComplete(() =>cubit.updateVip());
                                },
                                width: double.infinity),
                          if (!cubit.usermodel!.vip!)
                            SizedBox(
                              height: 20,
                            ),
                          cardSetting(
                              text: S.of(context).workoutSetting,
                              color: Color.fromRGBO(76, 176, 80, 1),
                              onPress: () {
                                navigateTo(
                                    context: context, widget: WorkoutSetting());
                              },
                              icon: Icons.water_drop,
                              isArrow: true,
                              isLanguage: false),
                          SizedBox(
                            height: 30,
                          ),
                          cardSetting(
                              text: S.of(context).generalSetting,
                              color: Color.fromRGBO(32, 151, 244, 1),
                              onPress: () {
                                navigateTo(
                                    context: context, widget: GeneralSetting());
                              },
                              icon: Icons.settings,
                              isArrow: true,
                              isLanguage: false),
                          SizedBox(
                            height: 30,
                          ),
                          cardSetting(
                              text: S.of(context).voiceSetting,
                              color: Color.fromRGBO(235, 160, 6, 1),
                              onPress: () {
                                Fluttertoast.showToast(
                                    msg: "سيتم اضافة هذه الميزة قريبا");
                              },
                              icon: Icons.keyboard_voice_rounded,
                              isArrow: true,
                              isLanguage: false),
                          SizedBox(
                            height: 30,
                          ),
                          cardSetting(
                              text: S.of(context).featureSetting,
                              color: Color.fromRGBO(0, 196, 215, 1),
                              onPress: () {
                                Fluttertoast.showToast(
                                    msg: "سيتم اضافة هذه الميزة قريبا");
                              },
                              icon: Icons.chat,
                              isArrow: true,
                              isLanguage: false),
                          SizedBox(
                            height: 30,
                          ),
                          cardSetting(
                              text: S.of(context).languageSetting,
                              color: Color.fromRGBO(103, 58, 188, 1),
                              isLanguage: true,
                              onPress: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return DialogWidget(
                                        padButtom: 32,
                                        padLeft: 32,
                                        padReight: 32,
                                        padTop: 32,
                                        radius: 16,
                                        dialogContent: Column(
                                          children: [
                                            RadioListTile(
                                                title: Text("English"),
                                                value: "English",
                                                groupValue: cubit.sort,
                                                onChanged: (val) {
                                                  cubit.change(val!);
                                                  Future.delayed(Duration(
                                                          milliseconds: 300))
                                                      .whenComplete(() {
                                                    Navigator.pop(context);
                                                    CacheHelper.SaveData(
                                                            key: "lang",
                                                            value: "en")
                                                        .whenComplete(() {
                                                      cubit.changeChooseLanguage(
                                                          "${CacheHelper.getData(key: "lang")}");
                                                      navigateToFinish(
                                                          context: context,
                                                          widget: RestartApp());
                                                      cubit.changeCurrentIndex(
                                                          0);
                                                    });
                                                  });
                                                }),
                                            RadioListTile(
                                                title: Text("Arabic"),
                                                value: "Arabic",
                                                groupValue: cubit.sort,
                                                onChanged: (val) {
                                                  cubit.change(val!);
                                                  Future.delayed(Duration(
                                                          milliseconds: 300))
                                                      .whenComplete(() {
                                                    Navigator.pop(context);
                                                    CacheHelper.SaveData(
                                                            key: "lang",
                                                            value: "ar")
                                                        .whenComplete(() {
                                                      cubit.changeChooseLanguage(
                                                          "${CacheHelper.getData(key: "lang")}");
                                                      navigateToFinish(
                                                          context: context,
                                                          widget: RestartApp());
                                                      cubit.changeCurrentIndex(
                                                          0);
                                                    });
                                                  });
                                                }),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              icon: Icons.language,
                              isArrow: true),
                          SizedBox(
                            height: 30,
                          ),
                          cardSetting(
                              text: S.of(context).logoutSetting,
                              color: Colors.red,
                              isLanguage: false,
                              onPress: () {
                                Dialog(context, ontap: () {
                                  // CacheHelper.removeData(key: "username");
                                  // CacheHelper.removeData(key: "phone");
                                  // CacheHelper.removeData(key: "email");
                                  // CacheHelper.removeData(key: "userId");
                                  cubit.changeCurrentIndex(0);
                                  CacheHelper.removeData(key: "uId")
                                      .whenComplete(() {
                                    navigateToFinish(
                                        context: context,
                                        widget: LoginScreen());
                                  });
                                },
                                    icon: Icons.exit_to_app,
                                    onPressedTitle: "Logout",
                                    subTitle: isArabic()
                                        ? "هل تريد تسجيل الخروج من البرنامج؟"
                                        : "Do you want Log out from appliction ?",
                                    bigTitle: isArabic()
                                        ? "تسجيل الخروج"
                                        : "Log out");
                              },
                              icon: Icons.logout,
                              isArrow: false),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey.shade300,
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10))),
                      child: Column(
                        children: [
                          cardSetting(
                              text: S.of(context).shareSetting,
                              isLanguage: false,
                              color: Color.fromRGBO(96, 125, 139, 1),
                              onPress: () {
                                Share.share(
                                    "مرحبا صديقي 👋 قم بتحميل تطبيق كوماند من خلال هذا الرابط https://kommanda.sintac.site/ لتستفيد بتوفير أفضل الفنيين في مختلف المهن او الحصول على عملائك بسهولة وشكل آمن ومضمون واستخدم كود الدعوة (  ) لنتسفيد جميعا بربح النقود");
                              },
                              icon: Icons.share,
                              isArrow: false),
                          SizedBox(
                            height: 30,
                          ),
                          cardSetting(
                              text: S.of(context).feedSetting,
                              isLanguage: false,
                              color: Color.fromRGBO(96, 125, 139, 1),
                              onPress: () async {
                                String? encodeQueryParameters(
                                    Map<String, String> params) {
                                  return params.entries
                                      .map((MapEntry<String, String> e) =>
                                          '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                                      .join('&');
                                }

                                final Uri emailLaunchUri = Uri(
                                  scheme: 'mailto',
                                  path: 'mhmedfares@gmail.com',
                                  query: encodeQueryParameters(<String, String>{
                                    'subject': 'ملاحضاتك حول تطبيق dragon',
                                  }),
                                );
                                if (await canLaunchUrl(emailLaunchUri)) {
                                  launchUrl(emailLaunchUri);
                                } else {
                                  throw Exception(
                                      "could not lunch $emailLaunchUri");
                                }
                              },
                              icon: Icons.edit,
                              isArrow: false),
                          SizedBox(
                            height: 30,
                          ),
                          cardSetting(
                              text: S.of(context).rateSetting,
                              isLanguage: false,
                              color: Color.fromRGBO(96, 125, 139, 1),
                              onPress: () {},
                              icon: Icons.star,
                              isArrow: false),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            "Version 1.0.0",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }

  Dialog(context,
      {required void Function()? ontap,
      required IconData icon,
      required String bigTitle,
      required String subTitle,
      required String onPressedTitle}) {
    return showDialog(
        context: context,
        builder: (context) {
          return DialogWidget(
            padButtom: 32,
            padLeft: 32,
            padReight: 32,
            padTop: 32,
            radius: 16,
            dialogContent: Column(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        icon,
                        color: defaultColor,
                        size: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        bigTitle,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.grey),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          child: Center(
                            child: Text(
                              "Cancel",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  color: Colors.black),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: defaultColor, width: 2),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16)),
                          height: 50,
                          width: double.infinity,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: ontap,
                        child: Container(
                          decoration: BoxDecoration(
                              color: defaultColor,
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: Text(
                              onPressedTitle,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 25,
                                  color: Colors.white),
                            ),
                          ),
                          height: 50,
                          width: double.infinity,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
