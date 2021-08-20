import 'package:combio_app/models/invoice/invoice.dart';

abstract class InvoiceLocalStorage {
  /// Save invoice
  Future<bool> saveInvoice(Invoice invoice);

  /// deleteInvoice
  Future<bool> deleteInvoice(String invoice);

  // Get invoices
  Future<Invoice> getInvoice(String invoice);

  /// Get invoices list
  Future<List<Invoice>> getInvoices();
}
