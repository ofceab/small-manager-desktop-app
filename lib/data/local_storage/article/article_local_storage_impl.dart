import 'package:combio_app/models/article_paid/article_paid.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'abstract_article_locale_storage.dart';

class ArticleLocalStorageImpl implements ArticleLocalStorage {
  late final Box<Article> _articleBox;

  ArticleLocalStorageImpl({required Box<Article> articleBox}) {
    _articleBox = articleBox;
  }

  @override
  Future<bool> deleteArticle(String articleUuid) async {
    try {
      await _articleBox.delete(articleUuid);
      return true;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<Article> getArticle(String articleUuid) async {
    try {
      if (_articleBox.containsKey(articleUuid)) {
        return _articleBox.get(articleUuid)!;
      }
      throw Exception("No Found item");
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<List<Article>> getArticles() async {
    try {
      return _articleBox.values.toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<bool> saveArticle(Article article) async {
    try {
      await _articleBox.put(article.name, article);
      return true;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
