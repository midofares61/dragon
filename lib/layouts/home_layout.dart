import 'package:dragon/generated/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/cubit_app.dart';
import '../cubit/state_app.dart';

class HomeLayout extends StatelessWidget {
  const HomeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    CubitApp.get(context).users==null?CubitApp.get(context).getUsers():null;
    CubitApp.get(context).usermodel==null?CubitApp.get(context).getUser():null;
    return BlocConsumer<CubitApp, StateApp>(
      listener: (context,state){},
      builder: (context,state){
        var cubit=CubitApp.get(context);
        return Directionality(
          textDirection: TextDirection.ltr,
          child: Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color.fromRGBO(33, 58, 255, 1),
              selectedLabelStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),
              currentIndex: cubit.currentIndex,
              items:  [
    BottomNavigationBarItem(
        icon: Icon(Icons.timer),
        label: S.of(context).homeTitle
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        label: S.of(context).discoverTitle
    ),BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label:S.of(context).trainerTitle
    ),BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: S.of(context).settingTitle
    ),
  ],
              onTap: (index){
                cubit.changeCurrentIndex(index);
              },
            ),
          ),
        );
      },
    );
  }
}
