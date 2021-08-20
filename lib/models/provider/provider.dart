import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

part 'provider.g.dart';

@HiveType(typeId: 3)
class Provider {
  static Uuid _uuid = Uuid();
  @HiveField(0)
  late String name;
  @HiveField(1)
  late String country;
  @HiveField(2)
  late String? providerUuid;

  Provider({required this.name, required this.country, this.providerUuid}) {
    if (providerUuid == null) {
      providerUuid = _uuid.v4();
    }
  }
}
