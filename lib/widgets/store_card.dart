import 'package:carrierbuddie/constants.dart';
import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final String title;
  final String category;
  const StoreCard({
    super.key,
    required this.title,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(
            color: kTextFadedColor,
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: kStoreCardColor,
              borderRadius: BorderRadius.circular(
                15,
              ),
              image: const DecorationImage(
                image: AssetImage("assets/images/logo.webp"),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: kTextBlack,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                      color: kSecondaryColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    category,
                    style: const TextStyle(
                      fontSize: 15,
                      color: kTextGrey,
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
                  "Visit Store",
                  style: TextStyle(
                    fontSize: 15,
                    color: kAccentColor,
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
