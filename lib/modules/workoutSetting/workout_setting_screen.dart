import 'package:dragon/shared/components/constance.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/cubit_app.dart';
import '../../cubit/state_app.dart';
import '../../generated/l10n.dart';
import '../../main.dart';
import '../../shared/local/chach_helper.dart';
import '../dialog_widget.dart';

class WorkoutSetting extends StatefulWidget {
  const WorkoutSetting({super.key});

  @override
  State<WorkoutSetting> createState() => _WorkoutSettingState();
}

class _WorkoutSettingState extends State<WorkoutSetting> {
  bool sound = CacheHelper.getData(key: "sound") == null
      ? true
      : CacheHelper.getData(key: "sound");
  int rest=0;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitApp, StateApp>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CubitApp.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(
                S.of(context).workoutSetting,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              titleSpacing: 5,
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      rest = cubit.restTime;
                      showDialog(
                          context: context,
                          builder: (context) {
                            return StatefulBuilder(
                              builder:(context,setState)=> DialogWidget(
                                padButtom: 20,
                                padLeft: 20,
                                padReight: 20,
                                padTop: 20,
                                dialogContent: Column(
                                  children: [
                                    Text(
                                      "Set duration (5 - 180 secs)",
                                      style: TextStyle(
                                          fontSize: 22, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      child: Row(
                                        children: [
                                          Expanded(
                                              child: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      if(rest>5){
                                                        rest--;
                                                      }
                                                    });
                                                  },
                                                  icon: Icon(
                                                      Icons.arrow_back_ios,))),
                                          Expanded(
                                            flex: 2,
                                              child: Text("${rest}",
                                                  style: TextStyle(
                                                      fontSize: 65,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.center)),
                                          Expanded(
                                              child: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      if(rest<180){
                                                        rest++;
                                                      }
                                                    });
                                                  },
                                                  icon: Icon(Icons
                                                      .arrow_forward_ios_rounded))),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "secs",
                                      style: TextStyle(
                                          fontSize: 15, color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 25,
                                    ),
                                    Row(
                                      children: [
                                        InkWell(
                                    onTap:(){
                                      CacheHelper.SaveData(key: "restTime", value: rest).whenComplete((){
                                        setState((){
                                          cubit.changeRest(rest);
                                          rest=CacheHelper.getData(key: "restTime");
                                        });

                                        Navigator.pop(context);
                                      });

                                    },
                                            child: Text("SET",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: defaultColor),
                                                textAlign: TextAlign.center)),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        InkWell(
                                          onTap: (){
                                            Navigator.pop(context);
                                          },
                                            child: Text("CANCEL",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Colors.grey),
                                                textAlign: TextAlign.center)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Row(
                      children: [
                        Icon(Icons.coffee),
                        SizedBox(
                          width: 20,
                        ),
                        Text(S.of(context).trainingRest),
                        Spacer(),
                        if (!isArabic()) Icon(Icons.arrow_drop_down),
                        Text(
                          "${cubit.restTime} " + S.of(context).second,
                          style: TextStyle(color: defaultColor),
                        ),
                        if (isArabic())
                          Icon(
                            Icons.arrow_drop_down,
                            color: defaultColor,
                          )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    child: Row(
                      children: [
                        Icon(Icons.record_voice_over),
                        SizedBox(
                          width: 20,
                        ),
                        Text(S.of(context).soundOptions),
                        Spacer(),
                        Switch(
                          trackOutlineWidth:
                              MaterialStateProperty.resolveWith((states) => 0),
                          activeColor: Colors.blue,
                          value: sound,
                          onChanged: (value) {
                            CacheHelper.SaveData(key: "sound", value: value);
                            setState(() {
                              sound = CacheHelper.getData(key: "sound");
                            });
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
