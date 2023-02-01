import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/app_wrapper_page.dart';
import 'package:carrierbuddie/widgets/general_activity_detail_card.dart';
import 'package:carrierbuddie/widgets/general_activity_item_card.dart';
import 'package:carrierbuddie/widgets/tracking_detail_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GeneralActivityView extends StatelessWidget {
  const GeneralActivityView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppWrapperPage(
      title: "Track Activity",
      child: ListView(
        children: [
          const Text(
            "Clothes Washing",
            style: TextStyle(
              fontSize: kLargeTextSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          verticalSpace(height: 15),
          Row(
            children: [
              SizedBox(
                height: 70,
                child: Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/user.webp"),
                      maxRadius: 35,
                    ),
                    Positioned(
                      right: -2,
                      bottom: -2,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          border: Border.all(color: kWhiteColor, width: 2),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Center(
                          child: Icon(
                            FontAwesomeIcons.handsBubbles,
                            size: 15,
                            color: kWhiteColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              horizontalSpace(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Tasha Jacobs",
                      style: TextStyle(
                        fontSize: kHeaderTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Pro Washer",
                              style: TextStyle(
                                fontSize: kMediumTextSize,
                                color: kFadedBlack,
                              ),
                            ),
                            verticalSpace(height: 5),
                            const Text(
                              "Out for Washing",
                              style: TextStyle(
                                  fontSize: kMediumTextSize,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "#76218912",
                              style: TextStyle(
                                fontSize: kMediumTextSize,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            verticalSpace(height: 5),
                            const Text(
                              "Order Number",
                              style: TextStyle(
                                fontSize: kMediumTextSize,
                                color: kFadedBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          verticalSpace(height: 30),
          const GeneralActivityItemCard(),
          verticalSpace(),
          const TrackingDetailCard(),
          verticalSpace(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "30 Min",
                    style: TextStyle(
                      fontSize: kLargeTextSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace(height: 10),
                  const Text(
                    "Remaining Time",
                    style: TextStyle(
                      fontSize: kMediumTextSize,
                      color: kFadedBlack,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "#8621ZW",
                    style: TextStyle(
                      fontSize: kLargeTextSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  verticalSpace(height: 10),
                  const Text(
                    "Tracking Number",
                    style: TextStyle(
                      fontSize: kMediumTextSize,
                      color: kFadedBlack,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          verticalSpace(height: 15),
          const GeneralActivityDetailCard(),
        ],
      ),
    );
  }
}
