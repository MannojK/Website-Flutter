import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class SmartDeviceBox extends StatelessWidget {
  final  String smartDeviceName;
  final  iconPath;
  final  powerOn;
  const SmartDeviceBox({super.key, required this.smartDeviceName, this.iconPath, this.powerOn});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[400]),
      child: Column(
        children: [
          Image.asset(iconPath,height: 25,)
        ],
      ),
    );
  }
}
