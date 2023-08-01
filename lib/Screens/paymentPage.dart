import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/theme.dart';

import 'orderCompletePage.dart';
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
          alignment: Alignment.topCenter,
          children: [
            ClipRRect(
              child: Image.network(
                height: 240,
                'https://mapsvg.com/docs/user/pages/05.tutorials/02.google-and-custom-svg/1.png',
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(135, 9, 7, 7),
                            ),
                            child: const Icon(
                              Icons.arrow_back,
                              size: 30,
                              color: Colors.white,
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
                              color: const Color.fromARGB(135, 9, 7, 7),
                            ),
                            child: const Icon(
                              Icons.info_outline_rounded,
                              size: 30,
                              color: Colors.white,
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
                            height: MediaQuery.sizeOf(context).height * 0.17,
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
                                  '15 - 16 min',
                                  style: context.headingStyleBlack,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                                        const Icon(
                                          Icons.circle_rounded,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          'On The Way',
                                          style:
                                              context.subTitleStyleGreyCustom,
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        const Icon(
                                          Icons.circle_rounded,
                                          color: Colors.grey,
                                        ),
                                        Text(
                                          'Delivered',
                                          style:
                                              context.subTitleStyleGreyCustom,
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
                      const Positioned(
                        top: 100,
                        child: CircleAvatar(
                          maxRadius: 40,
                          minRadius: 39,
                          backgroundImage: NetworkImage(
                              'https://www.vippng.com/png/detail/118-1180508_cooking-pan-vector-png.png'),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  height: MediaQuery.sizeOf(context).height * 0.3,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Chillox Burger',
                            style: context.headingStyleBlack,
                          ),
                          const SizedBox(
                            width: 110,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.star_rate_rounded,
                                color: context.orange,
                              ),
                            ],
                          ),
                          Text(
                            '4.9',
                            style: context.subTitleStyleGreyCustom,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Burgers',
                            style: context.subTitleStyleGrey,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'FastFood',
                            style: context.subTitleStyleGrey,
                          ),
                          const SizedBox(
                            width: 67,
                          ),
                          Text(
                            '4.16 PM, 24 April',
                            style: context.subTitleStyleGreyCustom,
                          ),
                        ],
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(226, 51, 49, 49)),
                            child: const CircleAvatar(
                              backgroundColor: Colors.red,
                              maxRadius: 15,
                              backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/originals/c5/cc/20/c5cc2005ad651b73d324513750de085e.png',
                                  scale: 0.5),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chicken Burger',
                                style: context.subHeadingStyleBlack,
                              ),
                              Text(
                                'chicken patty & special sauce',
                                style: context.subTitleStyleGreyCustom,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$ 4.99',
                                    style: context.subTitleStyleOrange,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 218, 217, 217),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    margin: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      '1',
                                      style: context.subTitleStyleOrange,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(226, 51, 49, 49)),
                            child: const CircleAvatar(
                              backgroundColor: Colors.red,
                              maxRadius: 15,
                              backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/originals/c5/cc/20/c5cc2005ad651b73d324513750de085e.png',
                                  scale: 0.5),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chicken Burger',
                                style: context.subHeadingStyleBlack,
                              ),
                              Text(
                                'chicken patty & special sauce',
                                style: context.subTitleStyleGreyCustom,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$ 4.99',
                                    style: context.subTitleStyleOrange,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 218, 217, 217),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    margin: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      '1',
                                      style: context.subTitleStyleOrange,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(226, 51, 49, 49)),
                            child: const CircleAvatar(
                              backgroundColor: Colors.red,
                              maxRadius: 15,
                              backgroundImage: NetworkImage(
                                  'https://i.pinimg.com/originals/c5/cc/20/c5cc2005ad651b73d324513750de085e.png',
                                  scale: 0.5),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Chicken Burger',
                                style: context.subHeadingStyleBlack,
                              ),
                              Text(
                                'chicken patty & special sauce',
                                style: context.subTitleStyleGreyCustom,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$ 4.99',
                                    style: context.subTitleStyleOrange,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 218, 217, 217),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    margin: const EdgeInsets.only(left: 20),
                                    child: Text(
                                      '1',
                                      style: context.subTitleStyleOrange,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  height: MediaQuery.sizeOf(context).height * 0.14,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            margin: EdgeInsets.only(right: 5),
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(226, 51, 49, 49)),
                            child: const CircleAvatar(
                              backgroundColor: Colors.white,
                              maxRadius: 15,
                              backgroundImage: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/512/2815/2815428.png',
                                  scale: 0.5),
                            ),
                          ),
                          Text(
                            'Waseem Alyazji',
                            style: context.subHeadingStyleBlack,
                          ),
                          SizedBox(width: 30),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star_rate_rounded,
                                      color: context.orange),
                                  Text(
                                    '4.9',
                                    style: context.subTitleStyleGreyCustom,
                                  ),
                                ],
                              ),
                              Text(
                                'Waiting for food',
                                style: context.subTitleStyleGreyCustom,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 70),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0.4),
                                borderRadius: BorderRadius.circular(30)),
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.call_rounded,
                                color: Colors.black,
                              ),
                              label: Text(
                                'Call',
                                style: context.subHeadingStyleBlack,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255)
                                    .withOpacity(0.4),
                                borderRadius: BorderRadius.circular(30)),
                            child: TextButton.icon(
                              onPressed: () {},
                              icon: Icon(
                                Icons.message_rounded,
                                color: Colors.black,
                              ),
                              label: Text(
                                'Chat',
                                style: context.subHeadingStyleBlack,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 236, 235, 235),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const OrderCompleteScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: const Color.fromARGB(255, 236, 235, 235),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Support',
                      style: context.subTitleStyleGrey,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
