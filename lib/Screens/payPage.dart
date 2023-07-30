import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ideate_food_delivery/Screens/paymentPage.dart';
import 'package:ideate_food_delivery/theme.dart';

class PayScreen extends StatefulWidget {
  const PayScreen({super.key});

  @override
  State<PayScreen> createState() => _PayScreenState();
}

class _PayScreenState extends State<PayScreen> {
  int selectedListView = 0;
  bool checkVal = false;
  bool checkVal1 = false;
  bool checkVal2 = false;
  bool checkVal3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // SizedBox(height: 50),
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
                  Text('Payment', style: context.headingStyleBlack),
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
                        Icons.info_outline_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    // onTap: () => Get.back(),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Container(
                width: 360,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 229, 229),
                    borderRadius: BorderRadius.circular(30)),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: selectedListView == 0
                              ? context.orange
                              : const Color.fromARGB(255, 231, 229, 229),
                          fixedSize: const Size(180, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        setState(() {
                          selectedListView = 0;
                        });
                      },
                      child: Text(
                        'Pay Now',
                        style: selectedListView == 0
                            ? context.subHeadingStyleWhite
                            : context.subHeadingStyleOrange,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0,
                          backgroundColor: selectedListView == 1
                              ? context.orange
                              : const Color.fromARGB(255, 231, 229, 229),
                          fixedSize: const Size(180, 50),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        setState(() {
                          selectedListView = 1;
                        });
                      },
                      child: Text(
                        'Pay Later',
                        style: selectedListView == 1
                            ? context.subHeadingStyleWhite
                            : context.subHeadingStyleOrange,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              selectedListView == 0
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Transform.scale(
                                scale: 1.2,
                                child: Checkbox(
                                  side: const BorderSide(
                                      style: BorderStyle.solid),
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
                                  ),
                                  child: Image.network(
                                      alignment: Alignment.center,
                                      'https://logos-world.net/wp-content/uploads/2020/09/Mastercard-Logo.png')),
                              const SizedBox(width: 10),
                              Text(
                                '9876 . **** . 6543 . 3210',
                                style: context.titleStyleGrey,
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'edit',
                                  style: context.titleStyleGrey,
                                ),
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color.fromARGB(
                                        178, 231, 229, 229)),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Transform.scale(
                                scale: 1.2,
                                child: Checkbox(
                                  side: const BorderSide(
                                      style: BorderStyle.solid),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  activeColor: context.orange,
                                  value: checkVal1,
                                  onChanged: (value) {
                                    setState(() {
                                      checkVal1 = value!;
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
                                  ),
                                  child: Image.network(
                                      alignment: Alignment.center,
                                      'https://1000logos.net/wp-content/uploads/2021/05/Discover-logo.png')),
                              const SizedBox(width: 10),
                              Text(
                                '1143 . **** . 4675 . 9090',
                                style: context.titleStyleGrey,
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'edit',
                                  style: context.titleStyleGrey,
                                ),
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color.fromARGB(
                                        178, 231, 229, 229)),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Transform.scale(
                                scale: 1.2,
                                child: Checkbox(
                                  side: const BorderSide(
                                      style: BorderStyle.solid),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  activeColor: context.orange,
                                  value: checkVal2,
                                  onChanged: (value) {
                                    setState(() {
                                      checkVal2 = value!;
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
                                  ),
                                  child: Image.network(
                                      alignment: Alignment.center,
                                      'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c5/Bitcoin_logo.svg/2560px-Bitcoin_logo.svg.png')),
                              const SizedBox(width: 10),
                              Text(
                                '5357 . **** . 1098 . 1927',
                                style: context.titleStyleGrey,
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'edit',
                                  style: context.titleStyleGrey,
                                ),
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color.fromARGB(
                                        178, 231, 229, 229)),
                              ),
                            ],
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Transform.scale(
                                scale: 1.2,
                                child: Checkbox(
                                  side: const BorderSide(
                                      style: BorderStyle.solid),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  activeColor: context.orange,
                                  value: checkVal3,
                                  onChanged: (value) {
                                    setState(() {
                                      checkVal3 = value!;
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
                                  ),
                                  child: Image.network(
                                      alignment: Alignment.center,
                                      'https://static.vecteezy.com/system/resources/previews/022/100/873/non_2x/visa-logo-transparent-free-png.png')),
                              const SizedBox(width: 10),
                              Text(
                                '2423 . **** . 2355 . 1211',
                                style: context.titleStyleGrey,
                              ),
                              const SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  'edit',
                                  style: context.titleStyleGrey,
                                ),
                                style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    backgroundColor: const Color.fromARGB(
                                        178, 231, 229, 229)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor:
                                    const Color.fromARGB(255, 231, 229, 229),
                                fixedSize: const Size(180, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {},
                            child: Text('Add New Card',
                                style: context.subHeadingStyleBlack),
                          ),
                        ],
                      ),
                    )
                  : Container(
                      // margin: EdgeInsets.symmetric(vertical: 500),

                      ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: context.orange,
                    fixedSize: const Size(180, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                onPressed: () {
                  Get.to(const PaymentScreen());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Conform',
                      style: context.subHeadingStyleWhite,
                    ),
                    Text(
                      '\$55.05',
                      style: context.subHeadingStyleWhite,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
