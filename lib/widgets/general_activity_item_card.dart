import 'package:carrierbuddie/helpers/constants.dart';
import 'package:flutter/material.dart';

class GeneralActivityItemCard extends StatelessWidget {
  const GeneralActivityItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhiteColor,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              border: Border.all(color: kGreyColor, width: 2),
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                image: AssetImage("assets/images/ph.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          horizontalSpace(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Mixed Clothes",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(height: 10),
                    const Text(
                      "Quantity: 15",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        color: kFadedBlack,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "\$5.00",
                      style: TextStyle(
                        fontSize: kLargeTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(height: 10),
                    const Text(
                      "Paid",
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
          ),
        ],
      ),
    );
  }
}
