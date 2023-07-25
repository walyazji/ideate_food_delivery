import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/Widgets/categorie.dart';
import 'package:ideate_food_delivery/theme.dart';

import 'restaurantPage.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  List<String> cities = ['Dubai', 'Doha', 'London', 'Jerusalem'];
  List<String> links = [
    'https://static-00.iconduck.com/assets.00/burger-icon-512x473-15nsuo1h.png',
    'https://cdn.pixabay.com/photo/2016/06/01/12/59/pizza-1428931_1280.png',
    'https://cdn5.vectorstock.com/i/1000x1000/52/14/salad-bowl-icon-vector-14565214.jpg',
    'https://cdn4.vectorstock.com/i/1000x1000/28/93/donut-icon-vector-9992893.jpg',
    'https://cdn2.vectorstock.com/i/1000x1000/13/36/sushi-icon-isometric-3d-style-vector-9291336.jpg',
    'https://cdn-icons-png.flaticon.com/512/1206/1206237.png',
    'https://www.foodandwine.com/thmb/pwFie7NRkq4SXMDJU6QKnUKlaoI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Ultimate-Veggie-Burgers-FT-Recipe-0821-5d7532c53a924a7298d2175cf1d4219f.jpg'
  ];
  List<String> categories = [
    'Burger',
    'Pizza',
    'Salad',
    'Donut',
    'Sushi',
    'Chicken',
    'Ramen'
  ];

  static int? selectedItem = 0;
  int? selectButton = 0;

  String val = 'Dubai';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // const SizedBox(width: 20),
                // ElevatedButton(
                //   style: ElevatedButton.styleFrom(
                //       elevation: 0,
                //       shape: RoundedRectangleBorder(
                //           borderRadius: BorderRadius.circular(15)),
                //       backgroundColor: const Color(0xFFFAFAFA)),
                //   onPressed: () {},
                //   child: const Icon(
                // Icons.filter_list,
                //     color: Colors.black,
                //   ),
                // ),
                // const SizedBox(
                //   width: 50,
                // ),
                // const Icon(
                //   Icons.location_on_outlined,
                //   size: 23,
                //   color: Color(0xFFFF6838),
                // ),Row(

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
                      Icons.filter_list,
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
                            style: const TextStyle(color: Colors.deepOrange),
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
                ),
              ],
            ),
            // const SizedBox(width: 60),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //       elevation: 0,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(15)),
            //       backgroundColor: const Color(0xFFFAFAFA)),
            //   onPressed: () {},
            //   child: const Icon(
            //     Icons.notifications_outlined,
            //     color: Colors.black,
            //   ),
            // ),
            const SizedBox(height: 40),
            Text(
              'What do you want for',
              style: context.headingStyleBlack,
            ),
            Text(
              'Dinner',
              style: context.headingStyleOrange,
            ),
            const SizedBox(height: 10),
            Container(
              width: 380,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search your food',
                    prefixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.search_rounded)),
                    suffixIcon: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.tune_rounded,
                          color: Color(0xFFFF6838),
                        )),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Categories',
                    style: context.headingStyleBlack,
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SizedBox(
                    height: 70,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: categories.length - 1,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (ctx, index) {
                        return InkWell(
                          child: CardWidget(
                            context,
                            links[index],
                            categories[index],
                            selectedItem == index
                                ? const Color(0xFFFF6838)
                                : Colors.white,
                          ),
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
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Popular',
                    style: context.headingStyleBlack,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
            Expanded(
              // كان كونتينر
              // ignore: sized_box_for_whitespace
              child: Container(
                // padding: EdgeInsets.only(left: ),
                width: 380,
                child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      return InkWell(
                        onTap: () {
                          Get.to(RestaurantScreen());
                        },
                        child: Container(
                          // padding: EdgeInsets.only(left: 20),
                          alignment: Alignment.center,
                          child: Card(
                            elevation: 1,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(children: [
                              // const SizedBox(height: 10),
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                ),
                                child: Image.network(
                                  links[6],
                                  // height: 200,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        20, 20, 20, 15),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Row(
                                          children: [
                                            const SizedBox(width: 5),
                                            Text(
                                              'Chillox Burger',
                                              style:
                                                  context.subHeadingStyleBlack,
                                            ),
                                            const SizedBox(width: 130),
                                            Icon(
                                              Icons.star_rounded,
                                              color: context.orange,
                                            ),
                                            Text(
                                              '4.9',
                                              style: context.subTitleStyleBlack,
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            const SizedBox(width: 5),
                                            Text(
                                              '${categories[0]}' '- FastFood',
                                              style: context.titleStyleGrey,
                                            ),
                                            const SizedBox(width: 140),
                                            const Text('10 min')
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ]),
                          ),
                        ),
                      );
                    }),
              ),
            ),
            BottomAppBar(
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
            )
          ],
        ),
      ),
    );
  }
}
