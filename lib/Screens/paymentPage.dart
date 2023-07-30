import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/theme.dart';

import 'searchPage.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  color: const Color.fromARGB(226, 51, 49, 49),
                  elevation: 1,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    ),
                  ),
                  child: Expanded(
                    child: Column(
                      // alignment: Alignment.topCenter,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 10,
                          width: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: Container(
                                margin: const EdgeInsets.only(left: 10),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: const Icon(
                                  Icons.arrow_back,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                              onTap: () => Get.back(),
                            ),
                            InkWell(
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: const Icon(
                                  Icons.favorite_border_rounded,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        ClipRRect(
                          child: Image.network(
                            height: 180,
                            'https://mapsvg.com/docs/user/pages/05.tutorials/02.google-and-custom-svg/1.png',
                            width: double.infinity,

                            // width: 250,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                // Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceAround,
                //       children: [
                //         Text(
                //           'Beef',
                //           style: context.headingStyleBlack,
                //         ),
                //         Row(
                //           children: [
                //             Text(
                //               '\$',
                //               style: context.subTitleStyleOrange,
                //             ),
                //             Text(
                //               ' 7.99',
                //               style: context.subHeadingStyleBlack,
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //     Column(
                //       crossAxisAlignment: CrossAxisAlignment.start,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       children: [
                //         Padding(
                //           padding: const EdgeInsets.symmetric(
                //               vertical: 10, horizontal: 20),
                //           child: Text(
                //             'Beef patty & special sauce',
                //             style: context.subTitleStyleGrey,
                //           ),
                //         ),
                //         Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceAround,
                //           crossAxisAlignment: CrossAxisAlignment.center,
                //           children: [
                //             Container(
                //               width: 100,
                //               height: 50,
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(30),
                //                 color: const Color.fromARGB(255, 231, 229, 229),
                //               ),
                //               child: Row(
                //                 mainAxisAlignment:
                //                     MainAxisAlignment.spaceEvenly,
                //                 crossAxisAlignment: CrossAxisAlignment.center,
                //                 children: [
                //                   const Icon(
                //                     Icons.delivery_dining_rounded,
                //                     size: 25,
                //                     color: Colors.redAccent,
                //                   ),
                //                   Text(
                //                     'Free',
                //                     style: context.subTitleStyleGrey,
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             Container(
                //               width: 150,
                //               height: 50,
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(30),
                //                 color: const Color.fromARGB(255, 231, 229, 229),
                //               ),
                //               child: Row(
                //                 mainAxisAlignment:
                //                     MainAxisAlignment.spaceEvenly,
                //                 crossAxisAlignment: CrossAxisAlignment.center,
                //                 children: [
                //                   Icon(
                //                     Icons.alarm,
                //                     size: 25,
                //                     color: Colors.amber[900],
                //                   ),
                //                   Text(
                //                     '10 - 20 min',
                //                     style: context.subTitleStyleGrey,
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             Container(
                //               width: 100,
                //               height: 50,
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(30),
                //                 color: const Color.fromARGB(255, 231, 229, 229),
                //               ),
                //               child: Row(
                //                 mainAxisAlignment:
                //                     MainAxisAlignment.spaceEvenly,
                //                 crossAxisAlignment: CrossAxisAlignment.center,
                //                 children: [
                //                   Icon(
                //                     Icons.star_rate_rounded,
                //                     size: 25,
                //                     color: context.orange,
                //                   ),
                //                   Text(
                //                     '4.9',
                //                     // textAlign: TextAlign.center,
                //                     style: context.subTitleStyleGrey,
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ],
                //         ),
                //       ],
                //     ),
                //     Container(
                //       margin: const EdgeInsets.only(left: 20, top: 20),
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text(
                //             'Ingredient',
                //             style: context.headingStyleBlack,
                //           ),
                //           Container(
                //             margin: const EdgeInsets.only(top: 10),
                //             decoration: BoxDecoration(
                //               borderRadius: BorderRadius.circular(15),
                //             ),
                //             child: SizedBox(
                //               height: 80,
                //               width: double.infinity,
                //             ),
                //           ),
                //           const SizedBox(height: 20),
                //           Text(
                //             'About',
                //             style: context.headingStyleBlack,
                //           ),
                //           const SizedBox(height: 5),
                //           Text(
                //             'This special beef burger uses special quality beef with sliced tomatoes, cucumbers,vegetables,\nlettuce leaf,olive oil and more',
                //             textAlign: TextAlign.left,
                //             style: context.subTitleStyleGrey,
                //           ),
                //           const SizedBox(height: 50),
                //           InkWell(
                //             onTap: () {
                //               Get.to(SearchScreen());
                //             },
                //             child: Container(
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(30),
                //                 color: context.orange,
                //               ),
                //               height: 70,
                //               margin: const EdgeInsets.only(right: 20),
                //               child: Row(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 children: [
                //                   Text(
                //                     'Add to Cart',
                //                     style: context.headingStyleWhite,
                //                   ),
                //                   Text('  (\$15.98)',
                //                       style: context.subHeadingStyleWhite),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //   ),
                // ],
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
                        margin: const EdgeInsets.symmetric(vertical: 180),
                        height: MediaQuery.sizeOf(context).height * 0.17,
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 236, 235, 235),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5),
                            Text(
                              '15 - 16 min',
                              style: context.headingStyleBlack,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.check_circle_rounded,
                                      color: context.orange,
                                    ),
                                    Text(
                                      'Confirmed',
                                      style: context.subTitleStyleBlack,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.circle_rounded,
                                      color: context.orange,
                                    ),
                                    Text(
                                      'Cooking',
                                      style: context.subTitleStyleOrange,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.circle_rounded,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      'On The Way',
                                      style: context.subTitleStyleGreyCustom,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.circle_rounded,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      'Delivered',
                                      style: context.subTitleStyleGreyCustom,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 140,
                    child: CircleAvatar(
                      maxRadius: 40,
                      minRadius: 39,
                      backgroundImage: NetworkImage(
                          'https://www.vippng.com/png/detail/118-1180508_cooking-pan-vector-png.png'),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 180),
                        height: MediaQuery.sizeOf(context).height * 0.17,
                        width: MediaQuery.sizeOf(context).width * 0.8,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 236, 235, 235),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 5),
                            Text(
                              '15 - 16 min',
                              style: context.headingStyleBlack,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Icon(
                                      Icons.check_circle_rounded,
                                      color: context.orange,
                                    ),
                                    Text(
                                      'Confirmed',
                                      style: context.subTitleStyleBlack,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.circle_rounded,
                                      color: context.orange,
                                    ),
                                    Text(
                                      'Cooking',
                                      style: context.subTitleStyleOrange,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.circle_rounded,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      'On The Way',
                                      style: context.subTitleStyleGreyCustom,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(
                                      Icons.circle_rounded,
                                      color: Colors.grey,
                                    ),
                                    Text(
                                      'Delivered',
                                      style: context.subTitleStyleGreyCustom,
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
