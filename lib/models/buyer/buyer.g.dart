// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buyer.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BuyerAdapter extends TypeAdapter<Buyer> {
  @override
  final int typeId = 0;

  @override
  Buyer read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Buyer(
      name: fields[0] as String,
      uuid: fields[1] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Buyer obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.uuid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BuyerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
