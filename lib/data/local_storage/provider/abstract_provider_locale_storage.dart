import '../../../models/provider/provider.dart';

abstract class ProviderLocalStorage {
  /// Save Provider
  Future<bool> saveProvider(Provider nvoice);

  /// delete Provider
  Future<bool> deleteProvider(String articleUuid);

  // Get Providers
  Future<Provider> getProvider(String articleUuid);

  /// Get Providers list
  Future<List<Provider>> getProviders();
}
