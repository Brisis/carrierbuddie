import 'package:carrierbuddie/views/app_wrapper.dart';
import 'package:carrierbuddie/widgets/activity_item.dart';
import 'package:flutter/material.dart';

class ActivitiesView extends StatelessWidget {
  const ActivitiesView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      index: 0,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ActivityItem(
            name: "Monitor Delivery Activity",
            title: "Tracey Jones progress on activity",
            image: "assets/images/buddie.webp",
            time: 15,
          );
        },
      ),
    );
  }
}
