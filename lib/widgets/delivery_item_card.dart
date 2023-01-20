import 'package:carrierbuddie/helpers/constants.dart';
import 'package:flutter/material.dart';

class DeliveryItemCard extends StatelessWidget {
  const DeliveryItemCard({super.key});

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
                image: AssetImage("assets/images/user.webp"),
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
                      "Nike SB BLZR Court",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(height: 10),
                    const Text(
                      "Quantity: 1",
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
                      "\$2.00",
                      style: TextStyle(
                        fontSize: kLargeTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(height: 10),
                    const Text(
                      "Paypal",
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
