import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dragon/modules/register/cubit/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/user_model.dart';

class SocialRegisterCubit extends Cubit<SocialRegisterStates> {
  SocialRegisterCubit() : super(SocialRegisterInitialState());

  static SocialRegisterCubit get(context) => BlocProvider.of(context);
// تسجيل اليوزر
  void userRegister({
    required String email,
    required String password,
    required String name,
    required String phone,
  }) {
    emit(SocialRegisterOnLoadingState());
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((value) {
      print(value.user?.email);
      userCreate(email: email, uId: value.user!.uid, name: name, phone: phone);
    }).catchError((e) {
      print(e);
      emit(SocialRegisterErrorState(e.toString()));
    });
  }

  void userCreate({
    required String email,
    required String uId,
    required String name,
    required String phone,
  }) {
    UserModel model = UserModel(
      uId: uId,
      name: name,
      phone: phone,
      email: email,
      image: "https://firebasestorage.googleapis.com/v0/b/dragon-1b61f.appspot.com/o/illustration-of-human-icon-user-symbol-icon-modern-design-on-blank-background-free-vector.jpg?alt=media&token=58eca7ff-7365-4761-913c-ac09716d35b7",
      isEmailVerified:false
    );
    FirebaseFirestore.instance
        .collection("users")
        .doc(uId)
        .set(model.toMap())
        .then((value) {
          emit(SocialUserCreateSuccessState(uId));
    })
        .catchError((error) {
      print(error.toString());
      emit(SocialUserCreateErrorState(error.toString()));
    });
  }

  IconData suffix = Icons.visibility;
  bool isPassword = true;
  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility : Icons.visibility_off;
    emit(SocialChangeRegisterPasswordVisibilityState());
  }
}
