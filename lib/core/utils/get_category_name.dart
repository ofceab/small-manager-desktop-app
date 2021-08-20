import 'package:combio_app/core/constants/category.dart';

String getCategoryName(CategoryType type) {
  switch (type) {
    case CategoryType.beauty:
      return 'Beauté';
    case CategoryType.energy:
      return 'Energy';
    case CategoryType.health:
      return 'Santé';
    case CategoryType.regim:
      return 'Regime';
  }
}
