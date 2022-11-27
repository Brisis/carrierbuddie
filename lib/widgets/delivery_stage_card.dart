import 'package:carrierbuddie/constants.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter/material.dart';

class DeliveryStageCard extends StatelessWidget {
  final String title;
  final bool isInProgress;
  final bool isCompleted;
  const DeliveryStageCard({
    super.key,
    required this.title,
    this.isInProgress = false,
    this.isCompleted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: kSecondaryColorLight,
                border: isInProgress
                    ? Border.all(color: kPrimaryColor, width: 3.5)
                    : null,
                borderRadius: BorderRadius.circular(
                  10,
                ),
                image: const DecorationImage(
                  image: AssetImage("assets/images/logo.webp"),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color:
                    isInProgress ? kAccentColor : kTextBlack.withOpacity(0.85),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
