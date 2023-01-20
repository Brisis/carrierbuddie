import 'package:carrierbuddie/helpers/constants.dart';
import 'package:flutter/material.dart';

class DeliveryDetailCard extends StatelessWidget {
  const DeliveryDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "DELIVERY ADDRESS",
                style: TextStyle(
                  fontSize: kMediumTextSize,
                  color: kFadedBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "LIVE TRACKER",
                style: TextStyle(
                  fontSize: kMediumTextSize,
                  color: kFadedBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          verticalSpace(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "1390 Market St",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Unit 110",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "San Fransisco, CA",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(height: 15),
                    const Text(
                      "CONTACT",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        color: kFadedBlack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(height: 10),
                    const Text(
                      "+263 784 174 687",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(),
                    const Text(
                      "benbeemudy@gmail.com",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              horizontalSpace(width: 10),
              Expanded(
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: kGreyColor, width: 2),
                    borderRadius: BorderRadius.circular(5),
                    color: kGreyColor,
                  ),
                  child: Center(
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        border: Border.all(color: kWhiteColor, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
