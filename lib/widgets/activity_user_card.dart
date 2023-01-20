import 'package:carrierbuddie/helpers/constants.dart';
import 'package:flutter/material.dart';

class ActivityUserCard extends StatelessWidget {
  final String image;
  final String name;
  final String title;
  final double rating;
  final int jobs;
  final int rate;
  const ActivityUserCard({
    super.key,
    required this.image,
    required this.name,
    required this.title,
    required this.rating,
    required this.jobs,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Container(
        height: 130,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kWhiteColor,
        ),
        child: Row(
          children: [
            Container(
              // height: 100,
              width: 100,
              decoration: BoxDecoration(
                border: Border.all(color: kGreyColor, width: 1),
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            horizontalSpace(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
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
                          verticalSpace(),
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: kMediumTextSize,
                              color: kFadedBlack,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.bookmark,
                          size: kIconSize,
                          color: kFadedBlack,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Rating",
                            style: TextStyle(
                              fontSize: kMediumTextSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(height: 10),
                          Text(
                            "$rating",
                            style: const TextStyle(
                              fontSize: kMediumTextSize,
                              color: kFadedBlack,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Total Jobs",
                            style: TextStyle(
                              fontSize: kMediumTextSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(height: 10),
                          Text(
                            "$jobs",
                            style: const TextStyle(
                              fontSize: kMediumTextSize,
                              color: kFadedBlack,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            "Rate",
                            style: TextStyle(
                              fontSize: kMediumTextSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(height: 10),
                          Text(
                            "\$$rate/hr",
                            style: const TextStyle(
                              fontSize: kMediumTextSize,
                              color: kFadedBlack,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
