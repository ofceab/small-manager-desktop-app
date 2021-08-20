import 'package:combio_app/models/buyer/buyer.dart';
import 'package:combio_app/models/provider/provider.dart';
import 'package:hive/hive.dart';
import 'package:uuid/uuid.dart';

import '../article_paid/article_paid.dart';

part 'invoice.g.dart';

@HiveType(typeId: 2)
class Invoice {
  static Uuid _uuid = Uuid();
  @HiveField(0)
  late String? invoiceUuid;
  @HiveField(1)
  late Buyer client;
  @HiveField(2)
  late int? purshaseDate;
  @HiveField(3)
  late Provider provider;
  @HiveField(4)
  late List<Article> articlesPaid;

  Invoice(
      {this.invoiceUuid,
      required this.client,
      this.purshaseDate,
      required this.articlesPaid,
      required this.provider}) {
    if (purshaseDate == null) {
      purshaseDate = DateTime.now().microsecondsSinceEpoch;
    }
    if (invoiceUuid == null) {
      invoiceUuid = _uuid.v4();
    }
  }
}
