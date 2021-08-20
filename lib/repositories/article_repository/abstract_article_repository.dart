import 'package:combio_app/core/constants/category.dart';
import 'package:combio_app/models/article_paid/article_paid.dart';

abstract class ArticleRepository {
  /// Get article
  Future<Article> getArticle(String articleUuid);

  /// Get Full list of articles
  Future<List<Article>> getFullArticles();

  /// Get Full list of articles
  Future<List<Article>> getArticlesOfCategory(CategoryType categoryType);

  /// Delete a category
  Future<bool> deleteArticle(String uuid, CategoryType categoryType);

  /// Update a category
  Future<bool> updateArticle(Article article, CategoryType categoryType);
}
