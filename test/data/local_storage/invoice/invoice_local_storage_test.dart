import 'package:combio_app/core/constants/category.dart';
import 'package:combio_app/models/article_paid/article_paid.dart';
import 'package:combio_app/models/buyer/buyer.dart';
import 'package:combio_app/models/provider/provider.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:combio_app/data/local_storage/invoice/abstract_invoice_locale_storage.dart';
import 'package:combio_app/data/local_storage/invoice/invoice_local_storage_impl.dart';
import 'package:combio_app/models/invoice/invoice.dart';
import 'package:mockito/mockito.dart';
import 'dynny_invoice_data.dart';

class InvoiceMockBox extends Mock implements Box<Invoice> {}

main() async {
  Hive.init("./");
  Hive.registerAdapter(InvoiceAdapter());
  Hive.registerAdapter(ProviderAdapter());
  Hive.registerAdapter(ArticleAdapter());
  Hive.registerAdapter(CategoryTypeAdapter());
  Hive.registerAdapter(BuyerAdapter());
  late final Box<Invoice> _invoiceBox;
  late final InvoiceLocalStorage _invoiceLocalStorage;

  _invoiceBox = await Hive.openBox<Invoice>("invoiceBox");
  _invoiceLocalStorage = InvoiceLocalStorageImpl(invoiceBox: _invoiceBox);
  test('Save an Invoice', () async {
    invoiceList.forEach((element) async {
      expect(Future.value(await _invoiceLocalStorage.saveInvoice(element)),
          completion(equals(true)));
    });
  });
  test('Delete an Invoice', () async {
    expect(
        Future.value(await _invoiceLocalStorage
            .deleteInvoice(invoiceList[0].invoiceUuid!)),
        completion(equals(true)));
  });
  test('Fetch all Invoices', () async {
    invoiceList.forEach((element) async {
      expect(Future.value((await _invoiceLocalStorage.getInvoices()).length),
          completion(equals(invoiceList.length - 1)));
    });
  });
}
