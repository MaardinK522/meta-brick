import 'package:flutter/material.dart';
import 'package:metabrick/widgets/custom/home_tab_event_history_page_route.dart';
import 'package:metabrick/widgets/custom/home_tab_upcoming_event_page_route.dart';

import '../widgets/custom/unpressed_neumorphic_button.dart';

class HomePageTabRoute extends StatelessWidget {
  const HomePageTabRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 20),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const UnpressedNeumorphicButton(
                borderRadius: 20,
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: HomeTabUpcomingEventWidget(),
                ),
              ),
              const SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: HomeTabEventHistoryPageRoute(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
