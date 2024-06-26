import 'package:flutter/material.dart';
import 'package:shiprocket/widgets/categories.dart';
import 'package:shiprocket/home_page/widgets/home_app_bar.dart';
import 'package:shiprocket/home_page/widgets/image_slider.dart';
import 'package:shiprocket/home_page/widgets/product_card.dart';
import 'package:shiprocket/widgets/products_model.dart';
import 'package:shiprocket/home_page/widgets/search_bar.dart';

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
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            const Categories(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Special For You",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
              ],
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.70,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: products[index],
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}
