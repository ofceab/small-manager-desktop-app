import 'package:combio_app/core/constants/category.dart';
import 'package:combio_app/data/local_storage/article/abstract_article_locale_storage.dart';
import 'package:combio_app/data/local_storage/article/article_local_storage_impl.dart';
import 'package:combio_app/models/article_paid/article_paid.dart';
import 'package:combio_app/models/provider/provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'dynny_article_data.dart';

main() async {
  Hive.init("./");
  Hive.registerAdapter(ProviderAdapter());
  Hive.registerAdapter(ArticleAdapter());
  Hive.registerAdapter(CategoryTypeAdapter());
  late final Box<Article> _articleBox;
  late final ArticleLocalStorage _invoiceLocalStorage;

  _articleBox = await Hive.openBox<Article>("articleBox");
  _invoiceLocalStorage = ArticleLocalStorageImpl(articleBox: _articleBox);
  test('Save an Article', () async {
    articleList.forEach((element) async {
      expect(Future.value(await _invoiceLocalStorage.saveArticle(element)),
          completion(equals(true)));
    });
  });
  test('Delete an Article', () async {
    expect(
        Future.value(
            await _invoiceLocalStorage.deleteArticle(articleList[0].name)),
        completion(equals(true)));
  });
  test('Fetch all Articles', () async {
    articleList.forEach((element) async {
      expect(Future.value((await _invoiceLocalStorage.getArticles()).length),
          completion(equals(articleList.length - 1)));
    });
  });
}
