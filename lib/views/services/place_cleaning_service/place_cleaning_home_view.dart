import 'package:carrierbuddie/views/app_wrapper_page.dart';
import 'package:carrierbuddie/widgets/activity_user_card.dart';
import 'package:flutter/material.dart';

class PlaceCleaningServiceView extends StatelessWidget {
  const PlaceCleaningServiceView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppWrapperPage(
      title: "Find Verified Cleaners",
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ActivityUserCard(
            image: "assets/images/user.webp",
            name: "Tracey Jones",
            title: "Expert Cleaner",
            rating: 4.5,
            jobs: 125,
            rate: 15,
          );
        },
      ),
    );
  }
}
