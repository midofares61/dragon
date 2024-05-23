import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {

  Widget dialogContent;
  double? radius;
  double? padTop;
  double? padReight;
  double? padLeft;
  double? padButtom;

  DialogWidget({
    required this.dialogContent,
    this.radius,
    this.padTop,
    this.padReight,
    this.padLeft,
    this.padButtom,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentTextStyle: TextStyle(),
      contentPadding: EdgeInsets.only(
        right: padReight != null ? padReight! : 20,
        left: padLeft != null ? padLeft! : 20,
        top: padTop != null ? padTop! : 20,
        bottom: padButtom != null ? padButtom! : 20,
      ),
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      scrollable: true,
      elevation: 0.0,
      content: (kIsWeb) ? dialogContent : dialogContent,
    );
  }
}