import 'package:hive_flutter/hive_flutter.dart';
import 'package:uuid/uuid.dart';

part 'buyer.g.dart';

@HiveType(typeId: 0)
class Buyer {
  static Uuid uuidInstance = Uuid();
  @HiveField(0)
  late String name;
  @HiveField(1)
  late String? uuid;

  Buyer({required this.name, this.uuid}) {
    if (uuid == null) {
      // Generate UUId
      uuid = uuidInstance.v4();
    }
  }
}
