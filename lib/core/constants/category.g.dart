// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CategoryTypeAdapter extends TypeAdapter<CategoryType> {
  @override
  final int typeId = 5;

  @override
  CategoryType read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return CategoryType.energy;
      case 1:
        return CategoryType.health;
      case 2:
        return CategoryType.regim;
      case 3:
        return CategoryType.beauty;
      default:
        return CategoryType.energy;
    }
  }

  @override
  void write(BinaryWriter writer, CategoryType obj) {
    switch (obj) {
      case CategoryType.energy:
        writer.writeByte(0);
        break;
      case CategoryType.health:
        writer.writeByte(1);
        break;
      case CategoryType.regim:
        writer.writeByte(2);
        break;
      case CategoryType.beauty:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CategoryTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
