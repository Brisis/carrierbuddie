import 'package:carrierbuddie/auth/login.dart';
import 'package:carrierbuddie/constants.dart';
import 'package:carrierbuddie/screens/delivery_request.dart';
import 'package:carrierbuddie/screens/delivery_timeline.dart';
import 'package:carrierbuddie/screens/pickup_request.dart';
import 'package:carrierbuddie/widgets/settings_item.dart';
import 'package:carrierbuddie/widgets/store_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: SafeArea(
        child: Drawer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/img.jpg"),
                    maxRadius: 50,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Benevolent Mudzinganyama",
                      style: const TextStyle(
                        fontSize: 15,
                        color: kTextFadedColor,
                      ),
                    ),
                    Text(
                      "Bindura University, Chawagona Campus",
                      style: const TextStyle(
                        fontSize: 13,
                        color: kTextFadedColor,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context)
                          .push(routeTransition(const LoginScreen()));
                    },
                    label: Text(
                      "Logout",
                      style: const TextStyle(
                        fontSize: 15,
                        color: kTextWhite,
                      ),
                    ),
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                      backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    icon: Icon(
                      Icons.logout,
                      color: kRedIconColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SettingsItem(
                  title: "Manage Account",
                  icon: Icons.person_outline,
                  onTap: () {},
                ),
                SettingsItem(
                  title: "Transactions",
                  icon: CupertinoIcons.tortoise,
                  onTap: () {},
                ),
                SettingsItem(
                  title: "Privacy",
                  icon: Icons.lock_outline,
                  onTap: () {},
                ),
                SettingsItem(
                  title: "Security",
                  icon: Icons.security,
                  onTap: () {},
                ),
                SettingsItem(
                  title: "Share profile",
                  icon: CupertinoIcons.reply,
                  onTap: () {},
                ),
                const Divider(
                  color: kTextGrey,
                  thickness: 0.2,
                ),
                const Center(
                  child: Text(
                    "CarrierBuddie @2022",
                    style: TextStyle(
                      fontSize: 10,
                      color: kTextFadedColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
          icon: const Icon(
            Icons.menu,
            color: kTextFadedColor,
          ),
        ),
        title: const Center(
          child: Text(
            "Shashi View, Bindura",
            style: TextStyle(
              fontSize: 15,
              color: kTextFadedColor,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.location_history,
              color: kTextFadedColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            const Text(
              "Choose Action",
              style: TextStyle(
                fontSize: 15,
                color: kTextGrey,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                      backgroundColor:
                          MaterialStateProperty.all(kSecondaryColorLight),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .push(routeTransition(const DeliveryRequestScreen()));
                    },
                    icon: const Icon(
                      Icons.delivery_dining,
                      color: kRedIconColor,
                    ),
                    label: const Text(
                      "Delivery",
                      style: TextStyle(
                        fontSize: 15,
                        color: kTextBlack,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {
                      Navigator.of(context)
                          .push(routeTransition(const PickupRequestScreen()));
                    },
                    icon: const Icon(
                      Icons.directions_car,
                      color: kGreenIconColor,
                    ),
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(0),
                    ),
                    label: const Text(
                      "Pickup",
                      style: TextStyle(
                        fontSize: 15,
                        color: kTextBlack,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const StoreCard(
              title: "PicknPay",
              category: "Groceries",
            ),
            const SizedBox(
              height: 15,
            ),
            const StoreCard(
              title: "Kroger",
              category: "Butchery",
            ),
            const SizedBox(
              height: 15,
            ),
            const StoreCard(
              title: "FruitBuzz",
              category: "Fruits",
            ),
            const SizedBox(
              height: 15,
            ),
            const StoreCard(
              title: "Liquor Flex",
              category: "Bar",
            ),
          ],
        ),
      ),
    );
  }
}
