import 'package:dragon/generated/l10n.dart';
import 'package:dragon/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../Data/cardData.dart';
import '../../cubit/cubit_app.dart';
import '../../cubit/state_app.dart';
import '../../shared/components/components.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitApp, StateApp>(
        listener: (context, state) {},
    builder: (context, state) {
    var cubit=CubitApp.get(context);
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        title:  Text(S.of(context).title,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 23,
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
              Container(
                width: double.infinity,
                height: 80,
                color: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text("${cubit.number}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        Text(S.of(context).workout.toUpperCase(),
                            style: TextStyle(color: Colors.black, fontSize: 16)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("${cubit.number*7}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        Text(S.of(context).kcal.toUpperCase(),
                            style: TextStyle(color: Colors.black, fontSize: 16)),
                      ],
                    ),
                    Column(
                      children: [
                        Text("${cubit.number*3}",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold)),
                        Text(S.of(context).minute.toUpperCase(),
                            style: TextStyle(color: Colors.black, fontSize: 16)),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  S.of(context).sectionBegTitle.toUpperCase(),
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap:
                    true, // هام! يجعل ListView يستغل مساحة العنصر المتاحة دون التمدد لأخذ المساحة كلها
                physics:
                    const NeverScrollableScrollPhysics(), // هام! لمنع التمرير التلقائي للقائمة
                itemCount:isArabic()? users.length:usersEnglish.length,
                itemBuilder: (context, index) {
                  return defaultCard(isArabic()?users[index]:usersEnglish[index],context);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  S.of(context).sectionIntTitle.toUpperCase(),
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap:
                true, // هام! يجعل ListView يستغل مساحة العنصر المتاحة دون التمدد لأخذ المساحة كلها
                physics:
                const NeverScrollableScrollPhysics(), // هام! لمنع التمرير التلقائي للقائمة
                itemCount:isArabic()? midUsers.length :midUsersEnglish.length,
                itemBuilder: (context, index) {
                  return defaultCard(isArabic()?midUsers[index]:midUsersEnglish[index],context);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  S.of(context).sectionProTitle.toUpperCase(),
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap:
                true, // هام! يجعل ListView يستغل مساحة العنصر المتاحة دون التمدد لأخذ المساحة كلها
                physics:
                const NeverScrollableScrollPhysics(), // هام! لمنع التمرير التلقائي للقائمة
                itemCount:isArabic()? profUsers.length:profUsersEnglish.length,
                itemBuilder: (context, index) {
                  return defaultCard(isArabic()?profUsers[index]:profUsersEnglish[index],context);
                },
              ),
            ],
          ),
        ),
      ),
    );});
  }
}
