// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_parts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BodyPartsModel {
  String get key;
  String get value;
  String? get image;

  /// Create a copy of BodyPartsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BodyPartsModelCopyWith<BodyPartsModel> get copyWith =>
      _$BodyPartsModelCopyWithImpl<BodyPartsModel>(
          this as BodyPartsModel, _$identity);

  /// Serializes this BodyPartsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BodyPartsModel &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, image);

  @override
  String toString() {
    return 'BodyPartsModel(key: $key, value: $value, image: $image)';
  }
}

/// @nodoc
abstract mixin class $BodyPartsModelCopyWith<$Res> {
  factory $BodyPartsModelCopyWith(
          BodyPartsModel value, $Res Function(BodyPartsModel) _then) =
      _$BodyPartsModelCopyWithImpl;
  @useResult
  $Res call({String key, String value, String? image});
}

/// @nodoc
class _$BodyPartsModelCopyWithImpl<$Res>
    implements $BodyPartsModelCopyWith<$Res> {
  _$BodyPartsModelCopyWithImpl(this._self, this._then);

  final BodyPartsModel _self;
  final $Res Function(BodyPartsModel) _then;

  /// Create a copy of BodyPartsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? image = freezed,
  }) {
    return _then(_self.copyWith(
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BodyPartsModel].
extension BodyPartsModelPatterns on BodyPartsModel {
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
    TResult Function(_BodyPartsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodyPartsModel() when $default != null:
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
    TResult Function(_BodyPartsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyPartsModel():
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
    TResult? Function(_BodyPartsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyPartsModel() when $default != null:
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
    TResult Function(String key, String value, String? image)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BodyPartsModel() when $default != null:
        return $default(_that.key, _that.value, _that.image);
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
    TResult Function(String key, String value, String? image) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyPartsModel():
        return $default(_that.key, _that.value, _that.image);
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
    TResult? Function(String key, String value, String? image)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BodyPartsModel() when $default != null:
        return $default(_that.key, _that.value, _that.image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _BodyPartsModel implements BodyPartsModel {
  const _BodyPartsModel({required this.key, required this.value, this.image});
  factory _BodyPartsModel.fromJson(Map<String, dynamic> json) =>
      _$BodyPartsModelFromJson(json);

  @override
  final String key;
  @override
  final String value;
  @override
  final String? image;

  /// Create a copy of BodyPartsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BodyPartsModelCopyWith<_BodyPartsModel> get copyWith =>
      __$BodyPartsModelCopyWithImpl<_BodyPartsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$BodyPartsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BodyPartsModel &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, image);

  @override
  String toString() {
    return 'BodyPartsModel(key: $key, value: $value, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$BodyPartsModelCopyWith<$Res>
    implements $BodyPartsModelCopyWith<$Res> {
  factory _$BodyPartsModelCopyWith(
          _BodyPartsModel value, $Res Function(_BodyPartsModel) _then) =
      __$BodyPartsModelCopyWithImpl;
  @override
  @useResult
  $Res call({String key, String value, String? image});
}

/// @nodoc
class __$BodyPartsModelCopyWithImpl<$Res>
    implements _$BodyPartsModelCopyWith<$Res> {
  __$BodyPartsModelCopyWithImpl(this._self, this._then);

  final _BodyPartsModel _self;
  final $Res Function(_BodyPartsModel) _then;

  /// Create a copy of BodyPartsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? key = null,
    Object? value = null,
    Object? image = freezed,
  }) {
    return _then(_BodyPartsModel(
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
