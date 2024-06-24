import 'package:flutter/material.dart';
import 'package:shiprocket/utills/color.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: contentColor,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          icon: Image.asset(
            "assets/images/icon.png",
            height: 20,
          ),
        ),
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: contentColor,
            padding: const EdgeInsets.all(20),
          ),
          onPressed: () {},
          icon: const Icon(Icons.notifications_outlined),
        ),
      ],
    );
  }
}
