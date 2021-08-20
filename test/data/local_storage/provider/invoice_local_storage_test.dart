import 'package:combio_app/core/constants/category.dart';
import 'package:combio_app/data/local_storage/provider/provider_local_storage_impl.dart';
import 'package:combio_app/models/article_paid/article_paid.dart';
import 'package:combio_app/models/provider/provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:mockito/mockito.dart';
import 'dynny_provider_data.dart';

class ProviderMockBox extends Mock implements Box<Provider> {}

main() async {
  Hive.init("./");
  Hive.registerAdapter(ProviderAdapter());
  Hive.registerAdapter(ArticleAdapter());
  Hive.registerAdapter(CategoryTypeAdapter());
  late final Box<Provider> _invoiceBox;
  late final ProviderLocalStorageImpl _invoiceLocalStorage;

  _invoiceBox = await Hive.openBox<Provider>("providerBox");
  _invoiceLocalStorage = ProviderLocalStorageImpl(articleBox: _invoiceBox);
  test('Save an Provider', () async {
    providerList.forEach((element) async {
      expect(Future.value(await _invoiceLocalStorage.saveProvider(element)),
          completion(equals(true)));
    });
  });
  test('Delete an Provider', () async {
    expect(
        Future.value(
            await _invoiceLocalStorage.deleteProvider(providerList[0].name)),
        completion(equals(true)));
  });
  test('Fetch all Providers', () async {
    providerList.forEach((element) async {
      expect(Future.value((await _invoiceLocalStorage.getProviders()).length),
          completion(equals(providerList.length)));
    });
  });
}
