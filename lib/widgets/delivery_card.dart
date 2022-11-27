import 'package:carrierbuddie/constants.dart';
import 'package:flutter/material.dart';

class DeliveryCard extends StatelessWidget {
  const DeliveryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kTextFadedColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.lock_clock,
                          color: kSecondaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "Delivery today at 2pm",
                      style: TextStyle(
                        fontSize: 13,
                        color: kTextWhite,
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Choose Time",
                  style: TextStyle(
                    fontSize: 13,
                    color: kSecondaryColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kTextFadedColor,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.lock_clock,
                          color: kSecondaryColor,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: const Text(
                        "124 West Main St. Lake Geneva W1 5374",
                        style: TextStyle(
                          fontSize: 13,
                          color: kTextWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                ),
                child: const Text(
                  "Edit",
                  style: TextStyle(
                    fontSize: 13,
                    color: kSecondaryColor,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
            ),
            child: const Text(
              "Write Instruction (Optional)",
              style: TextStyle(
                fontSize: 15,
                color: kSecondaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
