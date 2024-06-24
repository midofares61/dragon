import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dragon/cardio/cardio_data.dart';
import '../../Data/cardData.dart';
import '../../cubit/cubit_app.dart';
import '../../cubit/state_app.dart';
import '../../generated/l10n.dart';
import '../../main.dart';
import '../../shared/components/components.dart';
import '../excersise_screen.dart';


class CardioScreen extends StatelessWidget {
  const CardioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitApp, StateApp>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit=CubitApp.get(context);
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              title:  Text(S.of(context).discoverTitle.toUpperCase(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  )),
            ),
            body: SingleChildScrollView(
              physics: RangeMaintainingScrollPhysics(),
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      shrinkWrap:
                      true, // هام! يجعل ListView يستغل مساحة العنصر المتاحة دون التمدد لأخذ المساحة كلها
                      physics:
                      const NeverScrollableScrollPhysics(), // هام! لمنع التمرير التلقائي للقائمة
                      itemCount: cardioData.length,
                      itemBuilder: (context, index) {
                        return defaultCard(isArabic()?cardioData[index]:cardioDataEnglish[index],context);
                      },
                    ),
                    SizedBox(height: 5,),
                Container(
                  height: 180,
                  child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        navigateTo(context: context, widget: ExerciseScreen(name:isArabic()?beginnerData[index].name:beginnerDataEnglish[index].name ,image: isArabic()?beginnerData[index].image:beginnerDataEnglish[index].image,list: isArabic()?beginnerData[index].excersises:beginnerDataEnglish[index].excersises,));
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: 150,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(5)
                          ),
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Image.asset(beginnerData[index].image,width: 70,height: 70,),
                              Text('${isArabic()?beginnerData[index].name:beginnerDataEnglish[index].name}',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.right,overflow: TextOverflow.ellipsis,maxLines: 2,)
                            ],
                          ),
                        ),
                      )
                    ),
                    separatorBuilder: (context, index) =>
                        SizedBox(),
                    itemCount: beginnerData.length,
                  ),
                ),

                  ],
                ),
              ),
            ),
          );});
  }
}
