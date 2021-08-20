import 'package:combio_app/core/constants/category.dart';
import 'package:hive/hive.dart';

part 'article_paid.g.dart';

@HiveType(typeId: 1)
class Article {
  @HiveField(0)
  late String name;
  @HiveField(1)
  late double articlePrice;
  @HiveField(2)
  late int quantity;
  @HiveField(3)
  late CategoryType categoryType;

  Article(
      {required this.name,
      required this.articlePrice,
      required this.quantity,
      this.categoryType = CategoryType.energy});
}
