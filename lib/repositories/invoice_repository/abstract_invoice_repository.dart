import 'package:combio_app/models/invoice/invoice.dart';

abstract class InvoiceRepository {
  /// Save invoice
  Future<bool> saveInvoice(Invoice invoice);

  /// Delete invoice
  Future<bool> deleteInvoice(String invoiceUuid);

  /// Print invoice
  Future<bool> printInvoice(Invoice invoice);

  /// Get invoice
  Future<Invoice> getInvoice(String invoiceUuid);

  /// Get invoices list
  Future<Invoice> getInvoices();
}
