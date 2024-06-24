import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dragon/layouts/home_layout.dart';
import 'package:dragon/modules/break/break_screen.dart';
import 'package:dragon/shared/components/components.dart';
import 'package:audioplayers/audioplayers.dart';
import '../../cubit/cubit_app.dart';
import '../../cubit/state_app.dart';
import '../../generated/l10n.dart';
import '../../shared/local/chach_helper.dart';

class StartScreen extends StatefulWidget {
  final String name;
  StartScreen({super.key, required this.name});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  final player = AudioPlayer();
  var isWillPop = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitApp, StateApp>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = CubitApp.get(context);
          return WillPopScope(
            onWillPop: () async {
              setState(() {
                isWillPop = true;
              });
              cubit.stopCount();
              return false;
            },
            child: Directionality(
              textDirection: TextDirection.ltr,
              child: Scaffold(
                body: Stack(
                  children: [
                    Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 40,
                              ),
                              Image.asset(
                                cubit.list![cubit.index].image,
                                width: double.infinity,
                                height: 400,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                "${cubit.list![cubit.index].name}",
                                style: const TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              widget.name == "كارديو محترف" ||
                                      widget.name == "كارديو متوسط" ||
                                      widget.name == "كارديو مبتدئ" ||
                                      widget.name == "تمارين الضغط للمبتدئين" ||
                                      widget.name ==
                                          "عضلات بطن (بدون تمارين طحن)" ||
                                      widget.name ==
                                          "تمارين الساقين (بدون قفز)" ||
                                      widget.name == "Beginner Cardio" ||
                                      widget.name == "Intermediate Cardio" ||
                                      widget.name == "Advanced Cardio" ||
                                      widget.name == "Beginner Chest Exercises" ||
                                      widget.name ==
                                          "Abdominal Muscles Exercises (Without Crunches)" ||
                                      widget.name ==
                                          "Leg Exercises (Without Jumping)"
                                  ? Expanded(
                                      child: CircularCountDownTimer(
                                        duration: cubit.list![cubit.index].val,
                                        initialDuration: 0,
                                        controller: cubit.controller,
                                        width: 250,
                                        height: 130,
                                        ringColor: Colors.transparent,
                                        fillColor: Colors.transparent,
                                        backgroundColor: Colors.transparent,
                                        textStyle: const TextStyle(
                                            fontSize: 45.0,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                        textFormat: CountdownTextFormat.S,
                                        isTimerTextShown: true,
                                        isReverse: true,
                                        autoStart: true,
                                        onStart: () {
                                          debugPrint('Countdown Started');
                                        },
                                        onComplete: () {
                                          if (cubit.list!.length - 1 !=
                                              cubit.index) {
                                            if (CacheHelper.getData(
                                                key: "sound")) {
                                              player.play(
                                                  AssetSource("images/ding.mp3"));
                                            }
                                            cubit.number++;
                                            navigateTo(
                                                context: context,
                                                widget: BreakScreen(
                                                  index: cubit.index + 1,
                                                  name: widget.name,
                                                ));
                                          } else {
                                            if (CacheHelper.getData(
                                                key: "sound")) {
                                              player.play(
                                                  AssetSource("images/ding.mp3"));
                                            }
                                            cubit.number++;
                                          }
                                        },
                                        onChange: (String timeStamp) {
                                          debugPrint(
                                              'Countdown Changed $timeStamp');
                                        },
                                        timeFormatterFunction:
                                            (defaultFormatterFunction, duration) {
                                          String twoDigits(int n) =>
                                              n.toString().padLeft(2, "0");
                                          int minutes = duration.inSeconds ~/ 60;
                                          int seconds = duration.inSeconds % 60;
                                          return '${twoDigits(minutes)}:${twoDigits(seconds)}';
                                        },
                                      ),
                                    )
                                  : Expanded(
                                      child: Text(
                                        "3 X ${cubit.list![cubit.index].sets}",
                                        style: const TextStyle(
                                            fontSize: 45,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                              const SizedBox(
                                height: 20,
                              ),
                              cubit.index != cubit.list!.length - 1
                                  ? defaultButton(
                                      width: 280,
                                      text: S.of(context).done.toUpperCase(),
                                      color: Colors.white,
                                      background: Colors.blue,
                                      navigate: () {
                  if(cubit.sound) {
                    player
                        .play(AssetSource("images/ding.mp3"));
                  }
                                        cubit.number++;
                                        navigateTo(
                                            context: context,
                                            widget: BreakScreen(
                                              index: cubit.index + 1,
                                              name: widget.name,
                                            ));
                                      })
                                  : defaultButton(
                                      width: 280,
                                      text: S.of(context).finish.toUpperCase(),
                                      color: Colors.white,
                                      background: Colors.blue,
                                      navigate: () {
                                        if (cubit.sound) {
                                          player.play(
                                              AssetSource("images/cheer.mp3"));
                                        }
                                        navigateToFinish(
                                            context: context,
                                            widget: const HomeLayout());
                                      }),
                              const SizedBox(
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                          child: Row(
                            children: [
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  if (cubit.index != 0) {
                                    player.play(AssetSource("images/ding.mp3"));
                                    navigateTo(
                                        context: context,
                                        widget: BreakScreen(
                                          index: cubit.index - 1,
                                          name: widget.name,
                                        ));
                                  }
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.skip_previous_outlined,
                                      color: cubit.index == 0
                                          ? Colors.grey.shade400
                                          : Colors.grey,
                                      size: 30,
                                    ),
                                    Text(S.of(context).previous.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: cubit.index == 0
                                                ? Colors.grey.shade400
                                                : Colors.grey)),
                                  ],
                                ),
                              )),
                              Container(
                                height: 30,
                                width: 1,
                                color: Colors.grey,
                              ),
                              Expanded(
                                  child: InkWell(
                                onTap: () {
                                  if (cubit.index != cubit.list!.length - 1) {
                                    player.play(AssetSource("images/ding.mp3"));
                                    navigateTo(
                                        context: context,
                                        widget: BreakScreen(
                                          index: cubit.index + 1,
                                          name: widget.name,
                                        ));
                                  }
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.skip_next_outlined,
                                      color: Colors.grey,
                                      size: 30,
                                    ),
                                    Text(S.of(context).skip.toUpperCase(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey)),
                                  ],
                                ),
                              )),
                            ],
                          ),
                        )
                      ],
                    ),
                    isWillPop
                        ? Container(
                            width: double.infinity,
                            height: double.infinity,
                            color: const Color.fromRGBO(13, 109, 255, 0.85),
                            padding: const EdgeInsets.all(20),
                            child: SafeArea(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  IconButton(
                                      onPressed: () {
                                        setState(() {
                                          isWillPop = false;
                                        });
                                        cubit.startCount();
                                      },
                                      icon: Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                      )),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          S.of(context).exit.toUpperCase(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 70,
                                            decoration: BoxDecoration(
                                                color:
                                                    Colors.white.withOpacity(0.4),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 15),
                                            child: Text(
                                              S
                                                  .of(context)
                                                  .justLook
                                                  .toUpperCase(),
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 25,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              isWillPop = false;
                                            });
                                            cubit.startCount();
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 70,
                                            decoration: BoxDecoration(
                                                color:
                                                    Colors.white.withOpacity(0.4),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20, vertical: 15),
                                            child: Text(
                                              S
                                                  .of(context)
                                                  .continues
                                                  .toUpperCase(),
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Colors.white),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : SizedBox()
                  ],
                ),
              ),
            ),
          );
        });
  }
}
