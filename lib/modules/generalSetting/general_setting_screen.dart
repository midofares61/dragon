import 'package:dragon/shared/local/chach_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../generated/l10n.dart';

class GeneralSetting extends StatefulWidget {
  const GeneralSetting({super.key});

  @override
  State<GeneralSetting> createState() => _GeneralSettingState();
}

class _GeneralSettingState extends State<GeneralSetting> {
  bool wake=CacheHelper.getData(key: "wake")==null?true:CacheHelper.getData(key: "wake");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).generalSetting,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        titleSpacing: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            InkWell(
              onTap: (){
                Fluttertoast.showToast(
                    msg: "سيتم اضافة هذه الميزة قريبا");
              },
              child: Row(
                children: [
                  Icon(Icons.alarm),
                  SizedBox(
                    width: 20,
                  ),
                  Text(S.of(context).alarm),
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
              },
              child: Row(
                children: [
                  Icon(Icons.phone_android),
                  SizedBox(
                    width: 20,
                  ),
                  Text(S.of(context).wake),
                  Spacer(),
                  Switch(
                    trackOutlineWidth:MaterialStateProperty.resolveWith((states) => 0),
                    activeColor: Colors.blue,
                    value: wake,
                    onChanged: (value) {
                      CacheHelper.SaveData(key: "wake", value: value);
                      setState(() {
                        wake=CacheHelper.getData(key: "wake");
                      });
                    },
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: (){
                Fluttertoast.showToast(
                    msg: "سيتم اضافة هذه الميزة قريبا");
              },
              child: Row(
                children: [
                  Icon(Icons.visibility),
                  SizedBox(
                    width: 20,
                  ),
                  Text(S.of(context).privacy),
                ],
              ),
            ),
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
