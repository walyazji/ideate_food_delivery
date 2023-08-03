import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/theme.dart';

import 'cartPage.dart';
import 'discoverPage.dart';
import 'favoritePage.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int? selectButton = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            ClipRRect(
              child: Image.network(
                height: 240,
                'https://w7.pngwing.com/pngs/798/47/png-transparent-vegetable-green-food-vegetable-material-food-leaf-text-thumbnail.png',
                width: double.infinity,

                // width: 250,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Column(
                  // alignment: Alignment.topCenter,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(right: 10),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(135, 9, 7, 7),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.exit_to_app_rounded,
                                size: 25,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                SystemNavigator.pop();
                              },
                            ),
                          ),
                        ),
                      ],
                    ),

                    // const SizedBox(
                    //   height: 30,
                    // ),
                  ],
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 140),
                            height: MediaQuery.sizeOf(context).height * 0.15,
                            width: MediaQuery.sizeOf(context).width * 0.8,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 236, 235, 235),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const SizedBox(height: 15),
                                Text(
                                  'Waseem',
                                  style: context.headingStyleBlack,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const Positioned(
                        top: 100,
                        child: CircleAvatar(
                          maxRadius: 40,
                          minRadius: 39,
                          backgroundColor:
                              const Color.fromARGB(255, 236, 235, 235),
                          backgroundImage: NetworkImage(
                              'https://cdn-icons-png.flaticon.com/512/2815/2815428.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Get.to(() => const OrderCompleteScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 236, 235, 235),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    icon: const Icon(
                      Icons.account_circle_rounded,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Profile Setting',
                      style: context.subHeadingStyleBlack,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Get.to(() => const OrderCompleteScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 236, 235, 235),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    icon: const Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Locations',
                      style: context.subHeadingStyleBlack,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Get.to(() => const OrderCompleteScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 236, 235, 235),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    icon: const Icon(
                      Icons.payment_rounded,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Payment',
                      style: context.subHeadingStyleBlack,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Get.to(() => const OrderCompleteScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 236, 235, 235),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    icon: const Icon(
                      Icons.history_rounded,
                      color: Colors.black,
                    ),
                    label: Text(
                      'History',
                      style: context.subHeadingStyleBlack,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 70,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton.icon(
                    onPressed: () {
                      // Get.to(() => const OrderCompleteScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 236, 235, 235),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    icon: const Icon(
                      Icons.notifications,
                      color: Colors.black,
                    ),
                    label: Text(
                      'Notifications',
                      style: context.subHeadingStyleBlack,
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomAppBar(
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          selectButton = 0;
                          Get.to(() => const DiscoverScreen());
                        });
                      },
                      icon: Icon(
                        Icons.restaurant_rounded,
                        size: selectButton == 0 ? 35 : 25,
                      ),
                      color: selectButton == 0 ? context.orange : Colors.black,
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(const FavoriteScreen());
                        setState(() {
                          selectButton = 1;
                        });
                      },
                      icon: selectButton == 1
                          ? Icon(
                              Icons.star_rate_rounded,
                              size: selectButton == 1 ? 35 : 25,
                            )
                          : Icon(
                              Icons.star_border_rounded,
                              size: selectButton == 1 ? 35 : 25,
                            ),
                      color: selectButton == 1 ? context.orange : Colors.black,
                    ),
                    IconButton(
                      onPressed: () {
                        Get.to(const CartScreen());
                        setState(() {
                          selectButton = 2;
                        });
                      },
                      icon: selectButton == 2
                          ? Icon(
                              Icons.local_mall_rounded,
                              size: selectButton == 2 ? 35 : 25,
                            )
                          : Icon(
                              Icons.local_mall_outlined,
                              size: selectButton == 2 ? 35 : 25,
                            ),
                      color: selectButton == 2 ? context.orange : Colors.black,
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          selectButton = 3;
                        });
                        Get.to(const ProfileScreen());
                      },
                      icon: selectButton == 3
                          ? Icon(
                              Icons.person,
                              size: selectButton == 3 ? 35 : 25,
                            )
                          : Icon(
                              Icons.person_outline_rounded,
                              size: selectButton == 3 ? 35 : 25,
                            ),
                      color: selectButton == 3 ? context.orange : Colors.black,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
