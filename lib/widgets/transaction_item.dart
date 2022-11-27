import 'package:carrierbuddie/constants.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String refNumber;
  const TransactionItem({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.refNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            border: Border.all(
              color: kTextFadedColor,
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: kStoreCardColor,
                borderRadius: BorderRadius.circular(
                  15,
                ),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
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
                  name,
                  style: const TextStyle(
                    fontSize: 20,
                    color: kTextBlack,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: RichText(
                    text: TextSpan(
                      text: 'Reference: ',
                      children: [
                        TextSpan(
                          text: refNumber,
                          style: const TextStyle(
                            fontSize: 15,
                            color: kTextGrey,
                          ),
                        )
                      ],
                      style: const TextStyle(
                        fontSize: 15,
                        color: kTextBlack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
