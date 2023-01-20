import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/app_wrapper.dart';
import 'package:carrierbuddie/widgets/notification_item.dart';
import 'package:flutter/material.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      index: 2,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const NotificationItem(
            name: "Delivery Request Accepted",
            title: "Tracey Jones Accepted your Delivery Request",
            time: 15,
          );
        },
      ),
    );
  }
}
