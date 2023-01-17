import 'package:carrierbuddie/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class ProgressTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isCurrentStage;
  final bool isFinalStage;
  const ProgressTile({
    super.key,
    required this.title,
    required this.subtitle,
    this.isCurrentStage = false,
    this.isFinalStage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isCurrentStage
                  ? Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    )
                  : Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        border: Border.all(color: kSecondaryColor, width: 2),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
              verticalSpace(height: 3),
              isFinalStage
                  ? const SizedBox.shrink()
                  : isCurrentStage
                      ? const Dash(
                          direction: Axis.vertical,
                          length: 50,
                          dashLength: 5,
                          dashThickness: 2,
                          dashColor: kSecondaryColor,
                        )
                      : Container(
                          width: 2,
                          height: 50,
                          decoration: BoxDecoration(
                            color: kSecondaryColor,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
            ],
          ),
          horizontalSpace(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: kMediumTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //verticalSpace(),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: kSmallerTextSize,
                    color: kFadedBlack,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
