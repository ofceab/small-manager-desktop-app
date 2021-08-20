import '../../models/provider/provider.dart';

abstract class ProviderRepository {
  /// Add a new provider
  Future<bool> addProvider(Provider provider);

  /// Add a new provider
  Future<bool> getProvider(Provider provider);

  /// Remove a  provider
  Future<bool> deleteProvider(provider);

  /// Get list of providers
  Future<List<Provider>> getProviders();
}
