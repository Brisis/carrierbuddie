import 'package:carrierbuddie/helpers/constants.dart';
import 'package:carrierbuddie/widgets/progress_tile.dart';
import 'package:flutter/material.dart';

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
