import 'dart:async';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../layouts/home_layout.dart';
import '../../shared/components/components.dart';
import '../../shared/local/chach_helper.dart';
import '../register/shop_register_screen.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late StreamSubscription subscription;

  final formKey = GlobalKey<FormState>();

  var phoneController = TextEditingController();

  var passwordController = TextEditingController();
  var isLoginSecure = true;

  @override
  Widget build(BuildContext context) {
    final ismobile = MediaQuery.of(context).size.width <= 500;
    return BlocProvider(
      create: (BuildContext context)=>LoginCubit(),
      child: BlocConsumer<LoginCubit,SocialLoginStates>(
          listener: (context, state) {
            if(state is LoginError){
              Fluttertoast.showToast(msg: state.error);
            }
            if(state is LoginSuccessful){
              print(state.uId);
              CacheHelper.SaveData(key: "uId", value: state.uId).then((value){
                Fluttertoast.showToast(msg: "تم تسجيل الدخول بنجاح");
                navigateToFinish(context: context, widget: HomeLayout());
              });
            }
          },
          builder: (context, state) {
            var cubit = LoginCubit.get(context);
            return Directionality(
              textDirection: TextDirection.rtl,
              child: Scaffold(
                body: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(ismobile ? 20 : 40.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100)),
                          clipBehavior: Clip.antiAlias,
                          child: Image(
                            image: AssetImage("assets/images/Logo.png"),
                            width: 150,
                            height: 150,
                          ),
                        ),
                        SizedBox(
                          height: 60,
                        ),
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: phoneController,
                                keyboardType: TextInputType.name,
                                style: TextStyle(color: Colors.black),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "يجب ادخال الاسم ";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    label: FittedBox(
                                      child: Text("الاسم",
                                          style: TextStyle(color: Colors.black)),
                                    ),
                                    prefixIcon: Icon(
                                      Icons.person,
                                      color: Colors.black,
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              TextFormField(
                                controller: passwordController,
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: isLoginSecure,
                                style: TextStyle(color: Colors.black),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "يجب ان تتكون كلمة السر من 8 احرف علي الافل";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.black)),
                                    label: FittedBox(
                                      child: Text(
                                        "كلمة السر",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    prefixIcon:
                                        Icon(Icons.lock, color: Colors.black),
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isLoginSecure = !isLoginSecure;
                                        });
                                      },
                                      icon: Icon(isLoginSecure
                                          ? Icons.visibility
                                          : Icons.visibility_off),
                                    ),
                                    border: OutlineInputBorder()),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                             ConditionalBuilder(
                                  condition: state is! OnLoadingLogin,
                                  builder: (context)=> defaultButton(
                                      text: "تسجيل الدخول",
                                      color: Colors.white,
                                      background: Colors.blue,
                                      width: double.infinity,
                                      navigate: () async {
                                        if (formKey.currentState!.validate()) {
                                          cubit.login(
                                            email: phoneController.text,
                                            password: passwordController.text,
                                          );
                                        }
                                      }),
                                  fallback: (context)=> Center(child: CircularProgressIndicator())),
                          SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("ليس لديك حساب ؟",style: TextStyle(fontSize: 16),),
                            TextButton(onPressed: (){
                              navigateTo(context: context, widget: SocialRegisterScreen());
                            }, child: Text("انشاء حساب",style: TextStyle(color: Colors.blue,fontSize: 16),))
                          ],
                        )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
