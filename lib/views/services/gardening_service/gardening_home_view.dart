import 'package:carrierbuddie/views/app_wrapper_page.dart';
import 'package:carrierbuddie/widgets/activity_user_card.dart';
import 'package:flutter/material.dart';

class GardeningServiceView extends StatelessWidget {
  const GardeningServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppWrapperPage(
      title: "Find Verified Gardeners",
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ActivityUserCard(
            image: "assets/images/user.webp",
            name: "Tracey Jones",
            title: "Expert Gardener",
            rating: 4.5,
            jobs: 125,
            rate: 15,
          );
        },
      ),
    );
  }
}
