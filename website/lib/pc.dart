import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class Pc extends StatefulWidget {
  const Pc({super.key});

  @override
  State<Pc> createState() => _PcState();
}

class _PcState extends State<Pc> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Lottie.asset("assets/anime.json")),
    );
  }
}
