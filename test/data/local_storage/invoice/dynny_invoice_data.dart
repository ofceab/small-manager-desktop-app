import 'dart:math';

import 'package:combio_app/models/article_paid/article_paid.dart';
import 'package:combio_app/models/buyer/buyer.dart';
import 'package:combio_app/models/invoice/invoice.dart';
import 'package:combio_app/models/provider/provider.dart';

List<Invoice> invoiceList = List.generate(
    100,
    (index) => Invoice(
        client: Buyer(name: "Obed$index", uuid: "uuuid$index"),
        articlesPaid: [
          Article(name: "Range Rover Sport", articlePrice: 1220, quantity: 10),
          Article(name: "BMW", articlePrice: 854, quantity: 20),
          Article(name: "Velo", articlePrice: 511, quantity: 10),
        ],
        provider: Provider(
            country: "Ivory Coast$index",
            name: "Levi$index",
            providerUuid: "uiid${Random().nextDouble()}")));
