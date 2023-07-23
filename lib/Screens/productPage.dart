import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/theme.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String> categories = ['Beef', 'Lettuce', 'Olive Oil', 'Egg', 'Tomato'];
  List<String> images = [
    'https://www.clipartmax.com/png/middle/99-993803_cartoon-steak-background-beef-cartoon-meat-protein-cartoon-beef.png',
    'https://cdn.imgbin.com/1/22/25/imgbin-lettuce-cartoon-chinese-cabbage-green-cabbage-illustration-avKAaBfxkAD3PqJYEbp5s4scf.jpg',
    'https://cdn.imgbin.com/13/22/1/imgbin-olive-oyl-olive-oil-olive-oil-and-olives-olive-oil-cruet-illustration-YPKpPAZKzpbN04qYB4SB022Ax.jpg',
    'https://image.similarpng.com/thumbnail/2021/10/Realistic-chicken-brown-egg-on-transparent-background-PNG.png',
    'https://freepngimg.com/thumb/tomato/21924-9-tomato-vector.png',
  ];
  int selectedItem = 0;

  Color grey1 = const Color.fromARGB(255, 231, 229, 229);
  Color grey2 = Color.fromARGB(135, 37, 30, 30);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                      // height: 200,
                      'https://www.freepnglogos.com/uploads/burger-png/download-hamburger-burger-png-image-png-image-pngimg-15.png',
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Beef',
                      style: context.headingStyleBlack,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$',
                          style: context.subTitleStyleOrange,
                        ),
                        Text(
                          ' 7.99',
                          style: context.subHeadingStyleBlack,
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Text(
                        'Beef patty & special sauce',
                        style: context.subTitleStyleGrey,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color.fromARGB(255, 231, 229, 229),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                            color: const Color.fromARGB(255, 231, 229, 229),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                            color: const Color.fromARGB(255, 231, 229, 229),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ingredient',
                        style: context.headingStyleBlack,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: SizedBox(
                          height: 80,
                          width: double.infinity,
                          child: ListView.builder(
                            itemCount: categories.length,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (ctx, index) {
                              return InkWell(
                                child: Container(
                                  width: 75,
                                  height: 50,
                                  // padding: const EdgeInsets.only(left: 10),
                                  margin: const EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: selectedItem == index
                                          ? grey2
                                          : grey1),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // const SizedBox(width),
                                      CircleAvatar(
                                        maxRadius: 20,
                                        backgroundImage:
                                            NetworkImage(images[index]),
                                      ),
                                      SizedBox(height: 5),

                                      Text(
                                        categories[index],
                                        style: selectedItem == index
                                            ? context.subHeadingStyleWhite
                                            : context.subHeadingStyleBlack,
                                      ),

                                      // const SizedBox(width: 20),
                                    ],
                                  ),
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
                      SizedBox(height: 20),
                      Text(
                        'About',
                        style: context.headingStyleBlack,
                      ),
                      Text(
                        'This special bffe burger uses special quiality beef with sliced tomatoes, cucumbers,vegetables,\nlettuce leaf,olive oil and more',
                        textAlign: TextAlign.left,
                        style: context.subTitleStyleGrey,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
