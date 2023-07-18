import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/Screens/SignIn.dart';
import 'package:ideate_food_delivery/theme.dart';

SafeArea SharedBoardingMainScreen(
    BuildContext context, String title1, String title2) {
  return SafeArea(
    child: Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 100),
          const CircleAvatar(
            radius: 130,
            backgroundImage: NetworkImage(
                'https://media.istockphoto.com/id/1309966291/photo/delivery-fast-food-concept.webp?b=1&s=170667a&w=0&k=20&c=34EQrgXWR22_R5RE0whfwmj1U9XIl3jVRixt-AevUSQ='),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 90,
              child: CircleAvatar(
                backgroundColor: Color(0xFFFAFAFA),
                radius: 50,
                backgroundImage: NetworkImage(
                  'https://www.shutterstock.com/image-illustration/waseem-name-stylish-text-font-260nw-1910790658.jpg',
                ),
              ),
            ),
          ),
          const SizedBox(height: 100),
          Center(
            child: Text(
              title1,
              style: context.headingStyleBlack,
            ),
          ),
          const SizedBox(height: 50),
          Center(
            child: Text(
              title2,
              style: context.subTitleStyleGrey,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 100),
          Container(
            height: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
            padding: const EdgeInsets.only(right: 110, left: 110),
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const SignInScreen());
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: Text(
                'Get Started',
                style: context.subHeadingStyleWhite,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
