import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'api_record.g.dart';

abstract class ApiRecord implements Built<ApiRecord, ApiRecordBuilder> {
  static Serializer<ApiRecord> get serializer => _$apiRecordSerializer;

  String? get name;

  String? get description;

  String? get specifications;

  double? get price;

  @BuiltValueField(wireName: 'on_sale')
  bool? get onSale;

  @BuiltValueField(wireName: 'sale_price')
  double? get salePrice;

  int? get quantity;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ApiRecordBuilder builder) => builder
    ..name = ''
    ..description = ''
    ..specifications = ''
    ..price = 0.0
    ..onSale = false
    ..salePrice = 0.0
    ..quantity = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('api');

  static Stream<ApiRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ApiRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ApiRecord._();
  factory ApiRecord([void Function(ApiRecordBuilder) updates]) = _$ApiRecord;

  static ApiRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createApiRecordData({
  String? name,
  String? description,
  String? specifications,
  double? price,
  bool? onSale,
  double? salePrice,
  int? quantity,
}) {
  final firestoreData = serializers.toFirestore(
    ApiRecord.serializer,
    ApiRecord(
      (a) => a
        ..name = name
        ..description = description
        ..specifications = specifications
        ..price = price
        ..onSale = onSale
        ..salePrice = salePrice
        ..quantity = quantity,
    ),
  );

  return firestoreData;
}
