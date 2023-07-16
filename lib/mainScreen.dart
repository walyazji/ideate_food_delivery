import 'package:flutter/material.dart';
import 'package:ideate_food_delivery/theme.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int selectedPage;

  late final PageController _pageController =
      PageController(initialPage: selectedPage);

  final List _pages = [
    Screen1(),
    Screen2(),
  ];

  @override
  Widget build(BuildContext context) {
    const pageCount = 2;
    return Scaffold();
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            CircleAvatar(
              radius: 130,
              backgroundImage: const NetworkImage(
                  'https://img.freepik.com/free-photo/top-view-arrangement-with-food-wooden-background_23-2148308806.jpg?w=2000'),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 90,
                child: CircleAvatar(
                  backgroundColor: const Color(0xFFFAFAFA),
                  radius: 50,
                  child: Text(
                    'Waseem',
                    style: context.headingStyleOrange,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 100),
            Center(
              child: Text(
                'Find Your',
                style: context.headingStyleBlack,
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: Text(
                'Order from your favorite restaurants with you device ',
                style: context.subTitleStyleGrey,
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: Text(
                'Get Started',
                style: context.headingStyleOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
