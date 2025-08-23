// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'discount_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
DiscountValueModel _$DiscountValueModelFromJson(Map<String, dynamic> json) {
  return _DiscountValue.fromJson(json);
}

/// @nodoc
mixin _$DiscountValueModel {
  num get discount_value_price;
  num get final_price;

  /// Create a copy of DiscountValueModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DiscountValueModelCopyWith<DiscountValueModel> get copyWith =>
      _$DiscountValueModelCopyWithImpl<DiscountValueModel>(
          this as DiscountValueModel, _$identity);

  /// Serializes this DiscountValueModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DiscountValueModel &&
            (identical(other.discount_value_price, discount_value_price) ||
                other.discount_value_price == discount_value_price) &&
            (identical(other.final_price, final_price) ||
                other.final_price == final_price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, discount_value_price, final_price);

  @override
  String toString() {
    return 'DiscountValueModel(discount_value_price: $discount_value_price, final_price: $final_price)';
  }
}

/// @nodoc
abstract mixin class $DiscountValueModelCopyWith<$Res> {
  factory $DiscountValueModelCopyWith(
          DiscountValueModel value, $Res Function(DiscountValueModel) _then) =
      _$DiscountValueModelCopyWithImpl;
  @useResult
  $Res call({num discount_value_price, num final_price});
}

/// @nodoc
class _$DiscountValueModelCopyWithImpl<$Res>
    implements $DiscountValueModelCopyWith<$Res> {
  _$DiscountValueModelCopyWithImpl(this._self, this._then);

  final DiscountValueModel _self;
  final $Res Function(DiscountValueModel) _then;

  /// Create a copy of DiscountValueModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount_value_price = null,
    Object? final_price = null,
  }) {
    return _then(_self.copyWith(
      discount_value_price: null == discount_value_price
          ? _self.discount_value_price
          : discount_value_price // ignore: cast_nullable_to_non_nullable
              as num,
      final_price: null == final_price
          ? _self.final_price
          : final_price // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// Adds pattern-matching-related methods to [DiscountValueModel].
extension DiscountValueModelPatterns on DiscountValueModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DiscountValue value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiscountValue() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DiscountValue value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiscountValue():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DiscountValue value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiscountValue() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(num discount_value_price, num final_price)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DiscountValue() when $default != null:
        return $default(_that.discount_value_price, _that.final_price);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(num discount_value_price, num final_price) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiscountValue():
        return $default(_that.discount_value_price, _that.final_price);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(num discount_value_price, num final_price)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DiscountValue() when $default != null:
        return $default(_that.discount_value_price, _that.final_price);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DiscountValue implements DiscountValueModel {
  const _DiscountValue(
      {required this.discount_value_price, required this.final_price});
  factory _DiscountValue.fromJson(Map<String, dynamic> json) =>
      _$DiscountValueFromJson(json);

  @override
  final num discount_value_price;
  @override
  final num final_price;

  /// Create a copy of DiscountValueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DiscountValueCopyWith<_DiscountValue> get copyWith =>
      __$DiscountValueCopyWithImpl<_DiscountValue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DiscountValueToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DiscountValue &&
            (identical(other.discount_value_price, discount_value_price) ||
                other.discount_value_price == discount_value_price) &&
            (identical(other.final_price, final_price) ||
                other.final_price == final_price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, discount_value_price, final_price);

  @override
  String toString() {
    return 'DiscountValueModel(discount_value_price: $discount_value_price, final_price: $final_price)';
  }
}

/// @nodoc
abstract mixin class _$DiscountValueCopyWith<$Res>
    implements $DiscountValueModelCopyWith<$Res> {
  factory _$DiscountValueCopyWith(
          _DiscountValue value, $Res Function(_DiscountValue) _then) =
      __$DiscountValueCopyWithImpl;
  @override
  @useResult
  $Res call({num discount_value_price, num final_price});
}

/// @nodoc
class __$DiscountValueCopyWithImpl<$Res>
    implements _$DiscountValueCopyWith<$Res> {
  __$DiscountValueCopyWithImpl(this._self, this._then);

  final _DiscountValue _self;
  final $Res Function(_DiscountValue) _then;

  /// Create a copy of DiscountValueModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? discount_value_price = null,
    Object? final_price = null,
  }) {
    return _then(_DiscountValue(
      discount_value_price: null == discount_value_price
          ? _self.discount_value_price
          : discount_value_price // ignore: cast_nullable_to_non_nullable
              as num,
      final_price: null == final_price
          ? _self.final_price
          : final_price // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

// dart format on
