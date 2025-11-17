import 'package:flutter/material.dart';

import 'widgets/timer_text.dart';
import 'widgets/timer_actions.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 100.0),
              child: Center(child: TimerText()),
            ),
            TimerActions(),
          ],
        ),
      ],
    );
  }
}
