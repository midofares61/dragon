import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/cubit_app.dart';
import '../../cubit/state_app.dart';


class CreatePostScreen extends StatelessWidget {
   CreatePostScreen({super.key});
  var postController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitApp, StateApp>(
        listener: (context, state) {
        },
    builder: (context, state) {
    var cubit = CubitApp.get(context);
    return WillPopScope(
      onWillPop: ()async{
        if(cubit.postImage!=null||postController.text.isNotEmpty){
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text("هل تريد انشاء المنشور لاحقا ؟"),
                actions: [
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'cancel');
                      },
                      child: Text("متابعة التعديل")),
                  TextButton(
                      onPressed: () {
                        Navigator.pop(context, 'cancel');
                        Navigator.pop(context);
                        cubit.removePostImage();
                        postController.text="";
                      },
                      child: Text("اهمال المنشور")),
                ],
              ));
          return false;
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Create Post"),
          actions: [
            TextButton(onPressed: (){
              if(postController.text.isNotEmpty){
                var now=DateTime.now();
                cubit.createPost(text: postController.text, dateTime: now.toString());
                postController.text="";
                Navigator.pop(context);
              }
            }, child: Text("Post",style: TextStyle(fontSize: 20),)),
            SizedBox(width: 10,)
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage("${cubit.usermodel!.image}"),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Text(
                      cubit.usermodel!.name!,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(height: 1.4),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column( 
                    children: [
                      TextFormField(
                        controller: postController,
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "what do you mind ..."
                        ),
                      ),
                      SizedBox(height: 10,),
                      if(cubit.postImage!=null)
                        Stack(
                          alignment: AlignmentDirectional.topEnd,
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(4),
                                      topLeft: Radius.circular(4),
                                    )),
                                clipBehavior: Clip.antiAlias,
                                width: double.infinity,
                                child: Image.file(
                                  cubit.postImage!,
                                  fit: BoxFit.cover,
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  cubit.removePostImage();
                                },
                                child: CircleAvatar(
                                  radius: 15,
                                  child: Icon(
                                      Icons.close),
                                ),
                              ),
                            )
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              if(cubit.postImage!=null)
              SizedBox(height: 10,),
              TextButton(
                onPressed: (){
                  cubit.picPostImageFromGallery();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image_outlined),
                    SizedBox(width: 5,),
                    Text("Add Photo")
                  ],
                ),
              ),
              SizedBox(height: 5,),
            ],
          ),
        ),
      ),
    );});
  }
}
