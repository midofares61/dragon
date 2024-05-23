import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dragon/modules/start/start_screen.dart';
import 'package:dragon/shared/components/components.dart';
import 'package:audioplayers/audioplayers.dart';
import '../cubit/cubit_app.dart';
import '../cubit/state_app.dart';
import '../generated/l10n.dart';
import '../models/excersises_model.dart';
import '../shared/local/chach_helper.dart';

class ExerciseScreen extends StatefulWidget {
  final String name;
  final String image;
  final List list;
  ExerciseScreen({
    super.key,
    required this.name,
    required this.image,
    required this.list,
  });

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  final ScrollController _scrollController = ScrollController();
  final player = AudioPlayer();
  double index = 0;
  var listIndex;

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      setState(() {
        index = _scrollController.position.pixels;
      });
    });
    return BlocConsumer<CubitApp, StateApp>(
        listener: (context, state) {},
    builder: (context, state) {
          var cubit=CubitApp.get(context);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                controller: _scrollController,
                slivers: [
                  SliverAppBar(
                    backgroundColor: Colors.white,
                    iconTheme: IconThemeData(
                        color: index < 107 ? Colors.white : Colors.black),
                    title: Text(
                      widget.name.toUpperCase(),
                      style: TextStyle(
                          color: index < 107 ? Colors.transparent : Colors.black,
                          fontSize: 18),
                    ),
                    elevation: 0,
                    pinned: true,
                    centerTitle: false,
                    expandedHeight: 180,
                    flexibleSpace: FlexibleSpaceBar(
                      background: widget.name=="تمارين الضغط للمبتدئين"||widget.name=="عضلات بطن (بدون تمارين طحن)"||widget.name=="تمارين الساقين (بدون قفز)"||widget.name=="Beginner Chest Exercises"||widget.name=="Abdominal Muscles Exercises (Without Crunches)"||widget.name=="Leg Exercises (Without Jumping)"?Container(
                        color: Colors.blue[600],
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image(
                              image: AssetImage(widget.image),
                            ),
                          ],
                        ) ,
                      ):Image(
                        image: AssetImage(widget.image),
                        fit: BoxFit.cover,
                      ),
                      title: Text(widget.name.toUpperCase(),style: TextStyle(fontSize: 16),),
                      titlePadding: EdgeInsets.only(left: 30,bottom: 20),
                    ),
                  ),
                  SliverAppBar(
                    elevation: 0,
                    leading: SizedBox(),
                    backgroundColor: Colors.white,
                    bottom: PreferredSize(
                      preferredSize: Size.fromHeight(-10),
                      child: SizedBox(),
                    ),
                    flexibleSpace: Container(
                      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
                      child: Row(
                        children: [
                          Container(
                            height: 20,
                            width: 3,
                            color: Color.fromRGBO(33, 37, 217, 1.0),
                          ),
                          SizedBox(width: 10,),
                          Text(S.of(context).exercises.toUpperCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                          SizedBox(width: 5,),
                          Text("${widget.list.length}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                          SizedBox(width: 5,),
                          Icon(Icons.circle,size: 6,),
                          SizedBox(width: 5,),
                          Text(S.of(context).minuteCart.toUpperCase(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                          SizedBox(width: 5,),
                          Text("${widget.list.length * 5 + widget.list.length}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                      delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {
                            return InkWell(
                              onTap: (){
                                setState(() {
                                  listIndex=index;
                                });
                                showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  isScrollControlled: true,
                                    context: context, builder: (context)=> StatefulBuilder(
                                      builder:(context,setState){
                                        return DraggableScrollableSheet(
                                          initialChildSize: 0.96,
                                          builder:(_,controller)=> Container(
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.vertical(top: Radius.circular(30))
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(20.0),
                                              child: Column(
                                                children: [
                                                  Expanded(
                                                    child: SingleChildScrollView(

                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Image.asset(
                                                            widget.list[listIndex].image,
                                                            width: double.infinity,
                                                            height: 300,
                                                          ),
                                                          SizedBox(height: 20,),
                                                          Text(widget.list[listIndex].name.toUpperCase(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                                          Text(widget.list[listIndex].description,style: TextStyle(fontSize: 16),),
                                                          SizedBox(height: 20,),
                                                          widget.list[listIndex].descriptionImage==''?Container():
                                                          Image.asset(
                                                            widget.list[listIndex].descriptionImage,
                                                            width: double.infinity,
                                                            height: 300,
                                                          ),

                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Row(
                                                      children: [
                                                        Expanded(
                                                            child: Row(
                                                              children: [
                                                                Container(
                                                                  child: IconButton(
                                                                    onPressed: (){
                                                                      if(listIndex==0){
                                                                      }else{
                                                                        setState(() {
                                                                          listIndex--;
                                                                        });
                                                                      }
                                                                    },
                                                                    icon: Icon(Icons.skip_previous,size: 25,),
                                                                  ),
                                                                ),
                                                                SizedBox(width: 10,),
                                                                Text("${listIndex+1}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                                Text("/${widget.list.length}",style: TextStyle(fontSize: 15),),
                                                                SizedBox(width: 10,),
                                                                Container(
                                                                  child: IconButton(
                                                                    onPressed: (){
                                                                      if(listIndex==widget.list.length-1){
                                                                      }else{
                                                                        setState(() {
                                                                          listIndex++;
                                                                        });
                                                                      }

                                                                    },
                                                                    icon: Icon(Icons.skip_next,size: 25,),
                                                                  ),
                                                                ),
                                                              ],
                                                            )
                                                        ),
                                                        SizedBox(width: 20,),
                                                        Expanded(
                                                          child: defaultButton(text: S.of(context).close.toUpperCase(), color: Colors.white, background: Colors.blue, navigate: (){
                                                            Navigator.pop(context);
                                                          }),
                                                        ),
                                                      ],
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                    ));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(bottom: BorderSide(color: Colors.grey,width: 0.5))
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        widget.list[index].image,
                                        width: 100,
                                        height: 100,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              widget.list[index].name.toUpperCase(),
                                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            widget.name=="كارديو محترف"||widget.name=="كارديو متوسط"||widget.name=="كارديو مبتدئ"||widget.name=="تمارين الضغط للمبتدئين"||widget.name=="عضلات بطن (بدون تمارين طحن)"||widget.name=="تمارين الساقين (بدون قفز)"||widget.name=="Beginner Cardio"||widget.name=="Intermediate Cardio"||widget.name=="Advanced Cardio"||widget.name=="Beginner Chest Exercises"||widget.name=="Abdominal Muscles Exercises (Without Crunches)"||widget.name=="Leg Exercises (Without Jumping)"?Text("${widget.list[index].sets}"):
                                            Text("3 X ${widget.list[index].sets}"),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }, childCount: widget.list.length)),

                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 90,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: defaultButton(
                    text:S.of(context).start.toUpperCase(),
                    color: Colors.white,
                    background: Color.fromRGBO(33, 37, 217, 1.0),
                    navigate: () {
                      if(CacheHelper.getData(key: "sound")){
                        player.play(AssetSource("images/whistle.wav"));
                      }
                      cubit.list=widget.list;
                      cubit.index=0;
                      navigateTo(context: context, widget: StartScreen(name: widget.name,));
                    }),
              ),
            )
          ],
        ),
      ),
    );});
  }
}
