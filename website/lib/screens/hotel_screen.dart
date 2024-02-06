import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:website/utils/app_layout.dart';

import '../utils/app_styles.dart';

class HotelScreen extends StatelessWidget {

  final img;
  final place;
  final destination;
  final price;
  const HotelScreen({
    super.key,
    required this.img,required this.place,required this.destination,required this.price,
  });

  @override
  Widget build(BuildContext context) {
 
    final size = Applayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 1,
            )
          ]),
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      img,
                    ))),
          ),
          const Gap(10),
          Text(
           place,
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(5),
          Text(
           destination,
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          const Gap(5),
          Text(
            price,
            style: Styles.headLineStyle3.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
