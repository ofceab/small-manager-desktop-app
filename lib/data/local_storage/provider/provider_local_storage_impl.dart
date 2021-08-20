import 'package:hive_flutter/hive_flutter.dart';

import '../../../models/provider/provider.dart';
import 'abstract_provider_locale_storage.dart';

class ProviderLocalStorageImpl implements ProviderLocalStorage {
  late final Box<Provider> _articleBox;

  ProviderLocalStorageImpl({required Box<Provider> articleBox}) {
    _articleBox = articleBox;
  }

  @override
  Future<bool> deleteProvider(String articleUuid) async {
    try {
      await _articleBox.delete(articleUuid);
      return true;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<Provider> getProvider(String articleUuid) async {
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
  Future<List<Provider>> getProviders() async {
    try {
      return _articleBox.values.toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<bool> saveProvider(Provider article) async {
    try {
      await _articleBox.put(article.providerUuid, article);
      return true;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
