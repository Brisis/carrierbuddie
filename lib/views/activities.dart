import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/app_wrapper.dart';
import 'package:carrierbuddie/widgets/delivery_detail_card.dart';
import 'package:carrierbuddie/widgets/delivery_item_card.dart';
import 'package:carrierbuddie/widgets/tracking_detail_card.dart';
import 'package:flutter/material.dart';

class ActivitiesView extends StatelessWidget {
  const ActivitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      index: 0,
      child: ListView(
        children: [
          const Text(
            "Delivery",
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
                            Icons.directions_bike,
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
                      "Nike Sport Store",
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
                              "Farfetch.com",
                              style: TextStyle(
                                fontSize: kMediumTextSize,
                                color: kFadedBlack,
                              ),
                            ),
                            verticalSpace(height: 5),
                            const Text(
                              "Out for Delivery",
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
          const DeliveryItemCard(),
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
                    "2 Days",
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
                    "#8621US",
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
          const DeliveryDetailCard(),
        ],
      ),
    );
  }
}
