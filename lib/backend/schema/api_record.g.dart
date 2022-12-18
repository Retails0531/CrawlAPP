// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApiRecord> _$apiRecordSerializer = new _$ApiRecordSerializer();

class _$ApiRecordSerializer implements StructuredSerializer<ApiRecord> {
  @override
  final Iterable<Type> types = const [ApiRecord, _$ApiRecord];
  @override
  final String wireName = 'ApiRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ApiRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.specifications;
    if (value != null) {
      result
        ..add('specifications')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.onSale;
    if (value != null) {
      result
        ..add('on_sale')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.salePrice;
    if (value != null) {
      result
        ..add('sale_price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ApiRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApiRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'specifications':
          result.specifications = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'on_sale':
          result.onSale = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'sale_price':
          result.salePrice = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ApiRecord extends ApiRecord {
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? specifications;
  @override
  final double? price;
  @override
  final bool? onSale;
  @override
  final double? salePrice;
  @override
  final int? quantity;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ApiRecord([void Function(ApiRecordBuilder)? updates]) =>
      (new ApiRecordBuilder()..update(updates))._build();

  _$ApiRecord._(
      {this.name,
      this.description,
      this.specifications,
      this.price,
      this.onSale,
      this.salePrice,
      this.quantity,
      this.ffRef})
      : super._();

  @override
  ApiRecord rebuild(void Function(ApiRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiRecordBuilder toBuilder() => new ApiRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiRecord &&
        name == other.name &&
        description == other.description &&
        specifications == other.specifications &&
        price == other.price &&
        onSale == other.onSale &&
        salePrice == other.salePrice &&
        quantity == other.quantity &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, name.hashCode), description.hashCode),
                            specifications.hashCode),
                        price.hashCode),
                    onSale.hashCode),
                salePrice.hashCode),
            quantity.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiRecord')
          ..add('name', name)
          ..add('description', description)
          ..add('specifications', specifications)
          ..add('price', price)
          ..add('onSale', onSale)
          ..add('salePrice', salePrice)
          ..add('quantity', quantity)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ApiRecordBuilder implements Builder<ApiRecord, ApiRecordBuilder> {
  _$ApiRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _specifications;
  String? get specifications => _$this._specifications;
  set specifications(String? specifications) =>
      _$this._specifications = specifications;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  bool? _onSale;
  bool? get onSale => _$this._onSale;
  set onSale(bool? onSale) => _$this._onSale = onSale;

  double? _salePrice;
  double? get salePrice => _$this._salePrice;
  set salePrice(double? salePrice) => _$this._salePrice = salePrice;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ApiRecordBuilder() {
    ApiRecord._initializeBuilder(this);
  }

  ApiRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _description = $v.description;
      _specifications = $v.specifications;
      _price = $v.price;
      _onSale = $v.onSale;
      _salePrice = $v.salePrice;
      _quantity = $v.quantity;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiRecord;
  }

  @override
  void update(void Function(ApiRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiRecord build() => _build();

  _$ApiRecord _build() {
    final _$result = _$v ??
        new _$ApiRecord._(
            name: name,
            description: description,
            specifications: specifications,
            price: price,
            onSale: onSale,
            salePrice: salePrice,
            quantity: quantity,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
