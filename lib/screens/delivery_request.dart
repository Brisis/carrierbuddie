import 'package:carrierbuddie/constants.dart';
import 'package:carrierbuddie/screens/sign_delivery.dart';
import 'package:carrierbuddie/widgets/request_card.dart';
import 'package:flutter/material.dart';

class DeliveryRequestScreen extends StatelessWidget {
  const DeliveryRequestScreen({super.key});

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
            "Request Delivery",
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
              Icons.location_pin,
              color: kTextFadedColor,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return PeerRequestCard(
              name: "Esinati Kobiri",
              location: "Shashi View, Bindura",
              imageUrl: "assets/images/img.jpg",
              onTap: () {
                Navigator.of(context)
                    .push(routeTransition(const SignDeliveryTxn()));
              },
            );
          },
        ),
      ),
    );
  }
}
