// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nutrition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
NutritionModel _$NutritionModelFromJson(Map<String, dynamic> json) {
  return _Nutrition.fromJson(json);
}

/// @nodoc
mixin _$NutritionModel {
  String get name;
  num get amount;
  String get unit;

  /// Create a copy of NutritionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NutritionModelCopyWith<NutritionModel> get copyWith =>
      _$NutritionModelCopyWithImpl<NutritionModel>(
          this as NutritionModel, _$identity);

  /// Serializes this NutritionModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NutritionModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount, unit);

  @override
  String toString() {
    return 'NutritionModel(name: $name, amount: $amount, unit: $unit)';
  }
}

/// @nodoc
abstract mixin class $NutritionModelCopyWith<$Res> {
  factory $NutritionModelCopyWith(
          NutritionModel value, $Res Function(NutritionModel) _then) =
      _$NutritionModelCopyWithImpl;
  @useResult
  $Res call({String name, num amount, String unit});
}

/// @nodoc
class _$NutritionModelCopyWithImpl<$Res>
    implements $NutritionModelCopyWith<$Res> {
  _$NutritionModelCopyWithImpl(this._self, this._then);

  final NutritionModel _self;
  final $Res Function(NutritionModel) _then;

  /// Create a copy of NutritionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [NutritionModel].
extension NutritionModelPatterns on NutritionModel {
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
    TResult Function(_Nutrition value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Nutrition() when $default != null:
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
    TResult Function(_Nutrition value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutrition():
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
    TResult? Function(_Nutrition value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutrition() when $default != null:
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
    TResult Function(String name, num amount, String unit)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Nutrition() when $default != null:
        return $default(_that.name, _that.amount, _that.unit);
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
    TResult Function(String name, num amount, String unit) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutrition():
        return $default(_that.name, _that.amount, _that.unit);
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
    TResult? Function(String name, num amount, String unit)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutrition() when $default != null:
        return $default(_that.name, _that.amount, _that.unit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Nutrition implements NutritionModel {
  const _Nutrition(
      {required this.name, required this.amount, required this.unit});
  factory _Nutrition.fromJson(Map<String, dynamic> json) =>
      _$NutritionFromJson(json);

  @override
  final String name;
  @override
  final num amount;
  @override
  final String unit;

  /// Create a copy of NutritionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NutritionCopyWith<_Nutrition> get copyWith =>
      __$NutritionCopyWithImpl<_Nutrition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NutritionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Nutrition &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount, unit);

  @override
  String toString() {
    return 'NutritionModel(name: $name, amount: $amount, unit: $unit)';
  }
}

/// @nodoc
abstract mixin class _$NutritionCopyWith<$Res>
    implements $NutritionModelCopyWith<$Res> {
  factory _$NutritionCopyWith(
          _Nutrition value, $Res Function(_Nutrition) _then) =
      __$NutritionCopyWithImpl;
  @override
  @useResult
  $Res call({String name, num amount, String unit});
}

/// @nodoc
class __$NutritionCopyWithImpl<$Res> implements _$NutritionCopyWith<$Res> {
  __$NutritionCopyWithImpl(this._self, this._then);

  final _Nutrition _self;
  final $Res Function(_Nutrition) _then;

  /// Create a copy of NutritionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? unit = null,
  }) {
    return _then(_Nutrition(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

NutritionsModel _$NutritionsModelFromJson(Map<String, dynamic> json) {
  return _Nutritions.fromJson(json);
}

/// @nodoc
mixin _$NutritionsModel {
  List<NutritionModel> get nutrients;

  /// Create a copy of NutritionsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NutritionsModelCopyWith<NutritionsModel> get copyWith =>
      _$NutritionsModelCopyWithImpl<NutritionsModel>(
          this as NutritionsModel, _$identity);

  /// Serializes this NutritionsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NutritionsModel &&
            const DeepCollectionEquality().equals(other.nutrients, nutrients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(nutrients));

  @override
  String toString() {
    return 'NutritionsModel(nutrients: $nutrients)';
  }
}

/// @nodoc
abstract mixin class $NutritionsModelCopyWith<$Res> {
  factory $NutritionsModelCopyWith(
          NutritionsModel value, $Res Function(NutritionsModel) _then) =
      _$NutritionsModelCopyWithImpl;
  @useResult
  $Res call({List<NutritionModel> nutrients});
}

/// @nodoc
class _$NutritionsModelCopyWithImpl<$Res>
    implements $NutritionsModelCopyWith<$Res> {
  _$NutritionsModelCopyWithImpl(this._self, this._then);

  final NutritionsModel _self;
  final $Res Function(NutritionsModel) _then;

  /// Create a copy of NutritionsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nutrients = null,
  }) {
    return _then(_self.copyWith(
      nutrients: null == nutrients
          ? _self.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as List<NutritionModel>,
    ));
  }
}

/// Adds pattern-matching-related methods to [NutritionsModel].
extension NutritionsModelPatterns on NutritionsModel {
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
    TResult Function(_Nutritions value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Nutritions() when $default != null:
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
    TResult Function(_Nutritions value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutritions():
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
    TResult? Function(_Nutritions value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutritions() when $default != null:
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
    TResult Function(List<NutritionModel> nutrients)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Nutritions() when $default != null:
        return $default(_that.nutrients);
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
    TResult Function(List<NutritionModel> nutrients) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutritions():
        return $default(_that.nutrients);
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
    TResult? Function(List<NutritionModel> nutrients)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutritions() when $default != null:
        return $default(_that.nutrients);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Nutritions implements NutritionsModel {
  const _Nutritions({required final List<NutritionModel> nutrients})
      : _nutrients = nutrients;
  factory _Nutritions.fromJson(Map<String, dynamic> json) =>
      _$NutritionsFromJson(json);

  final List<NutritionModel> _nutrients;
  @override
  List<NutritionModel> get nutrients {
    if (_nutrients is EqualUnmodifiableListView) return _nutrients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nutrients);
  }

  /// Create a copy of NutritionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NutritionsCopyWith<_Nutritions> get copyWith =>
      __$NutritionsCopyWithImpl<_Nutritions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NutritionsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Nutritions &&
            const DeepCollectionEquality()
                .equals(other._nutrients, _nutrients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_nutrients));

  @override
  String toString() {
    return 'NutritionsModel(nutrients: $nutrients)';
  }
}

/// @nodoc
abstract mixin class _$NutritionsCopyWith<$Res>
    implements $NutritionsModelCopyWith<$Res> {
  factory _$NutritionsCopyWith(
          _Nutritions value, $Res Function(_Nutritions) _then) =
      __$NutritionsCopyWithImpl;
  @override
  @useResult
  $Res call({List<NutritionModel> nutrients});
}

/// @nodoc
class __$NutritionsCopyWithImpl<$Res> implements _$NutritionsCopyWith<$Res> {
  __$NutritionsCopyWithImpl(this._self, this._then);

  final _Nutritions _self;
  final $Res Function(_Nutritions) _then;

  /// Create a copy of NutritionsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? nutrients = null,
  }) {
    return _then(_Nutritions(
      nutrients: null == nutrients
          ? _self._nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as List<NutritionModel>,
    ));
  }
}

// dart format on
