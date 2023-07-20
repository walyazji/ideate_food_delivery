import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/theme.dart';

class MealDetails extends StatefulWidget {
  MealDetails({super.key});

  @override
  State<MealDetails> createState() => _MealDetailsState();
}

class _MealDetailsState extends State<MealDetails> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
            //   children: [
            //     // const SizedBox(width: 20),
            //     ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //           elevation: 0,
            //           fixedSize: const Size(20, 50),
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(15)),
            //           backgroundColor: Color.fromARGB(255, 255, 255, 255)),
            //       onPressed: () {
            //         Get.back();
            //       },
            //       child: const Icon(
            //         Icons.arrow_back,
            //         color: Colors.black,
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 50,
            //     ),
            //     const SizedBox(width: 60),
            //     ElevatedButton(
            //       style: ElevatedButton.styleFrom(
            //           elevation: 0,
            //           fixedSize: const Size(20, 50),
            //           shape: RoundedRectangleBorder(
            //               borderRadius: BorderRadius.circular(15)),
            //           backgroundColor:
            //               const Color.fromARGB(255, 255, 255, 255)),
            //       onPressed: () {},
            //       child: const Icon(
            //         Icons.local_mall_outlined,
            //         color: Colors.black,
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Opacity(
                opacity: 0.5,
                child: Image.network(
                  'https://www.foodandwine.com/thmb/pwFie7NRkq4SXMDJU6QKnUKlaoI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Ultimate-Veggie-Burgers-FT-Recipe-0821-5d7532c53a924a7298d2175cf1d4219f.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 42),
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
                  margin: const EdgeInsets.only(left: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SizedBox(
                    height: 70,
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
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
                child: GridView.builder(
              itemCount: categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (BuildContext context, int index) {
                return Image.network(
                    'https://www.foodandwine.com/thmb/pwFie7NRkq4SXMDJU6QKnUKlaoI=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Ultimate-Veggie-Burgers-FT-Recipe-0821-5d7532c53a924a7298d2175cf1d4219f.jpg');
              },
            )),
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
