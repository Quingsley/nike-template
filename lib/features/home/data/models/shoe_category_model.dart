class ShoeCategoryModel {
  final String title;
  final double price;
  final String? brand;
  final String? type;
  final String imgPath;
  final bool isFavourite;

  ShoeCategoryModel({
    required this.title,
    required this.price,
    required this.brand,
    required this.type,
    required this.imgPath,
    required this.isFavourite,
  });
}
