import 'package:carrierbuddie/constants.dart';
import 'package:carrierbuddie/widgets/delivery_stage_card.dart';
import 'package:carrierbuddie/widgets/dotted_seperator.dart';
import 'package:carrierbuddie/widgets/pickup_card.dart';
import 'package:flutter/material.dart';

class PickupTimelineScreen extends StatelessWidget {
  const PickupTimelineScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kTextFadedColor,
          ),
        ),
        title: const Text(
          "Public Transaction",
          style: TextStyle(
            fontSize: 15,
            color: kTextFadedColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const PickupCard(),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Pickup Status",
              style: TextStyle(
                fontSize: 20,
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const DeliveryStageCard(title: "Pickup Requested"),
            const MySeperator(),
            const DeliveryStageCard(title: "Pickup Request Accepted"),
            const MySeperator(),
            const DeliveryStageCard(title: "Peer Consensus"),
            const MySeperator(),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DeliveryStageCard(
                  title: "Delivering",
                  isInProgress: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const MySeperator(
                      length: 160,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Your peer Peter is waiting",
                            style: TextStyle(
                              fontSize: 13,
                              color: kTextGrey,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 150,
                            decoration: BoxDecoration(
                                color: kAccentColor,
                                borderRadius: BorderRadius.circular(10)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const DeliveryStageCard(
              title: "Delivered",
              isCompleted: true,
            ),
            // const SizedBox(
            //   height: 50,
            // ),
            // Row(
            //   children: [
            //     Container(
            //       height: 50,
            //       width: 50,
            //       decoration: BoxDecoration(
            //         color: kSecondaryColorLight,
            //         borderRadius: BorderRadius.circular(
            //           10,
            //         ),
            //         image: const DecorationImage(
            //           image: AssetImage("assets/images/logo.webp"),
            //         ),
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 10,
            //     ),
            //     Text(
            //       "Items List",
            //       style: TextStyle(
            //         fontSize: 16,
            //         color: kTextBlack.withOpacity(0.85),
            //         fontWeight: FontWeight.bold,
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
