import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/theme.dart';

import 'discoverPage.dart';
import 'favoritePage.dart';
import 'payPage.dart';
import 'profilePage.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> cities = ['Dubai', 'Doha', 'London', 'Jerusalem'];
  int selectButton = 2;
  int countItems = 1;
  String val = 'Dubai';
  bool checkVal = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
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
                            color: const Color.fromARGB(255, 231, 229, 229),
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        onTap: () => Get.back(),
                      ),
                      DropdownButton(
                        value: val,
                        borderRadius: BorderRadius.circular(15),
                        alignment: Alignment.topCenter,
                        dropdownColor: Colors.white,
                        items: cities
                            .map<DropdownMenuItem<String>>(
                              (value) => DropdownMenuItem<String>(
                                alignment: Alignment.center,
                                value: value.toString(),
                                child: Text(
                                  value,
                                  style:
                                      const TextStyle(color: Colors.deepOrange),
                                ),
                              ),
                            )
                            .toList(),
                        icon: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xFFFF6838),
                        ),
                        iconSize: 25,
                        elevation: 1,
                        style: context.subHeadingStyleOrange,
                        onChanged: (newValue) {
                          setState(() {
                            val = newValue!;
                          });
                        },
                      ),
                      InkWell(
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 231, 229, 229),
                          ),
                          child: const Icon(
                            Icons.notifications_none_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        // onTap: () => Get.to(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Text(
                    '   Order now and   ',
                    style: context.headingStyleBlack,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Enjoy your',
                        style: context.headingStyleBlack,
                      ),
                      Text(
                        ' meal',
                        style: context.headingStyleOrange,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                          Transform.scale(
                            scale: 1.4,
                            child: Checkbox(
                              side: const BorderSide(style: BorderStyle.solid),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              activeColor: context.orange,
                              value: checkVal,
                              onChanged: (value) {
                                setState(() {
                                  checkVal = value!;
                                });
                              },
                            ),
                          ),
                          Container(
                            height: 90,
                            width: 90,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color.fromARGB(226, 51, 49, 49)),
                            child: const CircleAvatar(
                              backgroundColor: Colors.red,
                              maxRadius: 20,
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
                                'chicken patty & special\n sauce',
                                style: context.subTitleStyleGrey,
                              ),
                              Text(
                                '\$ 4.99',
                                style: context.subHeadingStyleOrange,
                              ),
                            ],
                          ),
                          const SizedBox(width: 10),
                          Container(
                            padding: const EdgeInsets.only(top: 4),
                            alignment: Alignment.center,
                            width: 25,
                            height: 25,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,

                              // borderRadius: BorderRadius.circular(30),
                              color: Color.fromARGB(255, 231, 229, 229),
                            ),
                            child: Text(
                              '$countItems',
                              style: context.subHeadingStyleOrange,
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: const Color.fromARGB(255, 231, 229, 229),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                IconButton(
                                  icon: const Icon(
                                    Icons.add,
                                    size: 15,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      countItems++;
                                    });
                                  },
                                ),
                                IconButton(
                                  icon: const Icon(
                                    Icons.minimize_rounded,
                                    size: 15,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (countItems > 1)
                                        countItems--;
                                      else
                                        null;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 360,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 231, 229, 229),
                        borderRadius: BorderRadius.circular(30)),
                    margin: const EdgeInsets.symmetric(vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            backgroundColor:
                                const Color.fromARGB(255, 231, 229, 229),
                            fixedSize: const Size(180, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Add More Food',
                            style: context.subHeadingStyleBlack,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: context.orange,
                              fixedSize: const Size(180, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            setState(() {
                              showModalBottomSheet(
                                useSafeArea: true,
                                isScrollControlled: true,
                                context: context,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20),
                                  ),
                                ),
                                builder: (context) => Container(
                                  padding: const EdgeInsets.all(20),
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.30,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'SubTotal',
                                            style: context.subHeadingStyleBlack,
                                          ),
                                          Text(
                                            '\$ 49.99',
                                            style: context.subTitleStyleGrey,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Delivery Charge',
                                            style: context.subHeadingStyleBlack,
                                          ),
                                          Text(
                                            'Free',
                                            style: context.subTitleStyleGrey,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 20),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Tax',
                                            style: context.subHeadingStyleBlack,
                                          ),
                                          Text(
                                            '\$ 5.06',
                                            style: context.subTitleStyleGrey,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      const Divider(
                                        color: Colors.grey,
                                        height: 10,
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Total',
                                            style: context.subHeadingStyleBlack,
                                          ),
                                          Text(
                                            '\$ 55.05',
                                            style: context.subTitleStyleGrey,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            elevation: 0,
                                            backgroundColor: context.orange,
                                            fixedSize: const Size(200, 50),
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(15))),
                                        onPressed: () {
                                          Get.to(const PayScreen());
                                        },
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              'Processed',
                                              style:
                                                  context.subHeadingStyleWhite,
                                            ),
                                            Text(
                                              '\$55.05',
                                              style:
                                                  context.subHeadingStyleWhite,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                          },
                          child: Text('Checkout',
                              style: context.subHeadingStyleWhite),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
            ),
          ],
        ),
      ),
    );
  }
}
