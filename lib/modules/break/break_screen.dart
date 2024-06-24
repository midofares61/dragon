import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_countdown_timer/countdown_timer_controller.dart';
import 'package:flutter_countdown_timer/flutter_countdown_timer.dart';
import 'package:dragon/shared/components/components.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../cubit/cubit_app.dart';
import '../../cubit/state_app.dart';
import '../../generated/l10n.dart';
import '../../shared/local/chach_helper.dart';

class BreakScreen extends StatelessWidget {
  final int index;
  final String name;
  BreakScreen({super.key, required this.index, required this.name});
  final player = AudioPlayer();
  var controller = CountDownController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitApp, StateApp>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CubitApp.get(context);
          return Scaffold(
            backgroundColor: Colors.blueAccent[400],
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(bottom: Radius.circular(30))),
                    child: Image.asset(
                      cubit.list![index].image,
                      width: double.infinity,
                      height: 330,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    S.of(context).next.toUpperCase(),
                                    style: TextStyle(
                                      color: Colors.grey[400],
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    " ${index}/${cubit.list!.length}",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("${cubit.list![index].name}",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                  Spacer(),
                                  Text("X ${cubit.list![index].sets}",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircularCountDownTimer(
                    duration: cubit.restTime,
                    initialDuration: 0,
                    controller: controller,
                    width: 200,
                    height: 100,
                    ringColor: Colors.white!,
                    fillColor: Colors.blue[400]!,
                    backgroundColor: Colors.blueAccent,
                    strokeWidth: 5.0,
                    strokeCap: StrokeCap.round,
                    textStyle: TextStyle(
                        fontSize: 33.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    textFormat: CountdownTextFormat.S,
                    isReverse: true,
                    isReverseAnimation: true,
                    isTimerTextShown: true,
                    autoStart: true,
                    onStart: () {
                      debugPrint('Countdown Started');
                    },
                    onComplete: () {
                      if (cubit.list!.length - 1 != index) {
                        if (name == "كارديو محترف" ||
                            name == "كارديو متوسط" ||
                            name == "كارديو مبتدئ" ||
                            name == "تمارين الضغط للمبتدئين" ||
                            name == "عضلات بطن (بدون تمارين طحن)" ||
                            name == "تمارين الساقين (بدون قفز)" ||
                            name == "Beginner Cardio" ||
                            name == "Intermediate Cardio" ||
                            name == "Advanced Cardio" ||
                            name == "Beginner Chest Exercises" ||
                            name ==
                                "Abdominal Muscles Exercises (Without Crunches)" ||
                            name == "Leg Exercises (Without Jumping)") {
                          cubit.controller.restart();
                        }
                        if (cubit.sound) {
                          player.play(AssetSource("images/whistle.wav"));
                        }
                        cubit.changeIndex(index);
                        Navigator.pop(context);
                      }
                    },
                    onChange: (String timeStamp) {
                      debugPrint('Countdown Changed $timeStamp');
                    },
                    timeFormatterFunction:
                        (defaultFormatterFunction, duration) {
                      return Function.apply(
                          defaultFormatterFunction, [duration]);
                    },
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  defaultButton(
                      width: 250,
                      text: S.of(context).skip.toUpperCase(),
                      color: Colors.blue,
                      background: Colors.white,
                      navigate: () {
                        if (name == "كارديو محترف" ||
                            name == "كارديو متوسط" ||
                            name == "كارديو مبتدئ" ||
                            name == "تمارين الضغط للمبتدئين" ||
                            name == "عضلات بطن (بدون تمارين طحن)" ||
                            name == "تمارين الساقين (بدون قفز)" ||
                            name == "Beginner Cardio" ||
                            name == "Intermediate Cardio" ||
                            name == "Advanced Cardio" ||
                            name == "Beginner Chest Exercises" ||
                            name ==
                                "Abdominal Muscles Exercises (Without Crunches)" ||
                            name == "Leg Exercises (Without Jumping)") {
                          cubit.controller.restart();
                        }
                        controller.isPaused;
                        if (cubit.sound) {
                          player.play(AssetSource("images/whistle.wav"));
                        }
                        cubit.changeIndex(index);
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          );
        });
  }
}
