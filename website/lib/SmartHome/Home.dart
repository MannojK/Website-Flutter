import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:website/SmartHome/smart_device.dart';
import 'package:website/screens/img_screen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // padding constants
  final double horizoontalPadding = 40.0;
  final double VerticalPadding =30.0;
  List mySmartDevices = [
    ["Smart Light," "Icons/bulb.png", ],
    ["Smart Tv," "Icons/smart-tv.png", ],
    ["Air Conditioner," "Icons/ac.png", ],
    ["Smart Fan," "Icons/fan.png", ],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // menu icon
                  Image.asset(
                    'icons/menu.png',
                    height: 35,
                    color: Colors.black,
                  ),
                  // account Icon
                  Icon(
                    Icons.person,
                    size: 35,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Welcome home MITCH koko

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: horizoontalPadding,
                vertical: VerticalPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  // welcome home
                  Text("Welcome Home,"),
                  Text(
                    "MANOJ KUMAR",
                    style: TextStyle(fontSize: 40),
                  ),
                ],
              ),
            ),
const SizedBox(height: 20,),
            Padding(padding: EdgeInsets.symmetric(horizontal: horizoontalPadding,),
            
            child: Text("Smart Devices"),
            ),
            Expanded(
              child: GridView.builder(
                itemCount:mySmartDevices.length,
                padding: EdgeInsets.all(25),
                  gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return SmartDeviceBox(
                     smartDeviceName: mySmartDevices[index][0],
                    //  iconPath: mySmartDevices[index][1],
                  //  powerOn: mySmartDevices[index][2],
                    );
                  }),
            )

            // smart devices + grid
          ],
        ),
      ),
    );
  }
}
