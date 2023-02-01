import 'package:carrierbuddie/helpers/constants.dart';
import 'package:flutter/material.dart';

class AppWrapperPage extends StatelessWidget {
  final Widget child;
  final String title;
  final Function()? onPressed;
  const AppWrapperPage({
    super.key,
    required this.child,
    required this.title,
    this.onPressed,
  });

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
                      title,
                      style: const TextStyle(
                        fontSize: kHeaderTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  horizontalSpace(),
                  IconButton(
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.add,
                      size: kIconSize,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
