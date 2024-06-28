import 'package:flutter/material.dart';
import 'package:shiprocket/home_page/widgets/home_app_bar.dart';
import 'package:shiprocket/home_page/widgets/image_slider.dart';
import 'package:shiprocket/home_page/widgets/product_card.dart';
import 'package:shiprocket/widgets/category.dart';
import 'package:shiprocket/widgets/products_model.dart';
import 'package:shiprocket/home_page/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentSlide = 0;
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<List<Product>> selectedCategories = [
      products,
      mensshoes,
      laptop,
      watch,
      mobile,
      mensfashin,
      womensfashin,
      sunglasses,
      womensshoes,
    ];
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
                setState(() {
                  currentSlide = value;
                });
              },
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: selectIndex == index
                            ? Colors.blue[200]
                            : Colors.transparent,
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(categories[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            categories[index].title,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
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
              itemCount: selectedCategories[selectIndex].length,
              itemBuilder: (context, index) {
                return ProductCard(
                  product: selectedCategories[selectIndex][index],
                );
              },
            ),
          ]),
        ),
      ),
    );
  }
}
