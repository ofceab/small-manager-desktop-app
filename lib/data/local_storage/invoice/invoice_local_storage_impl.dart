import 'package:combio_app/data/local_storage/invoice/abstract_invoice_locale_storage.dart';
import 'package:combio_app/models/invoice/invoice.dart';
import 'package:hive_flutter/hive_flutter.dart';

class InvoiceLocalStorageImpl implements InvoiceLocalStorage {
  late final Box<Invoice> _invoiceBox;

  InvoiceLocalStorageImpl({required Box<Invoice> invoiceBox}) {
    _invoiceBox = invoiceBox;
  }

  @override
  Future<bool> deleteInvoice(String invoiceUuid) async {
    try {
      await _invoiceBox.delete(invoiceUuid);
      return true;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<Invoice> getInvoice(String invoiceUuid) async {
    try {
      if (_invoiceBox.containsKey(invoiceUuid)) {
        return _invoiceBox.get(invoiceUuid)!;
      }
      throw Exception("No Found item");
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<List<Invoice>> getInvoices() async {
    try {
      return _invoiceBox.values.toList();
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<bool> saveInvoice(Invoice invoice) async {
    try {
      await _invoiceBox.put(invoice.invoiceUuid, invoice);
      return true;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
