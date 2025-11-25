import 'package:flutter/material.dart';

import '../../../shared/presentation/previews/multi_brightness_preview.dart';

@MultiBrightnessPreview(size: Size(300, 600))
Widget preview() => const SplashPage();

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
