import 'package:flutter/material.dart';

import '../../layouts/home_layout.dart';
import '../../shared/components/components.dart';

class RestartApp extends StatefulWidget {
  const RestartApp({super.key});

  @override
  State<RestartApp> createState() => _RestartAppState();
}

class _RestartAppState extends State<RestartApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then(
        (value) => navigateToFinish(context: context, widget: HomeLayout()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage("assets/images/Logo.png"),
        ),
      ),
    );
  }
}
