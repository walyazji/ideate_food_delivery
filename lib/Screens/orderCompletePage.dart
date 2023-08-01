import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/Screens/discoverPage.dart';
import 'package:ideate_food_delivery/theme.dart';

class OrderCompleteScreen extends StatelessWidget {
  const OrderCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 150,
                  backgroundImage: const NetworkImage(
                    'https://img.freepik.com/free-vector/red-abstract-elegant-halftone-pattern-white-background_1409-1972.jpg?w=2000',

                    // height: 200,
                  ),
                  child: Icon(
                    Icons.check_circle_rounded,
                    color: context.orange,
                    size: 100,
                  ),
                ),
                Column(
                  children: [
                    Text('Order Completed', style: context.headingStyleBlack),
                    Text('Thanks for trust on us',
                        style: context.subTitleStyleGrey),
                  ],
                ),
                Container(
                  width: 360,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 231, 229, 229),
                      borderRadius: BorderRadius.circular(30)),
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: context.orange,
                          fixedSize: const Size(180, 50),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        onPressed: () {
                          Get.to(DiscoverScreen());
                        },
                        child: Text(
                          'Back Home',
                          style: context.subHeadingStyleWhite,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                const Color.fromARGB(255, 231, 229, 229),
                            fixedSize: const Size(180, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        onPressed: () {},
                        child: Text('Older Again',
                            style: context.subHeadingStyleBlack),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
