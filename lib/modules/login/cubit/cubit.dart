import 'package:bloc/bloc.dart';
import 'package:dragon/modules/login/cubit/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginCubit extends Cubit<SocialLoginStates>{
  LoginCubit():super(SocialLoginInitialState());

  static LoginCubit get(context)=>BlocProvider.of(context);


  void login({required String email, required String password}) async {
    emit(OnLoadingLogin());
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password).then((value){
      print(value.user?.email);
      emit(LoginSuccessful(value.user!.uid));
    }).catchError((e){
      print(e);
      emit(LoginError(e.toString()));
    });
  }

  IconData suffix=Icons.visibility;
  bool isPassword=true;
  void changePasswordVisibility(){
    isPassword=!isPassword;
    suffix=isPassword?Icons.visibility:Icons.visibility_off;
    emit(SocialChangeLoginPasswordVisibilityState());
  }


}