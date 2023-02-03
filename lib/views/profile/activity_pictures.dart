import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/app_wrapper_page.dart';
import 'package:carrierbuddie/views/profile/gallery_wrapper.dart';
import 'package:flutter/material.dart';

class ActivityPicturesView extends StatelessWidget {
  const ActivityPicturesView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppWrapperPage(
      title: "Activity Pictures",
      onPressed: () {},
      child: GalleryView(
        galleryItem: Container(
          decoration: const BoxDecoration(
            color: kPrimaryColor,
            image: DecorationImage(
              image: AssetImage("assets/images/profile.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
