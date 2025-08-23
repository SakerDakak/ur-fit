// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
MealModel _$MealModelFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
mixin _$MealModel {
  int get id;
  String? get title;
  String? get image;
  String? get imageType;
  NutritionsModel? get nutrition;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealModelCopyWith<MealModel> get copyWith =>
      _$MealModelCopyWithImpl<MealModel>(this as MealModel, _$identity);

  /// Serializes this MealModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, imageType, nutrition);

  @override
  String toString() {
    return 'MealModel(id: $id, title: $title, image: $image, imageType: $imageType, nutrition: $nutrition)';
  }
}

/// @nodoc
abstract mixin class $MealModelCopyWith<$Res> {
  factory $MealModelCopyWith(MealModel value, $Res Function(MealModel) _then) =
      _$MealModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? image,
      String? imageType,
      NutritionsModel? nutrition});

  $NutritionsModelCopyWith<$Res>? get nutrition;
}

/// @nodoc
class _$MealModelCopyWithImpl<$Res> implements $MealModelCopyWith<$Res> {
  _$MealModelCopyWithImpl(this._self, this._then);

  final MealModel _self;
  final $Res Function(MealModel) _then;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? image = freezed,
    Object? imageType = freezed,
    Object? nutrition = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: freezed == imageType
          ? _self.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrition: freezed == nutrition
          ? _self.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionsModel?,
    ));
  }

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutritionsModelCopyWith<$Res>? get nutrition {
    if (_self.nutrition == null) {
      return null;
    }

    return $NutritionsModelCopyWith<$Res>(_self.nutrition!, (value) {
      return _then(_self.copyWith(nutrition: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MealModel].
extension MealModelPatterns on MealModel {
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
    TResult Function(_Meal value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Meal() when $default != null:
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
    TResult Function(_Meal value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Meal():
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
    TResult? Function(_Meal value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Meal() when $default != null:
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
    TResult Function(int id, String? title, String? image, String? imageType,
            NutritionsModel? nutrition)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Meal() when $default != null:
        return $default(_that.id, _that.title, _that.image, _that.imageType,
            _that.nutrition);
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
    TResult Function(int id, String? title, String? image, String? imageType,
            NutritionsModel? nutrition)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Meal():
        return $default(_that.id, _that.title, _that.image, _that.imageType,
            _that.nutrition);
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
    TResult? Function(int id, String? title, String? image, String? imageType,
            NutritionsModel? nutrition)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Meal() when $default != null:
        return $default(_that.id, _that.title, _that.image, _that.imageType,
            _that.nutrition);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Meal implements MealModel {
  const _Meal(
      {required this.id,
      required this.title,
      required this.image,
      required this.imageType,
      required this.nutrition});
  factory _Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final String? imageType;
  @override
  final NutritionsModel? nutrition;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealCopyWith<_Meal> get copyWith =>
      __$MealCopyWithImpl<_Meal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Meal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, imageType, nutrition);

  @override
  String toString() {
    return 'MealModel(id: $id, title: $title, image: $image, imageType: $imageType, nutrition: $nutrition)';
  }
}

/// @nodoc
abstract mixin class _$MealCopyWith<$Res> implements $MealModelCopyWith<$Res> {
  factory _$MealCopyWith(_Meal value, $Res Function(_Meal) _then) =
      __$MealCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? image,
      String? imageType,
      NutritionsModel? nutrition});

  @override
  $NutritionsModelCopyWith<$Res>? get nutrition;
}

/// @nodoc
class __$MealCopyWithImpl<$Res> implements _$MealCopyWith<$Res> {
  __$MealCopyWithImpl(this._self, this._then);

  final _Meal _self;
  final $Res Function(_Meal) _then;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? image = freezed,
    Object? imageType = freezed,
    Object? nutrition = freezed,
  }) {
    return _then(_Meal(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: freezed == imageType
          ? _self.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrition: freezed == nutrition
          ? _self.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionsModel?,
    ));
  }

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutritionsModelCopyWith<$Res>? get nutrition {
    if (_self.nutrition == null) {
      return null;
    }

    return $NutritionsModelCopyWith<$Res>(_self.nutrition!, (value) {
      return _then(_self.copyWith(nutrition: value));
    });
  }
}

// dart format on
