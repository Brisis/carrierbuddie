import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/app_wrapper_user.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppWrapperPageUser(
      title: "Paulina Gayoso",
      child: Column(
        key: const Key("ProfileView"),
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ListView(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: kGreyColor, width: 1),
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/profile.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    horizontalSpace(),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Paulina Gayoso",
                            style: TextStyle(
                              fontSize: kHeaderTextSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          verticalSpace(),
                          const Text(
                            "Beverly's Cleaning Service",
                            style: TextStyle(
                              fontSize: kSmallerTextSize,
                              color: kFadedBlack,
                            ),
                          ),
                          verticalSpace(),
                          const Text(
                            "Rating: 4.3",
                            style: TextStyle(
                              fontSize: kMediumTextSize,
                              color: kBlackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                verticalSpace(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    AchievementCard(
                      title: "\$20K+",
                      subtitle: "Total Earned",
                    ),
                    AchievementCard(
                      title: "170",
                      subtitle: "Jobs Completed",
                    ),
                    AchievementCard(
                      title: "677",
                      subtitle: "Hours Worked",
                    ),
                  ],
                ),
                verticalSpace(height: 30),
                const Text(
                  "About Me",
                  style: TextStyle(
                    fontSize: kHeaderTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace(),
                const Text(
                  "I have been in the business for more than 5 years. My business is a family business",
                  style: TextStyle(
                    fontSize: kMediumTextSize,
                    color: kFadedBlack,
                  ),
                ),
                verticalSpace(height: 30),
                const Text(
                  "Photos and Videos",
                  style: TextStyle(
                    fontSize: kHeaderTextSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                verticalSpace(),
                const GalleryGrid(),
              ],
            ),
          ),
          verticalSpace(),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                    backgroundColor: MaterialStateProperty.all(kDangerColor),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                      fontSize: kHeaderTextSize,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AchievementCard extends StatelessWidget {
  final String title;
  final String subtitle;
  const AchievementCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: kHeaderTextSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            verticalSpace(),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: kSmallerTextSize,
                color: kFadedBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GalleryGrid extends StatelessWidget {
  const GalleryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width * .5,
            decoration: BoxDecoration(
              color: kBlackColor,
              border: Border.all(color: kGreyColor, width: 1),
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                image: const AssetImage("assets/images/profile.jpg"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.6),
                  BlendMode.dstATop,
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text(
                  "Job Pictures",
                  style: TextStyle(
                    fontSize: kMediumTextSize,
                    fontWeight: FontWeight.bold,
                    color: kWhiteColor,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    "See all (25)",
                    style: TextStyle(
                      fontSize: kSmallerTextSize,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * .4,
                  decoration: BoxDecoration(
                    color: kBlackColor,
                    border: Border.all(color: kGreyColor, width: 1),
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: const AssetImage("assets/images/profile.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.6),
                        BlendMode.dstATop,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "My Promos",
                        style: TextStyle(
                          fontSize: kSmallerTextSize,
                          fontWeight: FontWeight.bold,
                          color: kWhiteColor,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(10.0)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: const Text(
                          "See all (5)",
                          style: TextStyle(
                            fontSize: kSmallerTextSize,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              verticalSpace(height: 10),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width * .4,
                  decoration: BoxDecoration(
                    color: kBlackColor,
                    border: Border.all(color: kGreyColor, width: 1),
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: const AssetImage("assets/images/profile.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.6),
                        BlendMode.dstATop,
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const Text(
                        "My Videos",
                        style: TextStyle(
                          fontSize: kSmallerTextSize,
                          fontWeight: FontWeight.bold,
                          color: kWhiteColor,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.all(10.0)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.transparent),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        child: const Text(
                          "See all (10)",
                          style: TextStyle(
                            fontSize: kSmallerTextSize,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
