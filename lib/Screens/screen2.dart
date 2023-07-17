import 'package:flutter/material.dart';

import '../Widgets/sharedWidget.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SharedBoardingMainScreen(
            context,
            'Order Delicious food for your meal',
            'Order anytime from your favorite restaurants '));
  }
}
