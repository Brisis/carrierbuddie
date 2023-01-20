import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/auth/register.dart';
import 'package:flutter/material.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kBlackColor,
          image: DecorationImage(
            image: const AssetImage("assets/images/delivery.jpg"),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.7),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //crossAxisAlignment: Cro,
            children: [
              const Text(
                "Fast Service Delivery",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: kWhiteColor,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "for You",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: kWhiteColor,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: kWhiteColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            routeTransition(
                              const RegistrationView(),
                            ),
                          );
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: kGreyColor.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(60),
                          ),
                          child: const Center(
                            child: Text(
                              "Let's Go",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: kWhiteColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  horizontalSpace(width: 30),
                  SizedBox(
                    width: 80,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(35 / 360),
                      child: Image.asset(
                        "assets/images/arrow.png",
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
