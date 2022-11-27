import 'package:carrierbuddie/constants.dart';
import 'package:carrierbuddie/screens/pickup_timeline.dart';
import 'package:flutter/material.dart';

class SignPickupTxn extends StatelessWidget {
  const SignPickupTxn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kTextFadedColor,
          ),
        ),
        title: const Center(
          child: Text(
            "Sign Transaction",
            style: TextStyle(
              fontSize: 15,
              color: kTextFadedColor,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: kTextFadedColor, width: 1.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/img.jpg",
                  ),
                  maxRadius: 50,
                ),
                Text(
                  "Transact with John",
                  style: TextStyle(
                    fontSize: 20,
                    color: kTextFadedColor,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                RichText(
                  text: const TextSpan(
                    text: 'Instructions: ',
                    children: [
                      TextSpan(
                        text:
                            "2I have a login form with two textfields a button Login. On tap of login button I am calling an API. I want to show a  during this api call.",
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                    style: TextStyle(
                      fontSize: 13,
                      color: kTextFadedColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Items List:",
                  style: TextStyle(
                    fontSize: 15,
                    color: kTextBlack,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [for (var i in txnItems) i],
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton.icon(
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
                        .push(routeTransition(const PickupTimelineScreen()));
                  },
                  icon: const Icon(
                    Icons.approval_outlined,
                    color: kRedIconColor,
                  ),
                  label: const Text(
                    "Accept Pickup",
                    style: TextStyle(
                      fontSize: 15,
                      color: kTextBlack,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
