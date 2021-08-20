import 'package:combio_app/models/article_paid/article_paid.dart';

abstract class ArticleLocalStorage {
  /// Save Article
  Future<bool> saveArticle(Article nvoice);

  /// delete Article
  Future<bool> deleteArticle(String articleUuid);

  // Get Articles
  Future<Article> getArticle(String articleUuid);

  /// Get Articles list
  Future<List<Article>> getArticles();
}
