import 'package:flutter/material.dart';
import 'package:metabrick/widgets/custom/pressed_neumorphic_button.dart';
import 'package:metabrick/widgets/custom/unpressed_neumorphic_button.dart';

class HomeTabEventHistoryPageRoute extends StatefulWidget {
  const HomeTabEventHistoryPageRoute({super.key});

  @override
  State<HomeTabEventHistoryPageRoute> createState() => _HomeTabEventHistoryPageRouteState();
}

class _HomeTabEventHistoryPageRouteState extends State<HomeTabEventHistoryPageRoute> {
  final TextStyle scoreTextStyle = const TextStyle(
    fontSize: 20,
    color: Colors.white54,
  );

  final TextStyle scoreTypeTextStyle = const TextStyle(
    fontSize: 20,
    color: Colors.white60,
  );

  bool _detailsButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text(
          "History",
          style: TextStyle(fontSize: 15),
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Total events: ", style: scoreTypeTextStyle),
                  Text("10", style: scoreTextStyle),
                ],
              ),
              const Divider(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Missed events: ", style: scoreTypeTextStyle),
                  Text("5", style: scoreTextStyle),
                ],
              ),
              const Divider(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Participated events: ", style: scoreTypeTextStyle),
                  Text("5", style: scoreTextStyle),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        InkWell(
          onTap: () => setState(() => _detailsButtonPressed = !_detailsButtonPressed),
          child: (_detailsButtonPressed)
              ? PressedNeumorphicButton(
                  child: _detailsButton,
                  borderRadius: 20,
                )
              : UnpressedNeumorphicButton(
                  child: _detailsButton,
                  borderRadius: 20,
                ),
        ),
      ],
    );
  }

  get _detailsButton => const Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text(
            "Details",
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
}
