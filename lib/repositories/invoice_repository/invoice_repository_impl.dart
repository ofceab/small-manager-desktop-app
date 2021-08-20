import 'package:combio_app/models/invoice/invoice.dart';
import 'package:combio_app/repositories/invoice_repository/abstract_invoice_repository.dart';

class InvoiceRepositoryImpl implements InvoiceRepository {
  @override
  Future<bool> deleteInvoice(String invoiceUuid) {
    // TODO: implement deleteInvoice
    throw UnimplementedError();
  }

  @override
  Future<Invoice> getInvoice(String invoiceUuid) {
    // TODO: implement deleteInvoice
    throw UnimplementedError();
  }

  @override
  Future<bool> printInvoice(Invoice invoice) {
    // TODO: implement printInvoice
    throw UnimplementedError();
  }

  @override
  Future<bool> saveInvoice(Invoice invoice) {
    // TODO: implement saveInvoice
    throw UnimplementedError();
  }

  @override
  Future<Invoice> getInvoices() {
    // TODO: implement getInvoices
    throw UnimplementedError();
  }
}
