import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ideate_food_delivery/theme.dart';

import 'discoverPage.dart';

class AfterLoginScreen extends StatelessWidget {
  const AfterLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 100,
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://media.istockphoto.com/id/1309966291/photo/delivery-fast-food-concept.webp?b=1&s=170667a&w=0&k=20&c=34EQrgXWR22_R5RE0whfwmj1U9XIl3jVRixt-AevUSQ='),
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
              const SizedBox(
                height: 130,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hello ',
                        style: context.headingStyleBlack,
                      ),
                      Text(
                        'Mr Waseem',
                        style: context.headingStyleOrange,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Please enable your location to get\n fastest delivery',
                    style: context.subTitleStyleGrey,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 130,
              ),
              Container(
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const DiscoverScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Enable your location',
                    style: context.subHeadingStyleOrange,
                  ),
                ),
              ),
              const SizedBox(height: 17),
              Container(
                height: 70,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(100)),
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const DiscoverScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Add Custom Location',
                    style: context.subHeadingStyleWhite,
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
