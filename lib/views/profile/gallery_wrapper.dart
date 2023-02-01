import 'package:carrierbuddie/views/app_wrapper.dart';
import 'package:flutter/material.dart';

class GalleryView extends StatelessWidget {
  final Widget galleryItem;
  const GalleryView({
    super.key,
    required this.galleryItem,
  });

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      index: 0,
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return galleryItem;
        },
      ),
    );
  }
}
