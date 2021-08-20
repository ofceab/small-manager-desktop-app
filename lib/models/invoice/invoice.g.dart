// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InvoiceAdapter extends TypeAdapter<Invoice> {
  @override
  final int typeId = 2;

  @override
  Invoice read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Invoice(
      invoiceUuid: fields[0] as String?,
      client: fields[1] as Buyer,
      purshaseDate: fields[2] as int?,
      articlesPaid: (fields[4] as List).cast<Article>(),
      provider: fields[3] as Provider,
    );
  }

  @override
  void write(BinaryWriter writer, Invoice obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.invoiceUuid)
      ..writeByte(1)
      ..write(obj.client)
      ..writeByte(2)
      ..write(obj.purshaseDate)
      ..writeByte(3)
      ..write(obj.provider)
      ..writeByte(4)
      ..write(obj.articlesPaid);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InvoiceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
