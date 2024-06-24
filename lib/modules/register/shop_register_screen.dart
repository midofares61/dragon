import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../layouts/home_layout.dart';
import '../../shared/components/components.dart';
import '../../shared/local/chach_helper.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class SocialRegisterScreen extends StatelessWidget {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var nameController=TextEditingController();
  var phoneController=TextEditingController();
  var formKeys=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context)=>SocialRegisterCubit(),
      child: BlocConsumer<SocialRegisterCubit,SocialRegisterStates>(
        listener: (context,state){
          if(state is SocialUserCreateSuccessState){
            CacheHelper.SaveData(key: "uId", value: state.uId).then((value){
              Fluttertoast.showToast(msg: "تم انشاء حساب بنجاح");
              navigateToFinish(context: context, widget: HomeLayout());
            });
          }
        },
        builder: (context,state){
          var cubit=SocialRegisterCubit.get(context);
          return Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              body: Center(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: formKeys,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "انشاء حساب".toUpperCase(),
                            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 40,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                              "سجل الان لتستمتع بافصل التمارين",
                              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18
                              )
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          defaultTextForm(
                            controller: nameController,
                            type: TextInputType.text,
                            label: "الاسم",
                            prefix: Icon(Icons.person),
                            validate: (value){
                              if(value!.isEmpty){
                                return "يرجي ادخال اسمك";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          defaultTextForm(
                            controller: emailController,
                            type: TextInputType.emailAddress,
                            label: "الايميل",
                            prefix: Icon(Icons.email_outlined),
                            validate: (value){
                              if(value!.isEmpty){
                                return "يرجي ادخال الايميل الخاص بك";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          defaultTextForm(
                            controller: phoneController,
                            type: TextInputType.phone,
                            label: "رقم الهاتف",
                            prefix: Icon(Icons.phone_android),
                            validate: (value){
                              if(value!.isEmpty){
                                return "يرجي ادخال رقم الهاتف";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          defaultTextForm(
                              controller: passwordController,
                              type: TextInputType.visiblePassword,
                              label: "الباسورد",
                              prefix: Icon(Icons.lock),
                              validate: (value){
                                if(value!.isEmpty){
                                  return "الباسورد قصير جدا";
                                }
                                return null;
                              },
                              isPassword: cubit.isPassword,
                              suffix: cubit.suffix,
                              suffixFun: (){
                                cubit.changePasswordVisibility();
                              }
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ConditionalBuilder(
                              condition: state is! SocialRegisterOnLoadingState,
                              builder: (context)=> defaultButton(
                                width: double.infinity,
                                navigate: (){
                                  if(formKeys.currentState!.validate()){
                                    cubit.userRegister(email: emailController.text, password: passwordController.text, name: nameController.text, phone: phoneController.text);
                                  }
                                },
                                text: "انشاء حساب", color: Colors.white, background: Colors.blue,
                              ),
                              fallback: (context)=> Center(child: CircularProgressIndicator()))

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),

    );
  }
}
