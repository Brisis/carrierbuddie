import 'package:carrierbuddie/constants.dart';
import 'package:carrierbuddie/widgets/store_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
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
                    onPressed: () {},
                    icon: const Icon(
                      Icons.percent,
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
                    onPressed: () {},
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
