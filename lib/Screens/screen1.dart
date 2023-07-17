import 'package:flutter/material.dart';
import 'package:ideate_food_delivery/theme.dart';

import '../Widgets/sharedWidget.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SharedBoardingMainScreen(context, 'Find your favorite restaurants',
          'Order from your favorite restaurants with you device'),
    );
  }
}
