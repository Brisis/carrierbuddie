import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/app_wrapper.dart';
import 'package:carrierbuddie/views/clothes_washing_service/clothes_washing_view.dart';
import 'package:carrierbuddie/views/delivery_service/delivery_home_view.dart';
import 'package:carrierbuddie/views/gardening_service/gardening_home_view.dart';
import 'package:carrierbuddie/views/place_cleaning_service/place_cleaning_home_view.dart';
import 'package:carrierbuddie/views/standings_service/standings_home_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppWrapper(
      index: 1,
      child: ListView(
        children: [
          const Text(
            "Welcome,",
            style: TextStyle(
              fontSize: kLargeTextSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          verticalSpace(height: 15),
          const Text(
            "Choose Activity:",
            style: TextStyle(
              fontSize: kHeaderTextSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          verticalSpace(height: 30),
          NavTile(
            title: "Delivery Services",
            subtitle: "Help your peers with deliveries",
            icon: FontAwesomeIcons.truck,
            onTap: () {
              Navigator.of(context).push(
                routeTransition(
                  const DeliveryServiceView(),
                ),
              );
            },
          ),
          verticalSpace(height: 15),
          NavTile(
            title: "Queue Standings",
            subtitle: "Help your peers by holding lines",
            icon: FontAwesomeIcons.person,
            onTap: () {
              Navigator.of(context).push(
                routeTransition(
                  const StandingsServiceView(),
                ),
              );
            },
          ),
          verticalSpace(height: 15),
          NavTile(
            title: "Clothes Washing",
            subtitle: "Help wash your peers' laundry",
            icon: FontAwesomeIcons.handsBubbles,
            onTap: () {
              Navigator.of(context).push(
                routeTransition(
                  const ClothesWashingServiceView(),
                ),
              );
            },
          ),
          verticalSpace(height: 15),
          NavTile(
            title: "Place Cleaning",
            subtitle: "Help cleaning your peers' home,office,etc",
            icon: FontAwesomeIcons.broom,
            onTap: () {
              Navigator.of(context).push(
                routeTransition(
                  const PlaceCleaningServiceView(),
                ),
              );
            },
          ),
          verticalSpace(height: 15),
          NavTile(
            title: "Gardening Services",
            subtitle: "Help your peers with gardening duties",
            icon: FontAwesomeIcons.cloudRain,
            onTap: () {
              Navigator.of(context).push(
                routeTransition(
                  const GardeningServiceView(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class NavTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final Function()? onTap;
  const NavTile({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: kWhiteColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      onTap: onTap,
      leading: FaIcon(
        icon,
        size: kIconSize,
        color: kBlackColor,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontSize: kMediumTextSize,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: const TextStyle(
          fontSize: kMediumTextSize,
          color: kFadedBlack,
        ),
      ),
      trailing: const Text(
        "Go",
        style: TextStyle(
          fontSize: kLargeTextSize,
          color: kSecondaryColor,
        ),
      ),
    );
  }
}
