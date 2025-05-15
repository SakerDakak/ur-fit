// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiscountValueModel _$DiscountValueModelFromJson(Map<String, dynamic> json) {
  return _DiscountValue.fromJson(json);
}

/// @nodoc
mixin _$DiscountValueModel {
  num get discount_value_price => throw _privateConstructorUsedError;
  num get final_price => throw _privateConstructorUsedError;

  /// Serializes this DiscountValueModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiscountValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiscountValueModelCopyWith<DiscountValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscountValueModelCopyWith<$Res> {
  factory $DiscountValueModelCopyWith(
          DiscountValueModel value, $Res Function(DiscountValueModel) then) =
      _$DiscountValueModelCopyWithImpl<$Res, DiscountValueModel>;
  @useResult
  $Res call({num discount_value_price, num final_price});
}

/// @nodoc
class _$DiscountValueModelCopyWithImpl<$Res, $Val extends DiscountValueModel>
    implements $DiscountValueModelCopyWith<$Res> {
  _$DiscountValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiscountValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount_value_price = null,
    Object? final_price = null,
  }) {
    return _then(_value.copyWith(
      discount_value_price: null == discount_value_price
          ? _value.discount_value_price
          : discount_value_price // ignore: cast_nullable_to_non_nullable
              as num,
      final_price: null == final_price
          ? _value.final_price
          : final_price // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiscountValueImplCopyWith<$Res>
    implements $DiscountValueModelCopyWith<$Res> {
  factory _$$DiscountValueImplCopyWith(
          _$DiscountValueImpl value, $Res Function(_$DiscountValueImpl) then) =
      __$$DiscountValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num discount_value_price, num final_price});
}

/// @nodoc
class __$$DiscountValueImplCopyWithImpl<$Res>
    extends _$DiscountValueModelCopyWithImpl<$Res, _$DiscountValueImpl>
    implements _$$DiscountValueImplCopyWith<$Res> {
  __$$DiscountValueImplCopyWithImpl(
      _$DiscountValueImpl _value, $Res Function(_$DiscountValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiscountValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount_value_price = null,
    Object? final_price = null,
  }) {
    return _then(_$DiscountValueImpl(
      discount_value_price: null == discount_value_price
          ? _value.discount_value_price
          : discount_value_price // ignore: cast_nullable_to_non_nullable
              as num,
      final_price: null == final_price
          ? _value.final_price
          : final_price // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiscountValueImpl implements _DiscountValue {
  const _$DiscountValueImpl(
      {required this.discount_value_price, required this.final_price});

  factory _$DiscountValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiscountValueImplFromJson(json);

  @override
  final num discount_value_price;
  @override
  final num final_price;

  @override
  String toString() {
    return 'DiscountValueModel(discount_value_price: $discount_value_price, final_price: $final_price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiscountValueImpl &&
            (identical(other.discount_value_price, discount_value_price) ||
                other.discount_value_price == discount_value_price) &&
            (identical(other.final_price, final_price) ||
                other.final_price == final_price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, discount_value_price, final_price);

  /// Create a copy of DiscountValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiscountValueImplCopyWith<_$DiscountValueImpl> get copyWith =>
      __$$DiscountValueImplCopyWithImpl<_$DiscountValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiscountValueImplToJson(
      this,
    );
  }
}

abstract class _DiscountValue implements DiscountValueModel {
  const factory _DiscountValue(
      {required final num discount_value_price,
      required final num final_price}) = _$DiscountValueImpl;

  factory _DiscountValue.fromJson(Map<String, dynamic> json) =
      _$DiscountValueImpl.fromJson;

  @override
  num get discount_value_price;
  @override
  num get final_price;

  /// Create a copy of DiscountValueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiscountValueImplCopyWith<_$DiscountValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
