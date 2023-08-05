import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/Screens/discoverPage.dart';
import 'package:ideate_food_delivery/Screens/productPage.dart';
import 'package:ideate_food_delivery/theme.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({super.key});

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  List<String> categories = [
    'Popular',
    'Burgers',
    'French Fry',
    'Chicken',
    'Sausage'
  ];
  List<String> burgerTypes = [
    'Chicken Burger',
    'Burgers',
    'French Fry',
    'Chicken',
    'Sausage'
  ];
  int selectedItem = 0;
  int priceOfMeal = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Opacity(
                opacity: 0.5,
                child: Image.network(
                  'https://www.foodandwine.com/thmb/pwFie7NRkq4SXMDJU6QKnUKlaoI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Ultimate-Veggie-Burgers-FT-Recipe-0821-5d7532c53a924a7298d2175cf1d4219f.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
                            color: const Color.fromARGB(255, 255, 255, 255),
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
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                          child: const Icon(
                            Icons.local_mall_outlined,
                            size: 30,
                            color: Colors.black,
                          ),
                        ),
                        // onTap: () => Get.back(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 180),
                        height: MediaQuery.sizeOf(context).height * 0.17,
                        width: MediaQuery.sizeOf(context).width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Text(
                                    'Chillox',
                                    style: context.headingStyleBlack,
                                  ),
                                ),
                                InkWell(
                                  child: Icon(
                                    Icons.info_rounded,
                                    color: context.orange,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color.fromARGB(
                                          255, 243, 243, 243),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Icon(
                                          Icons.delivery_dining_rounded,
                                          size: 25,
                                          color: Colors.redAccent,
                                        ),
                                        Text(
                                          'Free',
                                          style: context.subTitleStyleGrey,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 150,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color.fromARGB(
                                          255, 243, 243, 243),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.alarm,
                                          size: 25,
                                          color: Colors.amber[900],
                                        ),
                                        Text(
                                          '10 - 20 min',
                                          style: context.subTitleStyleGrey,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: const Color.fromARGB(
                                          255, 243, 243, 243),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star_rate_rounded,
                                          size: 25,
                                          color: context.orange,
                                        ),
                                        Text(
                                          '4.9',
                                          // textAlign: TextAlign.center,
                                          style: context.subTitleStyleGrey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Positioned(
                    top: 125,
                    child: CircleAvatar(
                      maxRadius: 50,
                      minRadius: 39,
                      backgroundImage: NetworkImage(
                          'https://images.deliveryhero.io/image/foodpanda/bd/chain-swimlane/ch6kt-logo.jpg'),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 300),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Menu',
                        style: context.headingStyleBlack,
                      ),
                    ),
                    const SizedBox(
                      width: 211,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border_rounded),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search_rounded),
                      color: Colors.grey,
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: categories.length,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (ctx, index) {
                        return InkWell(
                          child: CategoriesWidget(
                              context,
                              categories[index],
                              index == selectedItem
                                  ? const Color(0xFFFF6838)
                                  : Colors.white,
                              index),
                          onTap: () {
                            setState(() {
                              selectedItem = index;
                            });
                          },
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Stack(
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        // padding: EdgeInsets.only(right: 4, left: 4),

                        // height: 600,
                        child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: categories.length + 1,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 3 / 5.4,
                            // crossAxisSpacing: 1,
                            // mainAxisSpacing: 2.0,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Get.to(() => const ProductScreen());
                              },
                              child: Card(
                                color: const Color.fromARGB(226, 51, 49, 49),
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(height: 20),
                                    ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      ),
                                      child: Image.network(
                                        // height: 150,
                                        'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            'Chicken Burger',
                                            style: context.headingStyleWhite,
                                          ),
                                          Text(
                                            'chicken patty &\n special sauce',
                                            style: context.subHeadingStyleWhite,
                                          ),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(30)),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      if (priceOfMeal > 5) {
                                                        priceOfMeal -= 5;
                                                      }
                                                    });
                                                  },
                                                  icon: const Icon(
                                                    Icons.minimize_rounded,
                                                  ),
                                                ),
                                                Text(
                                                  '$priceOfMeal',
                                                  style:
                                                      context.subTitleStyleGrey,
                                                ),
                                                IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      priceOfMeal += 5;
                                                    });
                                                  },
                                                  icon: const Icon(Icons.add),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container CategoriesWidget(
      BuildContext context, String category, Color c, int index) {
    return Container(
      padding: const EdgeInsets.only(left: 5),
      margin: const EdgeInsets.only(right: 5),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), color: c),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(width: 7),
          Text(
            category,
            style: selectedItem == index
                ? context.subHeadingStyleWhite
                : context.subHeadingStyleBlack,
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
