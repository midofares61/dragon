import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dragon/modules/setting/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dragon/cubit/state_app.dart';
import 'package:dragon/modules/cardio_screen/cardio_screen.dart';
import 'package:dragon/shared/components/components.dart';
import 'package:dragon/shared/local/chach_helper.dart';
import 'package:image_picker/image_picker.dart';
import '../layouts/home_layout.dart';
import '../models/excersises_model.dart';
import '../models/message_model.dart';
import '../models/post_model.dart';
import '../models/user_model.dart';
import '../modules/chats/chat_screen.dart';
import '../modules/home/home.dart';
import '../shared/components/constance.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;


class CubitApp extends Cubit<StateApp> {
  CubitApp() : super(AppInitialState());

  static CubitApp get(context) => BlocProvider.of(context);
  bool sound = CacheHelper.getData(key: "sound") == null
      ? true
      : CacheHelper.getData(key: "sound");
  List? list;
  var index=0;
  void changeIndex(int ind){
    index=ind;
    emit(changeIndexState());
  }
  var currentIndex=0;
  void changeCurrentIndex(int ind){
    currentIndex=ind;  
    emit(ChangeCurrentIndexState());
  }
  //mohamed

  int restTime=CacheHelper.getData(key: "restTime")==null?25:CacheHelper.getData(key: "restTime");
  
  void changeRest(int num){
    restTime=num;
    emit(ChangeRestTimeState());
  }
  // List<BottomNavigationBarItem> bottomItem = [
  //   BottomNavigationBarItem(
  //       icon: Icon(Icons.timer),
  //       label: "تدريبي"
  //   ),
  //   BottomNavigationBarItem(
  //       icon: Icon(Icons.explore),
  //       label: "اكتشف"
  //   ),BottomNavigationBarItem(
  //       icon: Icon(Icons.person),
  //       label: "المدرب"
  //   ),BottomNavigationBarItem(
  //       icon: Icon(Icons.settings),
  //       label: "الاعدادات"
  //   ),
  // ];

  List<Widget> screens = [
    HomeScreen(),
    CardioScreen(),
    ChatScreen(),
    SettingScreen()
  ];
  String sort=CacheHelper.getData(key: "lang")==null?"English":CacheHelper.getData(key: "lang")=="en"?"English":"Arabic";
  void change(String value){
    sort=value;
    emit(ChangeSortState());
  }
  String chooselanguage = CacheHelper.getData(key: "lang")==null? "en":CacheHelper.getData(key: "lang");

  void changeChooseLanguage(String lang) {
    chooselanguage = lang;
    emit(ChangeChooseLanguageState());
  }
  var number=0;
  var controller = CountDownController();

  void stopCount(){
    controller.pause();
    emit(ChangeCountState());
  }

  void startCount(){
    controller.resume();
    emit(ChangeCountState());
  }
  UserModel? usermodel;
  void getUser() {
    emit(OnLoadingGetUserState());
    FirebaseFirestore.instance.collection("users").doc(uId).get().then((value) {
      usermodel = UserModel.fromJson(value.data());
      print(value.data());
      emit(GetUserSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetUserErrorState());
    });
  }
  void login({
    required String name,
    required String password,
    required BuildContext context,
}){
    if(name=="Mohamed"&&password=="01111138588"){
      CacheHelper.SaveData(key: "token", value: "1").then((value){
        navigateToFinish(context: context, widget: HomeLayout());
      });
      emit(ChangeLoginSuccessState());
    }

  }


