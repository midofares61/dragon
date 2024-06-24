import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/cubit_app.dart';
import '../../cubit/state_app.dart';
import '../../models/message_model.dart';
import '../../models/user_model.dart';


class ChatDetailsScreen extends StatelessWidget {
  final UserModel model;
  ChatDetailsScreen({super.key, required this.model});
  var chatController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (BuildContext context) {
      CubitApp.get(context).getMessages(receiverId: "${model.uId}");
      return BlocConsumer<CubitApp, StateApp>(
          listener: (context, state) {},
          builder: (context, state) {
            var cubit = CubitApp.get(context);
            return Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                appBar: AppBar(
                  titleSpacing: 0.0,
                  title: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage("${model.image}"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("${model.name}")
                    ],
                  ),
                ),
                body: ConditionalBuilder(
                  condition: CubitApp.get(context).messages!=null,
                  builder: (context) => Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Expanded(
                          child: ListView.separated(
                            reverse: true,
                              itemBuilder: (context, index){
                                // if(CubitApp.get(context).usermodel!.uId==CubitApp.get(context).messages[index].senderId){
                                //   return buildMyMessage(CubitApp.get(context).messages[index]);
                                // }else{
                                return buildMessage( message: CubitApp.get(context).messages[index], cubit: CubitApp.get(context));
                                // }
                              },
                              separatorBuilder: (context, index) => SizedBox(height: 15,),
                              itemCount: CubitApp.get(context).messages.length),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Colors.grey.withOpacity(0.5)),
                              borderRadius: BorderRadius.circular(15)),
                          clipBehavior: Clip.antiAlias,
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: TextFormField(
                                    controller: chatController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "type your message here ..."),
                                  ),
                                ),
                              ),
                              Container(
                                  height: 55,
                                  width: 55,
                                  color: Colors.blue,
                                  child: MaterialButton(
                                    onPressed: () {
                                      cubit.sendMessage(
                                          text: chatController.text,
                                          dateTime: DateTime.now().toString(),
                                          receiverId: "${model.uId}");
                                      chatController.text = "";
                                    },
                                    child: Transform.rotate(
                                        angle: 5.7,
                                        child: Icon(
                                          Icons.send,
                                          color: Colors.white,
                                        )),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  fallback: (context) =>
                      Center(child: CircularProgressIndicator()),
                ),
              ),
            );
          });
    });
  }

  Widget buildMessage({
    required MessageModel message,
    required CubitApp cubit
}) => Align(
        alignment: cubit.usermodel!.uId==message.senderId? AlignmentDirectional.centerEnd:AlignmentDirectional.centerStart,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
              color:cubit.usermodel!.uId==message.senderId?Colors.blue.withOpacity(.2) :Colors.grey[300],
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(10),
                topStart: Radius.circular(10),
                bottomEnd: cubit.usermodel!.uId==message.senderId?Radius.circular(0):Radius.circular(10),
                bottomStart: cubit.usermodel!.uId==message.senderId?Radius.circular(10):Radius.circular(0),
              )),
          child: Text("${message.text}"),
        ),
      );
  Widget buildMyMessage(MessageModel message) => Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(.2),
              borderRadius: BorderRadiusDirectional.only(
                topEnd: Radius.circular(10),
                topStart: Radius.circular(10),
                bottomStart: Radius.circular(10),
              )),
          child: Text("${message.text}"),
        ),
      );
}
