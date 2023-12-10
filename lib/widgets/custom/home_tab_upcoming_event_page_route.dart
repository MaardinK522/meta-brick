import 'package:flutter/material.dart';

class HomeTabUpcomingEventWidget extends StatelessWidget {
  const HomeTabUpcomingEventWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double eventCardHeight = MediaQuery.of(context).size.width - 80;

    return Stack(
      children: [
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Upcoming",
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              size: 10,
            )
          ],
        ),
        SizedBox(
          height: eventCardHeight,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Image.asset(
                      "assets/sad_man.png",
                      height: eventCardHeight / 2,
                      width: eventCardHeight / 2,
                    ),
                  ),
                ),
                const Text(
                  "NO UPCOMING EVENT!!!",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
