import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/theme.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
    with TickerProviderStateMixin {
  List<String> links = [
    'https://img.freepik.com/free-photo/double-hamburger-isolated-white-background-fresh-burger-fast-food-with-beef-cream-cheese_90220-1192.jpg?w=2000',
    'https://www.abeautifulplate.com/wp-content/uploads/2015/08/the-best-homemade-margherita-pizza-1-4-500x375.jpg',
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

  static int? selectedItem = 0;
  int selectedListView = 0;
  String val = 'Dubai';
  List<String> cities = ['Dubai', 'Doha', 'London', 'Jerusalem'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      Icons.filter_list_rounded,
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
                      Icons.search_rounded,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                  // onTap: () => Get.to(),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              'Find Food Around Your ',
              style: context.headingStyleBlack,
            ),
            Text(
              'Area',
              style: context.headingStyleOrange,
            ),
            const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: selectedListView == 0
                            ? context.orange
                            : Colors.white,
                        fixedSize: Size(180, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      setState(() {
                        selectedListView = 0;
                      });
                    },
                    child: Text(
                      'Nearby Restaurant',
                      style: selectedListView == 0
                          ? context.subHeadingStyleWhite
                          : context.subHeadingStyleOrange,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: selectedListView == 1
                            ? context.orange
                            : Colors.white,
                        fixedSize: Size(180, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15))),
                    onPressed: () {
                      setState(() {
                        selectedListView = 1;
                      });
                    },
                    child: Text(
                      'Nearby Restaurant',
                      style: selectedListView == 1
                          ? context.subHeadingStyleWhite
                          : context.subHeadingStyleOrange,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            selectedListView == 0
                ? listViewRestaurant(context)
                : listViewFavorite(context)
          ],
        ),
      ),
    );
  }

  Expanded listViewRestaurant(BuildContext context) {
    return Expanded(
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
                onTap: () {},
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
                          links[0],
                          // height: 200,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    // const SizedBox(width: 5),
                                    Text(
                                      'Chillox Burger',
                                      style: context.subHeadingStyleBlack,
                                    ),
                                    const SizedBox(width: 180),
                                    Icon(
                                      Icons.star_rounded,
                                      color: context.orange,
                                    ),
                                    Text(
                                      '4.9',
                                      style: context.subTitleStyleBlack,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(width: 5),
                                    Text(
                                      '${categories[0]}' '- FastFood',
                                      style: context.titleStyleGrey,
                                    ),
                                    const SizedBox(width: 185),
                                    // const SizedBox(width: 140),
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
    );
  }

  Expanded listViewFavorite(BuildContext context) {
    return Expanded(
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
                onTap: () {},
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
                          links[1],
                          // height: 200,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    // const SizedBox(width: 5),
                                    Text(
                                      'Pizza Hut',
                                      style: context.subHeadingStyleBlack,
                                    ),
                                    const SizedBox(width: 215),
                                    Icon(
                                      Icons.star_rounded,
                                      color: context.orange,
                                    ),
                                    Text(
                                      '4.9',
                                      style: context.subTitleStyleBlack,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(width: 5),
                                    Text(
                                      '${categories[index]}' '- FastFood',
                                      style: context.titleStyleGrey,
                                    ),
                                    const SizedBox(width: 185),
                                    // const SizedBox(width: 140),
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
    );
  }
}
