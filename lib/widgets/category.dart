class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(
    title: "All",
    image: "assets/images/all.jpg",
  ),
  Category(
    title: "Men's\nShoes",
    image: "assets/images/shoes.jpg",
  ),
  Category(
    title: "Laptop",
    image: "assets/images/laptop.jpg",
  ),
  Category(
    title: "Watch",
    image: "assets/images/watch.jpg",
  ),
  Category(
    title: "Mobile",
    image: "assets/images/mobile.jpg",
  ),
  Category(
    title: "men's\nFashion",
    image: "assets/images/shirt.jpg",
  ),
  Category(
    title: "Women's\nFashion",
    image: "assets/images/fashion.jpg",
  ),
  Category(
    title: "Sunglasses",
    image: "assets/images/sunglasses.jpg",
  ),
  Category(
    title: "Women's\nShoes",
    image: "assets/images/shoes4.jpg",
  ),
];
