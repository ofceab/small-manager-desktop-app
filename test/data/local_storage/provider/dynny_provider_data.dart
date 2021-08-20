import 'package:combio_app/models/provider/provider.dart';

List<Provider> providerList = List.generate(
    1000,
    (index) => Provider(
        country: "country$index",
        name: "name$index",
        providerUuid: "ddddd$index"));