  List<UserModel> users = [];
  void getUsers() {
    emit(OnLoadingGetAllUsersState());
    if (users.isEmpty) {
      FirebaseFirestore.instance.collection("users").get().then((value) {
        value.docs.forEach((element) {
          if (element.data()["uId"] != usermodel!.uId) {
            users.add(UserModel.fromJson(element.data()));
          }
        });
        emit(GetAllUsersSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(GetAllUsersErrorState());
      });
    }
  }

  void sendMessage({
    required String text,
    required String dateTime,
    required String receiverId,
  }) {
    // MessageModel model = MessageModel(
    //     dateTime: dateTime,
    //     receiverId: receiverId,
    //     text: text,
    //     senderId: usermodel!.uId);
    FirebaseFirestore.instance
        .collection("users")
        .doc(usermodel!.uId)
        .collection("chats")
        .doc(receiverId)
        .collection("messages")
        .add({
      "receiverId":receiverId,
      "text":text,
      "senderId":usermodel!.uId,
      "dateTime":FieldValue.serverTimestamp(),
    })
        .then((value) {
      emit(SendMessageSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(SendMessageErrorState());
    });

    FirebaseFirestore.instance
        .collection("users")
        .doc(receiverId)
        .collection("chats")
        .doc(usermodel!.uId)
        .collection("messages")
        .add({
      "receiverId":receiverId,
      "text":text,
      "senderId":usermodel!.uId,
      "dateTime":FieldValue.serverTimestamp(),
    })
        .then((value) {
      emit(SendMessageSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(SendMessageErrorState());
    });
  }

  List<MessageModel> messages = [];
  void getMessages({required String receiverId}) {
    FirebaseFirestore.instance
        .collection("users")
        .doc(usermodel!.uId)
        .collection("chats")
        .doc(receiverId)
        .collection("messages").orderBy("dateTime", descending: true)
        .snapshots()
        .listen((event) {
      messages=[];
      event.docs.forEach((element) {
        messages.add(MessageModel.fromJson(element.data()));
      });
      emit(GetMessageSuccessState());
    });
  }

  void updateVip() {
    FirebaseFirestore.instance
        .collection("users")
        .doc(usermodel!.uId)
        .update({"vip":true}).then((value){
          getUser();
      emit(UpdateVipSuccessState());
    });
  }
  
  List<PostModel> posts = [];
  bool getpost=false;
  void getPosts() {
    posts = [];
    getpost=false;
    emit(OnLoadingGetPostState());
    FirebaseFirestore.instance.collection("post").get().then((value) {
      value.docs.forEach((element) {
        posts.add(PostModel.fromJson(element.data()));
      });
      getpost=true;
      emit(GetPostSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(GetPostErrorState());
    });
  }


  File? postImage;

  Future picPostImageFromGallery() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      postImage = File(pickedImage.path);
      emit(PostImagePickedSuccessState());
    } else {
      print("no Image Selected");
      emit(PostImagePickedErrorState());
    }
  }

  void removePostImage() {
    postImage = null;
    emit(RemovePostImageState());
  }

  void createPost({
    required String text,
    required String dateTime,
  }) {
    emit(OnLoadingCreatePostState());
    if (postImage != null) {
      firebase_storage.FirebaseStorage.instance
          .ref()
          .child("posts/${Uri.file(postImage!.path).pathSegments.last}")
          .putFile(postImage!)
          .then((value) {
        value.ref.getDownloadURL().then((value) {
          PostModel model = PostModel(
              uId: usermodel!.uId,
              name: usermodel!.name,
              image: usermodel!.image,
              postImage: value,
              text: text,
              dateTime: dateTime);

          FirebaseFirestore.instance
              .collection("post")
              .add(model.toMap())
              .then((value) {
            removePostImage();
            getPosts();
            emit(CreatePostSuccessState());
          }).catchError((error) {
            print(error.toString());
            emit(CreatePostErrorState());
          });
        }).catchError((error) {
          print(error.toString());
          emit(UploadPostImageErrorState());
        });
      }).catchError((error) {
        print(error.toString());
        emit(UploadPostImageErrorState());
      });
    } else {
      PostModel model = PostModel(
          uId: usermodel!.uId,
          name: usermodel!.name,
          image: usermodel!.image,
          postImage: "",
          text: text,
          dateTime: dateTime);

      FirebaseFirestore.instance
          .collection("post")
          .add(model.toMap())
          .then((value) {
        getPosts();
        emit(CreatePostSuccessState());
      }).catchError((error) {
        print(error.toString());
        emit(CreatePostErrorState());
      });
    }
  }
}

