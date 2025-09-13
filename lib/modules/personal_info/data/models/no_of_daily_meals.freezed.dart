// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'no_of_daily_meals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NoOfDailyMealsModel {
  String get value;
  String get label;
  String? get image;

  /// Create a copy of NoOfDailyMealsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoOfDailyMealsModelCopyWith<NoOfDailyMealsModel> get copyWith =>
      _$NoOfDailyMealsModelCopyWithImpl<NoOfDailyMealsModel>(
          this as NoOfDailyMealsModel, _$identity);

  /// Serializes this NoOfDailyMealsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NoOfDailyMealsModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, label, image);

  @override
  String toString() {
    return 'NoOfDailyMealsModel(value: $value, label: $label, image: $image)';
  }
}

/// @nodoc
abstract mixin class $NoOfDailyMealsModelCopyWith<$Res> {
  factory $NoOfDailyMealsModelCopyWith(
          NoOfDailyMealsModel value, $Res Function(NoOfDailyMealsModel) _then) =
      _$NoOfDailyMealsModelCopyWithImpl;
  @useResult
  $Res call({String value, String label, String? image});
}

/// @nodoc
class _$NoOfDailyMealsModelCopyWithImpl<$Res>
    implements $NoOfDailyMealsModelCopyWith<$Res> {
  _$NoOfDailyMealsModelCopyWithImpl(this._self, this._then);

  final NoOfDailyMealsModel _self;
  final $Res Function(NoOfDailyMealsModel) _then;

  /// Create a copy of NoOfDailyMealsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? image = freezed,
  }) {
    return _then(_self.copyWith(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NoOfDailyMealsModel].
extension NoOfDailyMealsModelPatterns on NoOfDailyMealsModel {
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
    TResult Function(_NoOfDailyMealsModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NoOfDailyMealsModel() when $default != null:
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
    TResult Function(_NoOfDailyMealsModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NoOfDailyMealsModel():
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
    TResult? Function(_NoOfDailyMealsModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NoOfDailyMealsModel() when $default != null:
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
    TResult Function(String value, String label, String? image)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NoOfDailyMealsModel() when $default != null:
        return $default(_that.value, _that.label, _that.image);
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
    TResult Function(String value, String label, String? image) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NoOfDailyMealsModel():
        return $default(_that.value, _that.label, _that.image);
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
    TResult? Function(String value, String label, String? image)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NoOfDailyMealsModel() when $default != null:
        return $default(_that.value, _that.label, _that.image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _NoOfDailyMealsModel implements NoOfDailyMealsModel {
  const _NoOfDailyMealsModel(
      {required this.value, required this.label, this.image});
  factory _NoOfDailyMealsModel.fromJson(Map<String, dynamic> json) =>
      _$NoOfDailyMealsModelFromJson(json);

  @override
  final String value;
  @override
  final String label;
  @override
  final String? image;

  /// Create a copy of NoOfDailyMealsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NoOfDailyMealsModelCopyWith<_NoOfDailyMealsModel> get copyWith =>
      __$NoOfDailyMealsModelCopyWithImpl<_NoOfDailyMealsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NoOfDailyMealsModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NoOfDailyMealsModel &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, label, image);

  @override
  String toString() {
    return 'NoOfDailyMealsModel(value: $value, label: $label, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$NoOfDailyMealsModelCopyWith<$Res>
    implements $NoOfDailyMealsModelCopyWith<$Res> {
  factory _$NoOfDailyMealsModelCopyWith(_NoOfDailyMealsModel value,
          $Res Function(_NoOfDailyMealsModel) _then) =
      __$NoOfDailyMealsModelCopyWithImpl;
  @override
  @useResult
  $Res call({String value, String label, String? image});
}

/// @nodoc
class __$NoOfDailyMealsModelCopyWithImpl<$Res>
    implements _$NoOfDailyMealsModelCopyWith<$Res> {
  __$NoOfDailyMealsModelCopyWithImpl(this._self, this._then);

  final _NoOfDailyMealsModel _self;
  final $Res Function(_NoOfDailyMealsModel) _then;

  /// Create a copy of NoOfDailyMealsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? image = freezed,
  }) {
    return _then(_NoOfDailyMealsModel(
      value: null == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _self.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
