import 'package:flutter/material.dart';
import 'package:shiprocket/widgets/home_app_bar.dart';
import 'package:shiprocket/widgets/image_slider.dart';
import 'package:shiprocket/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int currentSlide = 0;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),
              const CustomAppBar(),
              const SizedBox(height: 20),
              const MySearchBar(),
              const SizedBox(height: 20),
              ImageSlider(
                currentSlide: currentSlide,
                onChange: (value) {
                  // setState(() {
                  //   currentSlide = value;
                  // });
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
