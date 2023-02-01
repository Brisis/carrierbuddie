import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/activity/delivery_activity.dart';
import 'package:carrierbuddie/views/activity/general_activity.dart';
import 'package:flutter/material.dart';

class ActivityItem extends StatelessWidget {
  final String name;
  final String title;
  final String image;
  final int time;
  const ActivityItem({
    super.key,
    required this.name,
    required this.title,
    required this.image,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            routeTransition(
              const GeneralActivityView(),
            ),
          );
        },
        child: Container(
          // height: 80,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kWhiteColor,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                maxRadius: 20,
                backgroundImage: AssetImage(image),
              ),
              horizontalSpace(),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: kMediumTextSize,
                        color: kFadedBlack,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              // horizontalSpace(),
              // Text(
              //   "$time min",
              //   style: const TextStyle(
              //     fontSize: kMediumTextSize,
              //     color: kFadedBlack,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
