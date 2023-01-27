import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/views/home.dart';
import 'package:flutter/material.dart';

class AppWrapperPage extends StatefulWidget {
  final Widget child;
  final String title;
  const AppWrapperPage({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  State<AppWrapperPage> createState() => _AppWrapperPageState();
}

class _AppWrapperPageState extends State<AppWrapperPage> {
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
                      widget.title,
                      style: const TextStyle(
                        fontSize: kHeaderTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  horizontalSpace(),
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        routeTransition(
                          const HomeView(),
                        ),
                      );
                    },
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
                child: widget.child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
