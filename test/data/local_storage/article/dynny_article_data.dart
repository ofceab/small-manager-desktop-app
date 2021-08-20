import 'dart:math';

import 'package:combio_app/models/article_paid/article_paid.dart';
import 'package:combio_app/models/invoice/invoice.dart';
import 'package:combio_app/models/provider/provider.dart';

List<Article> articleList = List.generate(
    100,
    (index) => Article(
        name: "produict$index",
        articlePrice: double.tryParse(index.toString())!,
        quantity: (100 + index)));
