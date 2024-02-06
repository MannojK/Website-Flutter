import 'package:website/pc.dart';
import 'package:website/screens/bottom_bar.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:website/utils/app_styles.dart';
import 'package:website/utils/app_styles.dart';
import 'package:website/Ex_bar.dart';

import 'SmartHome/Home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primaryColor:primary,
       
      ),
       home: Home(),
    );
  }
}
