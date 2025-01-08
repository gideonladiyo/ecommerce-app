class Product {
  int id;
  String name;
  String category;
  String imageUrl;
  double price;
  bool isLiked;
  bool isSelected;
  Product({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isLiked,
    required this.isSelected,
  });
}