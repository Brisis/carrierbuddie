import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/widgets/progress_tile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Cosmata"),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
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
                  horizontalSpace(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Welcome",
                        style: TextStyle(
                          fontSize: kMediumTextSize,
                          color: kFadedBlack,
                        ),
                      ),
                      Text(
                        "Paulina Gayoso",
                        style: TextStyle(
                          fontSize: kHeaderTextSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
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
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: kIconSize,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              verticalSpace(height: 15),
              Expanded(
                child: ListView(
                  children: [
                    const Text(
                      "Delivery",
                      style: TextStyle(
                        fontSize: kLargeTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(height: 15),
                    Row(
                      children: [
                        SizedBox(
                          height: 70,
                          child: Stack(
                            children: [
                              const CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/images/user.webp"),
                                maxRadius: 35,
                              ),
                              Positioned(
                                right: -2,
                                bottom: -2,
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    border: Border.all(
                                        color: kWhiteColor, width: 2),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.directions_bike,
                                      size: 15,
                                      color: kWhiteColor,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        horizontalSpace(),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Nike Sport Store",
                                style: TextStyle(
                                  fontSize: kHeaderTextSize,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              verticalSpace(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Farfetch.com",
                                        style: TextStyle(
                                          fontSize: kMediumTextSize,
                                          color: kFadedBlack,
                                        ),
                                      ),
                                      verticalSpace(height: 5),
                                      const Text(
                                        "Out for Delivery",
                                        style: TextStyle(
                                            fontSize: kMediumTextSize,
                                            fontWeight: FontWeight.bold,
                                            color: kPrimaryColor),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Text(
                                        "#76218912",
                                        style: TextStyle(
                                          fontSize: kMediumTextSize,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      verticalSpace(height: 5),
                                      const Text(
                                        "Order Number",
                                        style: TextStyle(
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
                    verticalSpace(height: 30),
                    const DeliveryItemCard(),
                    verticalSpace(),
                    const TrackingDetailCard(),
                    verticalSpace(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "2 Days",
                              style: TextStyle(
                                fontSize: kLargeTextSize,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            verticalSpace(height: 10),
                            const Text(
                              "Remaining Time",
                              style: TextStyle(
                                fontSize: kMediumTextSize,
                                color: kFadedBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              "#8621US",
                              style: TextStyle(
                                fontSize: kLargeTextSize,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            verticalSpace(height: 10),
                            const Text(
                              "Tracking Number",
                              style: TextStyle(
                                fontSize: kMediumTextSize,
                                color: kFadedBlack,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    verticalSpace(height: 15),
                    const DeliveryDetailCard(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.cubes),
            label: 'Delivery',
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
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}

class DeliveryItemCard extends StatelessWidget {
  const DeliveryItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhiteColor,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              border: Border.all(color: kGreyColor, width: 2),
              borderRadius: BorderRadius.circular(5),
              image: const DecorationImage(
                image: AssetImage("assets/images/user.webp"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          horizontalSpace(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Nike SB BLZR Court",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(height: 10),
                    const Text(
                      "Quantity: 1",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        color: kFadedBlack,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      "\$2.00",
                      style: TextStyle(
                        fontSize: kLargeTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(height: 10),
                    const Text(
                      "Paypal",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        color: kFadedBlack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TrackingDetailCard extends StatelessWidget {
  const TrackingDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhiteColor,
      ),
      child: Stack(
        children: [
          Column(
            children: const [
              ProgressTile(
                title: "Tracking Number Created",
                subtitle: "Nashville, TN. October 20, 9:17am",
              ),
              ProgressTile(
                title: "In Transit",
                subtitle: "Harare, ZW. October 20, 9:17am",
              ),
              ProgressTile(
                title: "Out for Delivery",
                subtitle: "Courier: Carole Chimaku",
                isCurrentStage: true,
              ),
              ProgressTile(
                title: "Delivered",
                subtitle: "Sign to confirm order",
                isFinalStage: true,
              ),
            ],
          ),
          Positioned(
            bottom: 50,
            right: 10,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: kBlackColor.withOpacity(0.8),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                  child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.call,
                  color: kWhiteColor,
                  size: kIconSize,
                ),
              )),
            ),
          ),
        ],
      ),
    );
  }
}

class DeliveryDetailCard extends StatelessWidget {
  const DeliveryDetailCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: kWhiteColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "DELIVERY ADDRESS",
                style: TextStyle(
                  fontSize: kMediumTextSize,
                  color: kFadedBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "LIVE TRACKER",
                style: TextStyle(
                  fontSize: kMediumTextSize,
                  color: kFadedBlack,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          verticalSpace(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "1390 Market St",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "Unit 110",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "San Fransisco, CA",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(height: 15),
                    const Text(
                      "CONTACT",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        color: kFadedBlack,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(height: 10),
                    const Text(
                      "+263 784 174 687",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpace(),
                    const Text(
                      "benbeemudy@gmail.com",
                      style: TextStyle(
                        fontSize: kMediumTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              horizontalSpace(width: 10),
              Expanded(
                child: Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(color: kGreyColor, width: 2),
                    borderRadius: BorderRadius.circular(5),
                    color: kGreyColor,
                  ),
                  child: Center(
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        border: Border.all(color: kWhiteColor, width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
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
