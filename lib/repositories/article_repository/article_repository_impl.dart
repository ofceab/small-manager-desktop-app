import '../../core/constants/category.dart';
import '../../models/article_paid/article_paid.dart';
import 'abstract_article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<bool> deleteArticle(String uuid, CategoryType categoryType) {
    // TODO: implement deleteArticle
    throw UnimplementedError();
  }

  @override
  Future<Article> getArticle(String articleUuid) {
    // TODO: implement getArticle
    throw UnimplementedError();
  }

  @override
  Future<List<Article>> getArticlesOfCategory(CategoryType categoryType) {
    // TODO: implement getArticlesOfCategory
    throw UnimplementedError();
  }

  @override
  Future<List<Article>> getFullArticles() {
    // TODO: implement getFullArticles
    throw UnimplementedError();
  }

  @override
  Future<bool> updateArticle(Article article, CategoryType categoryType) {
    // TODO: implement updateArticle
    throw UnimplementedError();
  }
}
