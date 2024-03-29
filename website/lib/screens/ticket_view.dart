import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:gap/gap.dart';
import 'package:website/utils/app_layout.dart';
import 'package:website/utils/app_styles.dart';
import 'package:website/widgets/thick_container.dart';
import 'package:get/get.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: Applayout.getHeight(200),
      child: Container(
        margin:  EdgeInsets.only(right:Applayout.getHeight(21)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            /*
            showing the blue part of the card/ticket
            */
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(23),
                    topRight: Radius.circular(21)),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'NYC',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      ThickContainer(),
                      Expanded(
                          child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            // ignore: avoid_types_as_parameter_names
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              print(
                                  "The width is ${constraints.constrainWidth()}");
                              return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => const SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white)),
                                    ),
                                  ));
                            },
                          ),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: Icon(Icons.local_airport_rounded,
                                color: Colors.white),
                          ),
                        )
                      ])),
                      const ThickContainer(),
                      const Spacer(),
                      Text(
                        'LDN',
                        style:
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('New york',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white)),
                      ),
                      Text(
                        '8H 30M ',
                        style:
                            Styles.headLineStyle4.copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text('London',
                            textAlign: TextAlign.end,
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /*
            showing the orange  part of the card/ticket
            */
            Container(
              color: Styles.orangeColor,
              child: Row(children: [
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ))),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: LayoutBuilder(builder:
                      (BuildContext context, BoxConstraints constraints) {
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                          (constraints.constrainWidth() / 15).floor(),
                          (index) => const SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                    decoration:
                                        BoxDecoration(color: Colors.white)),
                              )),
                    );
                  }),
                )),
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ))),
                )
              ]),
            ),
            /*
          bottom part of the orange card/ticket 
          */
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(23),
                  bottomRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.only(
                  left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1 May',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            'DATE',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '8:30',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            'Departure Time',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '23 ',
                            style: Styles.headLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            'Number ',
                            style: Styles.headLineStyle4
                                .copyWith(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
