import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/Screens/favoritePage.dart';
import 'package:ideate_food_delivery/theme.dart';

import '../Widgets/categorie.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> cities = ['Dubai', 'Doha', 'London', 'Jerusalem'];
  List<String> links = [
    'https://static-00.iconduck.com/assets.00/burger-icon-512x473-15nsuo1h.png',
    'https://cdn.pixabay.com/photo/2016/06/01/12/59/pizza-1428931_1280.png',
    'https://cdn5.vectorstock.com/i/1000x1000/52/14/salad-bowl-icon-vector-14565214.jpg',
    'https://cdn4.vectorstock.com/i/1000x1000/28/93/donut-icon-vector-9992893.jpg',
    'https://cdn2.vectorstock.com/i/1000x1000/13/36/sushi-icon-isometric-3d-style-vector-9291336.jpg',
    'https://cdn-icons-png.flaticon.com/512/1206/1206237.png',
  ];
  List<String> categories = [
    'Burger',
    'Pizza',
    'Salad',
    'Donut',
    'Sushi',
    'Chicken',
  ];
  List<String> rating = [
    '4.0',
    '4.3',
    '4.5',
    '4.8',
    '5.0',
  ];
  List<String> price = [
    '\$',
    '\$\$',
    '\$\$\$',
  ];
  int selectRate = 0;
  int selectedPrice = 0;
  static int? selectedItem = 0;
  String val = 'Dubai';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
                    onTap: () {
                      Get.to(const FavoriteScreen());
                    },
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
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Search Your ',
                  style: context.headingStyleBlack,
                ),
                Text(
                  'favorite',
                  style: context.headingStyleOrange,
                ),
              ],
            ),
            Text(
              '  food/restaurant',
              style: context.headingStyleBlack,
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
                      onPressed: () {
                        showModalBottomSheet(
                          useSafeArea: true,
                          isScrollControlled: true,
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20),
                            ),
                          ),
                          builder: (context) => StatefulBuilder(
                            builder: (BuildContext context,
                                void Function(void Function()) setState) {
                              return Container(
                                margin: const EdgeInsets.only(left: 20),
                                height:
                                    MediaQuery.sizeOf(context).height * 0.77,
                                // padding: const EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  // crossAxisAlignment:
                                  //     CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      // crossAxisAlignment:
                                      //     CrossAxisAlignment.stretch,
                                      children: [
                                        Text('Filter',
                                            style: context.headingStyleBlack),
                                        IconButton(
                                            onPressed: () {
                                              Get.back();
                                            },
                                            icon: const Icon(
                                                Icons.clear_rounded)),
                                      ],
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: SizedBox(
                                        height: 70,
                                        width: double.infinity,
                                        child: ListView.builder(
                                          semanticChildCount: 3,
                                          itemCount: categories.length,
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemBuilder: (ctx, index) {
                                            // For Meals
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
                                    const SizedBox(height: 20),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Rating',
                                        style: context.headingStyleBlack,
                                      ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: SizedBox(
                                        height: 50,
                                        width: double.infinity,
                                        child: ListView.builder(
                                          itemCount: rating.length,
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemBuilder: (ctx, index) {
                                            // For Rating
                                            return InkWell(
                                              child: Center(
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 10),
                                                  decoration: BoxDecoration(
                                                      color: selectRate == index
                                                          ? const Color(
                                                              0xFFFF6838)
                                                          : Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30)),
                                                  alignment: Alignment.center,
                                                  width: 75,
                                                  height: 50,
                                                  child: Text(
                                                    rating[index],
                                                    textAlign: TextAlign.center,
                                                    style: context
                                                        .subTitleStyleBlack,
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                setState(() {
                                                  selectRate = index;
                                                });
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        'Price',
                                        style: context.headingStyleBlack,
                                      ),
                                    ),
                                    // SizedBox(height: 10),
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: SizedBox(
                                        height: 50,
                                        width: double.infinity,
                                        child: ListView.builder(
                                          itemCount: price.length,
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemBuilder: (ctx, index) {
                                            return InkWell(
                                              child: Center(
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                      right: 10),
                                                  decoration: BoxDecoration(
                                                    color:
                                                        selectedPrice == index
                                                            ? const Color(
                                                                0xFFFF6838)
                                                            : Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                  alignment: Alignment.center,
                                                  width: 75,
                                                  height: 50,
                                                  child: Text(
                                                    price[index],
                                                    textAlign: TextAlign.center,
                                                    style: context
                                                        .subTitleStyleBlack,
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                setState(() {
                                                  selectedPrice = index;
                                                });
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 200),
                                    Container(
                                      margin: EdgeInsets.only(right: 20),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: Size(360, 70),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        child: Text(
                                          'Get Started',
                                          style: context.subHeadingStyleWhite,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    TextButton(
                                      onPressed: () {
                                        setState(() {
                                          selectedItem = 0;
                                          selectRate = 0;
                                          selectedPrice = 0;
                                        });
                                      },
                                      child: Text('Cancel',
                                          style: context.headingStyleBlack),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.tune_rounded,
                        color: Color(0xFFFF6838),
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Restaurant',
                            style: context.headingStyleOrange),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 20),
                      child: TextButton(
                        onPressed: () {},
                        child: Text('Food', style: context.headingStyleBlack),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 40),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
