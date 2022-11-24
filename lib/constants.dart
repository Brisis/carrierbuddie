import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

const kPrimaryColor = Color(0xFF645eaf);
const kSecondaryColor = Color(0xFFF9B875);
const kSecondaryColorLight = Color(0xFFFFE59A);
const kAccentColor = Color(0xFFEF8667);
const kTextFadedColor = Color(0xFF656F8E);
const kTextGrey = Colors.black45;
const kTextBlack = Colors.black;
const kGreenIconColor = Color(0xFF015859);
const kRedIconColor = Color(0XFFEC3555);
const kStoreCardColor = Color(0xFFF8EAE1);

PageTransition routeTransition(Widget screen) {
  return PageTransition(
    child: screen,
    type: PageTransitionType.fade,
    duration: const Duration(),
  );
}
