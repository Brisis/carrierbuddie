import 'package:carrierbuddie/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';

class MySeperator extends StatelessWidget {
  final double length;
  const MySeperator({
    super.key,
    this.length = 50,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Dash(
              direction: Axis.vertical,
              length: length,
              dashLength: 8,
              dashGap: 3,
              dashColor: kGreenIconColor,
              dashBorderRadius: 4,
              dashThickness: 2),
        ),
      ],
    );
  }
}
