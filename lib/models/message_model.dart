import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel{
  String? text;
  Timestamp? dateTime;
  String? senderId;
  String? receiverId;


  MessageModel(
      {
        this.dateTime,
        this.text,
        this.senderId,
        this.receiverId,
      }
      );

  MessageModel.fromJson(Map<String,dynamic>?json){
    dateTime=json?["dateTime"];
    text=json?["text"];
    senderId=json?["senderId"];
    receiverId=json?["receiverId"];
  }

  Map<String,dynamic> toMap(){
    return {
      "dateTime":dateTime,
      "text":text,
      "receiverId":receiverId,
      "senderId":senderId,

    };
  }
}