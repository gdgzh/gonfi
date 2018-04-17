// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company.dart';

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

Serializer<Company> _$companySerializer = new _$CompanySerializer();

class _$CompanySerializer implements StructuredSerializer<Company> {
  @override
  final Iterable<Type> types = const [Company, _$Company];
  @override
  final String wireName = 'Company';

  @override
  Iterable serialize(Serializers serializers, Company object,
      {FullType specifiedType: FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    if (object.imageUri != null) {
      result
        ..add('imageUri')
        ..add(serializers.serialize(object.imageUri,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.address != null) {
      result
        ..add('address')
        ..add(serializers.serialize(object.address,
            specifiedType: const FullType(Address)));
    }

    return result;
  }

  @override
  Company deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType: FullType.unspecified}) {
    final result = new CompanyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'imageUri':
          result.imageUri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address.replace(serializers.deserialize(value,
              specifiedType: const FullType(Address)) as Address);
          break;
      }
    }

    return result.build();
  }
}

class _$Company extends Company {
  @override
  final String name;
  @override
  final String imageUri;
  @override
  final String url;
  @override
  final Address address;

  factory _$Company([void updates(CompanyBuilder b)]) =>
      (new CompanyBuilder()..update(updates)).build();

  _$Company._({this.name, this.imageUri, this.url, this.address}) : super._() {
    if (name == null) throw new BuiltValueNullFieldError('Company', 'name');
  }

  @override
  Company rebuild(void updates(CompanyBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  CompanyBuilder toBuilder() => new CompanyBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! Company) return false;
    return name == other.name &&
        imageUri == other.imageUri &&
        url == other.url &&
        address == other.address;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), imageUri.hashCode), url.hashCode),
        address.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Company')
          ..add('name', name)
          ..add('imageUri', imageUri)
          ..add('url', url)
          ..add('address', address))
        .toString();
  }
}

class CompanyBuilder implements Builder<Company, CompanyBuilder> {
  _$Company _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _imageUri;
  String get imageUri => _$this._imageUri;
  set imageUri(String imageUri) => _$this._imageUri = imageUri;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  AddressBuilder _address;
  AddressBuilder get address => _$this._address ??= new AddressBuilder();
  set address(AddressBuilder address) => _$this._address = address;

  CompanyBuilder();

  CompanyBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _imageUri = _$v.imageUri;
      _url = _$v.url;
      _address = _$v.address?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Company other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$Company;
  }

  @override
  void update(void updates(CompanyBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Company build() {
    _$Company _$result;
    try {
      _$result = _$v ??
          new _$Company._(
              name: name,
              imageUri: imageUri,
              url: url,
              address: _address?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'address';
        _address?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Company', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
