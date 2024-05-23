import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/cubit_app.dart';
import '../../cubit/state_app.dart';
import '../../shared/components/components.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CubitApp, StateApp>(
        listener: (context, state) {},
    builder: (context, state) {
    var cubit = CubitApp.get(context);
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Text("جميع المسخدمين"),
        ),
        body: ConditionalBuilder(
            condition: cubit.users.isNotEmpty,
            builder: (context) =>ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) =>chatBuilder(cubit.users[index], context),
              separatorBuilder: (context, index) =>
                  myDivider(),
              itemCount: cubit.users.length,
            ),
            fallback: (context) =>
                Center(child: CircularProgressIndicator())),
      ),
    );});
  }
}
