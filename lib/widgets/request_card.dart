import 'package:carrierbuddie/constants.dart';
import 'package:flutter/material.dart';

class PeerRequestCard extends StatelessWidget {
  final String name;
  final String location;
  final String imageUrl;
  final Function()? onTap;
  // final String buttonText;
  final bool isDeliveryRequest;
  const PeerRequestCard({
    super.key,
    required this.name,
    required this.location,
    required this.imageUrl,
    this.onTap,
    // required this.buttonText,
    this.isDeliveryRequest = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(imageUrl),
                    maxRadius: 25,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontSize: 15,
                          color: kTextFadedColor,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        location,
                        style: const TextStyle(
                          fontSize: 13,
                          color: kTextFadedColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(10.0)),
                backgroundColor:
                    MaterialStateProperty.all(kSecondaryColorLight),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                elevation: MaterialStateProperty.all(0),
              ),
              onPressed: onTap,
              child: Text(
                isDeliveryRequest ? "Request" : "Accept",
                style: const TextStyle(
                  fontSize: 15,
                  color: kTextBlack,
                ),
              ),
            ),
          ],
        ),
        const Divider(
          color: kTextGrey,
          thickness: 0.2,
        )
      ],
    );
  }
}
