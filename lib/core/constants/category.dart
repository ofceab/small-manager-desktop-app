import 'package:hive/hive.dart';

part 'category.g.dart';

@HiveType(typeId: 5)
enum CategoryType {
  @HiveField(0)
  energy,
  @HiveField(1)
  health,
  @HiveField(2)
  regim,
  @HiveField(3)
  beauty
}
