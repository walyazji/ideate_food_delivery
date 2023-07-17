import 'package:flutter/material.dart';
import 'package:ideate_food_delivery/theme.dart';

SafeArea SharedBoardingMainScreen(
    BuildContext context, String title1, String title2) {
  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 100),
        CircleAvatar(
          radius: 130,
          backgroundImage: const NetworkImage(
              'https://media.istockphoto.com/id/1309966291/photo/delivery-fast-food-concept.webp?b=1&s=170667a&w=0&k=20&c=34EQrgXWR22_R5RE0whfwmj1U9XIl3jVRixt-AevUSQ='),
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
            title1,
            style: context.headingStyleBlack,
          ),
        ),
        const SizedBox(height: 50),
        Center(
          child: Text(
            title2,
            style: context.subTitleStyleGrey,
          ),
        ),
        const SizedBox(height: 30),
        Container(
          width: 130,
          height: 50,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          padding: const EdgeInsets.only(right: 170, left: 170),
          child: ElevatedButton(
            onPressed: () {},
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
  );
}
