// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
SearchRecipeModel _$SearchRecipeModelFromJson(Map<String, dynamic> json) {
  return _SearchRecipe.fromJson(json);
}

/// @nodoc
mixin _$SearchRecipeModel {
  String? get query;
  String? get type;
  num? get maxReadyTime;
  List<String>? get includeIngredients;
  num? get minCalories;
  num? get maxCalories;
  int? get number;

  /// Create a copy of SearchRecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SearchRecipeModelCopyWith<SearchRecipeModel> get copyWith =>
      _$SearchRecipeModelCopyWithImpl<SearchRecipeModel>(
          this as SearchRecipeModel, _$identity);

  /// Serializes this SearchRecipeModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchRecipeModel &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.maxReadyTime, maxReadyTime) ||
                other.maxReadyTime == maxReadyTime) &&
            const DeepCollectionEquality()
                .equals(other.includeIngredients, includeIngredients) &&
            (identical(other.minCalories, minCalories) ||
                other.minCalories == minCalories) &&
            (identical(other.maxCalories, maxCalories) ||
                other.maxCalories == maxCalories) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      type,
      maxReadyTime,
      const DeepCollectionEquality().hash(includeIngredients),
      minCalories,
      maxCalories,
      number);

  @override
  String toString() {
    return 'SearchRecipeModel(query: $query, type: $type, maxReadyTime: $maxReadyTime, includeIngredients: $includeIngredients, minCalories: $minCalories, maxCalories: $maxCalories, number: $number)';
  }
}

/// @nodoc
abstract mixin class $SearchRecipeModelCopyWith<$Res> {
  factory $SearchRecipeModelCopyWith(
          SearchRecipeModel value, $Res Function(SearchRecipeModel) _then) =
      _$SearchRecipeModelCopyWithImpl;
  @useResult
  $Res call(
      {String? query,
      String? type,
      num? maxReadyTime,
      List<String>? includeIngredients,
      num? minCalories,
      num? maxCalories,
      int? number});
}

