import 'package:flutter/material.dart';
import 'package:ideate_food_delivery/theme.dart';

SafeArea CardWidget(BuildContext context, String url, String title, Color c) {
  return SafeArea(
    child: Container(
      padding: const EdgeInsets.only(left: 5),
      margin: const EdgeInsets.only(right: 5),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(25), color: c),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
            url,
          ),
        ),
        const SizedBox(width: 7),
        Text(
          title,
          style: context.subHeadingStyleBlack,
        ),
        const SizedBox(width: 15),
      ]),
    ),
  );
}
