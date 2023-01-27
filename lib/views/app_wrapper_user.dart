import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/home.dart';
import 'package:carrierbuddie/views/profile/profile_view.dart';
import 'package:carrierbuddie/views/users/user_view.dart';
import 'package:flutter/material.dart';

class AppWrapperPageUser extends StatefulWidget {
  final Widget child;
  final String title;
  const AppWrapperPageUser({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  State<AppWrapperPageUser> createState() => _AppWrapperPageUserState();
}

class _AppWrapperPageUserState extends State<AppWrapperPageUser> {
  void navigateToRoute(Widget screen) {
    Navigator.of(context).push(
      routeTransition(
        screen,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: kWhiteColor,
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: kIconSize,
                      color: kBlackColor,
                    ),
                  ),
                  horizontalSpace(),
                  Expanded(
                    child: Text(
                      widget.title,
                      style: const TextStyle(
                        fontSize: kHeaderTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  horizontalSpace(),
                  widget.child.key == const Key("ProfileView")
                      ? PopupMenuButton<int>(
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                              value: 1,
                              child: Text(
                                "Edit Profile",
                                style: TextStyle(
                                  fontSize: kMediumTextSize,
                                  color: kFadedBlack,
                                ),
                              ),
                            ),
                            const PopupMenuItem(
                              value: 2,
                              child: Text(
                                "My Activities",
                                style: TextStyle(
                                  fontSize: kMediumTextSize,
                                  color: kFadedBlack,
                                ),
                              ),
                            ),
                            const PopupMenuItem(
                              value: 3,
                              child: Text(
                                "Tell a Friend",
                                style: TextStyle(
                                  fontSize: kMediumTextSize,
                                  color: kFadedBlack,
                                ),
                              ),
                            ),
                          ],
                          offset: const Offset(0, 55),
                          color: kWhiteColor,
                          elevation: 2,
                          onSelected: (value) {
                            switch (value) {
                              case 1:
                                //navigateToRoute(const HomeView());
                                break;
                              case 2:
                                //navigateToRoute(const UserView());
                                break;
                            }
                          },
                          child: const Icon(
                            Icons.more_vert,
                            size: kIconSize,
                            color: kBlackColor,
                          ),
                        )
                      : PopupMenuButton<int>(
                          itemBuilder: (context) => [
                            const PopupMenuItem(
                              value: 1,
                              child: Text(
                                "Rate Profile",
                                style: TextStyle(
                                  fontSize: kMediumTextSize,
                                  color: kFadedBlack,
                                ),
                              ),
                            ),
                            const PopupMenuItem(
                              value: 2,
                              child: Text(
                                "Share Profile",
                                style: TextStyle(
                                  fontSize: kMediumTextSize,
                                  color: kFadedBlack,
                                ),
                              ),
                            ),
                            const PopupMenuItem(
                              value: 3,
                              child: Text(
                                "Report Profile",
                                style: TextStyle(
                                  fontSize: kMediumTextSize,
                                  color: kFadedBlack,
                                ),
                              ),
                            ),
                          ],
                          offset: const Offset(0, 55),
                          color: kWhiteColor,
                          elevation: 2,
                          onSelected: (value) {
                            switch (value) {
                              case 1:
                                //navigateToRoute(const HomeView());
                                break;
                              case 2:
                                //navigateToRoute(const UserView());
                                break;
                            }
                          },
                          child: const Icon(
                            Icons.more_vert,
                            size: kIconSize,
                            color: kBlackColor,
                          ),
                        ),
                ],
              ),
            ),
            verticalSpace(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: widget.child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
