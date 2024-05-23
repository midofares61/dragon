import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:dragon/shared/components/constance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../cubit/cubit_app.dart';
import '../../cubit/state_app.dart';
import '../../generated/l10n.dart';
import '../../models/user_model.dart';
import '../../shared/components/components.dart';
import '../chat_details/chat_details_screen.dart';
import '../create_post/carete_post_screen.dart';
import '../users/users_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitApp, StateApp>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CubitApp.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(S.of(context).trainerTitle,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23,
                      fontWeight: FontWeight.bold)),
              actions: [
                cubit.usermodel!.isAdmin!?
                InkWell(
                  onTap: (){
                    navigateTo(context: context, widget: CreatePostScreen());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: defaultColor,
                      borderRadius: BorderRadius.circular(5)
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Text("Add Post",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                ):SizedBox(),
                SizedBox(width: 10,),
              ],
            ),
            body: ConditionalBuilder(
                condition: cubit.usermodel!.vip!,
                builder: (context) => Column(
                      children: [
                        ConditionalBuilder(
                            condition: cubit.users.isNotEmpty,
                            builder: (context) =>cubit.usermodel!.isAdmin!?
                            InkWell(
                              onTap: () {
                                navigateTo(
                                    context: context,
                                    widget: UsersScreen());
                              },
                              child: Container(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "عرض جميع المستخدمين",
                                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            )
                                :ListView.separated(
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) =>cubit
                                          .users[index].isAdmin!
                                      ? chatBuilder(cubit.users[index], context)
                                      : SizedBox(),
                                  separatorBuilder: (context, index) =>
                                      myDivider(),
                                  itemCount: cubit.users.length,
                                ),
                            fallback: (context) =>
                                Center(child: CircularProgressIndicator())),
                        Container(
                          width: double.infinity,
                          height: 10,
                          color: Colors.grey[300],
                        ),
                        ConditionalBuilder(condition: cubit.posts.isNotEmpty, builder: (context)=>Expanded(
                          child: ConditionalBuilder(
                              condition: cubit.getpost,
                              builder: (context) => ConditionalBuilder(
                                  condition: cubit.posts.isNotEmpty,
                                  builder: (context) => Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: ListView.separated(
                                        shrinkWrap: true,
                                        physics:
                                        const NeverScrollableScrollPhysics(),
                                        itemBuilder: (context, index) => buildCard(
                                          context,
                                          index,
                                          name: "${cubit.posts[index].name}",
                                          dateTime:
                                          "${cubit.posts[index].dateTime}",
                                          image: "${cubit.posts[index].image}",
                                          imagePost:
                                          "${cubit.posts[index].postImage}",
                                          text: "${cubit.posts[index].text}",
                                        ),
                                        // cubit.posts[index], context, index),
                                        separatorBuilder: (context, index) =>
                                            SizedBox(
                                              height: 20,
                                            ),
                                        itemCount: cubit.posts.length),
                                  ),
                                  fallback: (context) => Center(
                                    child: Text("No Message Here",style: TextStyle(color: Colors.black),),
                                  )),
                              fallback: (context) =>
                                  Center(child: CircularProgressIndicator())),
                        ), fallback: (context) =>
                            Center(child: CircularProgressIndicator()))
                      ],
                    ),
                fallback: (context) => Center(
                        child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "يجب عليك الاشتراك في بريميوم حتي تتمكن من الاستفادة بهذه المميزات",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          defaultButton(
                              text: S.of(context).premium.toUpperCase(),
                              color: Colors.white,
                              background: Color.fromRGBO(33, 58, 255, 1),
                              navigate: () {},
                              width: double.infinity),
                        ],
                      ),
                    ))),
          );
        });
  }


}
