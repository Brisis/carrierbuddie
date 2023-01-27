import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/users/user_view.dart';
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
    Color getBadgeColor(double rating, int jobs) {
      int avgRatingClass = 0;
      int avgJobsClass = 0;
      int total = 0;
      Color color;

      if (rating > 4) {
        avgRatingClass = 3;
      } else if (3 <= rating && rating <= 4) {
        avgRatingClass = 2;
      } else {
        avgRatingClass = 1;
      }

      if (jobs > 20) {
        avgJobsClass = 3;
      } else if (10 <= jobs && jobs <= 20) {
        avgJobsClass = 2;
      } else if (jobs < 10) {
        avgJobsClass = 1;
      }

      total = avgRatingClass + avgJobsClass;

      if (total > 4) {
        color = kGoldenColor;
      } else if (2 < total && total <= 4) {
        color = kSecondaryColor;
      } else {
        color = kPrimaryColor;
      }

      return color;
    }

    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            routeTransition(
              const UserView(),
            ),
          );
        },
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
                        Icon(
                          Icons.verified,
                          size: kIconSize,
                          color: getBadgeColor(rating, jobs),
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
      ),
    );
  }
}