/// @nodoc
class _$SearchRecipeModelCopyWithImpl<$Res>
    implements $SearchRecipeModelCopyWith<$Res> {
  _$SearchRecipeModelCopyWithImpl(this._self, this._then);

  final SearchRecipeModel _self;
  final $Res Function(SearchRecipeModel) _then;

  /// Create a copy of SearchRecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = freezed,
    Object? type = freezed,
    Object? maxReadyTime = freezed,
    Object? includeIngredients = freezed,
    Object? minCalories = freezed,
    Object? maxCalories = freezed,
    Object? number = freezed,
  }) {
    return _then(_self.copyWith(
      query: freezed == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      maxReadyTime: freezed == maxReadyTime
          ? _self.maxReadyTime
          : maxReadyTime // ignore: cast_nullable_to_non_nullable
              as num?,
      includeIngredients: freezed == includeIngredients
          ? _self.includeIngredients
          : includeIngredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      minCalories: freezed == minCalories
          ? _self.minCalories
          : minCalories // ignore: cast_nullable_to_non_nullable
              as num?,
      maxCalories: freezed == maxCalories
          ? _self.maxCalories
          : maxCalories // ignore: cast_nullable_to_non_nullable
              as num?,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SearchRecipeModel].
extension SearchRecipeModelPatterns on SearchRecipeModel {
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
    TResult Function(_SearchRecipe value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchRecipe() when $default != null:
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
    TResult Function(_SearchRecipe value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchRecipe():
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
    TResult? Function(_SearchRecipe value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchRecipe() when $default != null:
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
    TResult Function(
            String? query,
            String? type,
            num? maxReadyTime,
            List<String>? includeIngredients,
            num? minCalories,
            num? maxCalories,
            int? number)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SearchRecipe() when $default != null:
        return $default(
            _that.query,
            _that.type,
            _that.maxReadyTime,
            _that.includeIngredients,
            _that.minCalories,
            _that.maxCalories,
            _that.number);
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
    TResult Function(
            String? query,
            String? type,
            num? maxReadyTime,
            List<String>? includeIngredients,
            num? minCalories,
            num? maxCalories,
            int? number)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchRecipe():
        return $default(
            _that.query,
            _that.type,
            _that.maxReadyTime,
            _that.includeIngredients,
            _that.minCalories,
            _that.maxCalories,
            _that.number);
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
    TResult? Function(
            String? query,
            String? type,
            num? maxReadyTime,
            List<String>? includeIngredients,
            num? minCalories,
            num? maxCalories,
            int? number)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SearchRecipe() when $default != null:
        return $default(
            _that.query,
            _that.type,
            _that.maxReadyTime,
            _that.includeIngredients,
            _that.minCalories,
            _that.maxCalories,
            _that.number);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SearchRecipe implements SearchRecipeModel {
  const _SearchRecipe(
      {this.query,
      this.type,
      this.maxReadyTime,
      final List<String>? includeIngredients,
      this.minCalories,
      this.maxCalories,
      this.number})
      : _includeIngredients = includeIngredients;
  factory _SearchRecipe.fromJson(Map<String, dynamic> json) =>
      _$SearchRecipeFromJson(json);

  @override
  final String? query;
  @override
  final String? type;
  @override
  final num? maxReadyTime;
  final List<String>? _includeIngredients;
  @override
  List<String>? get includeIngredients {
    final value = _includeIngredients;
    if (value == null) return null;
    if (_includeIngredients is EqualUnmodifiableListView)
      return _includeIngredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final num? minCalories;
  @override
  final num? maxCalories;
  @override
  final int? number;

  /// Create a copy of SearchRecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SearchRecipeCopyWith<_SearchRecipe> get copyWith =>
      __$SearchRecipeCopyWithImpl<_SearchRecipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SearchRecipeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchRecipe &&
            (identical(other.query, query) || other.query == query) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.maxReadyTime, maxReadyTime) ||
                other.maxReadyTime == maxReadyTime) &&
            const DeepCollectionEquality()
                .equals(other._includeIngredients, _includeIngredients) &&
            (identical(other.minCalories, minCalories) ||
                other.minCalories == minCalories) &&
            (identical(other.maxCalories, maxCalories) ||
                other.maxCalories == maxCalories) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      query,
      type,
      maxReadyTime,
      const DeepCollectionEquality().hash(_includeIngredients),
      minCalories,
      maxCalories,
      number);

  @override
  String toString() {
    return 'SearchRecipeModel(query: $query, type: $type, maxReadyTime: $maxReadyTime, includeIngredients: $includeIngredients, minCalories: $minCalories, maxCalories: $maxCalories, number: $number)';
  }
}

/// @nodoc
abstract mixin class _$SearchRecipeCopyWith<$Res>
    implements $SearchRecipeModelCopyWith<$Res> {
  factory _$SearchRecipeCopyWith(
          _SearchRecipe value, $Res Function(_SearchRecipe) _then) =
      __$SearchRecipeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? query,
      String? type,
      num? maxReadyTime,
      List<String>? includeIngredients,
      num? minCalories,
      num? maxCalories,
      int? number});
}

/// @nodoc
class __$SearchRecipeCopyWithImpl<$Res>
    implements _$SearchRecipeCopyWith<$Res> {
  __$SearchRecipeCopyWithImpl(this._self, this._then);

  final _SearchRecipe _self;
  final $Res Function(_SearchRecipe) _then;

  /// Create a copy of SearchRecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? query = freezed,
    Object? type = freezed,
    Object? maxReadyTime = freezed,
    Object? includeIngredients = freezed,
    Object? minCalories = freezed,
    Object? maxCalories = freezed,
    Object? number = freezed,
  }) {
    return _then(_SearchRecipe(
      query: freezed == query
          ? _self.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      maxReadyTime: freezed == maxReadyTime
          ? _self.maxReadyTime
          : maxReadyTime // ignore: cast_nullable_to_non_nullable
              as num?,
      includeIngredients: freezed == includeIngredients
          ? _self._includeIngredients
          : includeIngredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      minCalories: freezed == minCalories
          ? _self.minCalories
          : minCalories // ignore: cast_nullable_to_non_nullable
              as num?,
      maxCalories: freezed == maxCalories
          ? _self.maxCalories
          : maxCalories // ignore: cast_nullable_to_non_nullable
              as num?,
      number: freezed == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
