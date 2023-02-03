import 'package:flutter/material.dart';

class GalleryView extends StatelessWidget {
  final Widget galleryItem;
  const GalleryView({
    super.key,
    required this.galleryItem,
  });

  @override
  Widget build(BuildContext context) {
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          crossAxisCount: 3,
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return galleryItem;
        },
      ),
    );
  }
}
