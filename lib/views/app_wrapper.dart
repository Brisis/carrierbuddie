import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/activities.dart';
import 'package:carrierbuddie/views/home.dart';
import 'package:carrierbuddie/views/notifications.dart';
import 'package:carrierbuddie/views/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppWrapper extends StatefulWidget {
  final Widget child;
  final int index;
  const AppWrapper({
    super.key,
    required this.child,
    this.index = 0,
  });

  @override
  State<AppWrapper> createState() => _AppWrapperState();
}

class _AppWrapperState extends State<AppWrapper> {
  DateTime dateTime = DateTime.now();

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(
          routeTransition(
            const ActivitiesView(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).push(
          routeTransition(
            const HomeView(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).push(
          routeTransition(
            const NotificationsView(),
          ),
        );
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    String time;
    if (dateTime.hour < 12) {
      time = "Morning";
    } else if (17 <= dateTime.hour && dateTime.hour <= 23) {
      time = "Evening";
    } else {
      time = "Afternoon";
    }

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
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      routeTransition(
                        const ProfileView(),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/profile.jpg"),
                        maxRadius: 20,
                      ),
                      Positioned(
                        right: 3,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            border: Border.all(color: kWhiteColor, width: 2),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                horizontalSpace(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      routeTransition(
                        const ProfileView(),
                      ),
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good $time",
                        style: const TextStyle(
                          fontSize: kMediumTextSize,
                          color: kFadedBlack,
                        ),
                      ),
                      const Text(
                        "Paulina Gayoso",
                        style: TextStyle(
                          fontSize: kHeaderTextSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: kIconSize,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                )
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
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.cubes),
            label: 'Activities',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.compass),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_outlined),
            label: 'Notifications',
          ),
        ],
        currentIndex: widget.index,
        selectedItemColor: kPrimaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
