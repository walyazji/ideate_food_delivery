import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/theme.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<String> cities = ['Dubai', 'Doha', 'London', 'Jerusalem'];
  int countItems = 1;
  String val = 'Dubai';
  bool checkVal = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
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
                  // onTap: () => Get.to(),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              'Order now and   ',
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
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                SizedBox(width: 10),
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
                SizedBox(width: 10),
                Container(
                  alignment: Alignment.center,
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    // borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 231, 229, 229),
                  ),
                  child: Text(
                    '$countItems',
                    style: context.subHeadingStyleOrange,
                  ),
                ),
                SizedBox(width: 5),
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
                )
              ],
            ),
            const Row(
              children: [],
            ),
            const Row(
              children: [],
            ),
          ],
        )),
      ),
    );
  }
}
