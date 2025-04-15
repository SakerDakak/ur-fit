// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_recipe_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SearchRecipeModel _$SearchRecipeModelFromJson(Map<String, dynamic> json) {
  return _SearchRecipe.fromJson(json);
}

/// @nodoc
mixin _$SearchRecipeModel {
  String? get query => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  num? get maxReadyTime => throw _privateConstructorUsedError;
  List<String>? get includeIngredients => throw _privateConstructorUsedError;
  num? get minCalories => throw _privateConstructorUsedError;
  num? get maxCalories => throw _privateConstructorUsedError;
  int? get number => throw _privateConstructorUsedError;

  /// Serializes this SearchRecipeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchRecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchRecipeModelCopyWith<SearchRecipeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchRecipeModelCopyWith<$Res> {
  factory $SearchRecipeModelCopyWith(
          SearchRecipeModel value, $Res Function(SearchRecipeModel) then) =
      _$SearchRecipeModelCopyWithImpl<$Res, SearchRecipeModel>;
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
class _$SearchRecipeModelCopyWithImpl<$Res, $Val extends SearchRecipeModel>
    implements $SearchRecipeModelCopyWith<$Res> {
  _$SearchRecipeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      maxReadyTime: freezed == maxReadyTime
          ? _value.maxReadyTime
          : maxReadyTime // ignore: cast_nullable_to_non_nullable
              as num?,
      includeIngredients: freezed == includeIngredients
          ? _value.includeIngredients
          : includeIngredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      minCalories: freezed == minCalories
          ? _value.minCalories
          : minCalories // ignore: cast_nullable_to_non_nullable
              as num?,
      maxCalories: freezed == maxCalories
          ? _value.maxCalories
          : maxCalories // ignore: cast_nullable_to_non_nullable
              as num?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchRecipeImplCopyWith<$Res>
    implements $SearchRecipeModelCopyWith<$Res> {
  factory _$$SearchRecipeImplCopyWith(
          _$SearchRecipeImpl value, $Res Function(_$SearchRecipeImpl) then) =
      __$$SearchRecipeImplCopyWithImpl<$Res>;
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
class __$$SearchRecipeImplCopyWithImpl<$Res>
    extends _$SearchRecipeModelCopyWithImpl<$Res, _$SearchRecipeImpl>
    implements _$$SearchRecipeImplCopyWith<$Res> {
  __$$SearchRecipeImplCopyWithImpl(
      _$SearchRecipeImpl _value, $Res Function(_$SearchRecipeImpl) _then)
      : super(_value, _then);

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
    return _then(_$SearchRecipeImpl(
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      maxReadyTime: freezed == maxReadyTime
          ? _value.maxReadyTime
          : maxReadyTime // ignore: cast_nullable_to_non_nullable
              as num?,
      includeIngredients: freezed == includeIngredients
          ? _value._includeIngredients
          : includeIngredients // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      minCalories: freezed == minCalories
          ? _value.minCalories
          : minCalories // ignore: cast_nullable_to_non_nullable
              as num?,
      maxCalories: freezed == maxCalories
          ? _value.maxCalories
          : maxCalories // ignore: cast_nullable_to_non_nullable
              as num?,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SearchRecipeImpl implements _SearchRecipe {
  const _$SearchRecipeImpl(
      {this.query,
      this.type,
      this.maxReadyTime,
      final List<String>? includeIngredients,
      this.minCalories,
      this.maxCalories,
      this.number})
      : _includeIngredients = includeIngredients;

  factory _$SearchRecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchRecipeImplFromJson(json);

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

  @override
  String toString() {
    return 'SearchRecipeModel(query: $query, type: $type, maxReadyTime: $maxReadyTime, includeIngredients: $includeIngredients, minCalories: $minCalories, maxCalories: $maxCalories, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchRecipeImpl &&
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

  /// Create a copy of SearchRecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchRecipeImplCopyWith<_$SearchRecipeImpl> get copyWith =>
      __$$SearchRecipeImplCopyWithImpl<_$SearchRecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchRecipeImplToJson(
      this,
    );
  }
}

abstract class _SearchRecipe implements SearchRecipeModel {
  const factory _SearchRecipe(
      {final String? query,
      final String? type,
      final num? maxReadyTime,
      final List<String>? includeIngredients,
      final num? minCalories,
      final num? maxCalories,
      final int? number}) = _$SearchRecipeImpl;

  factory _SearchRecipe.fromJson(Map<String, dynamic> json) =
      _$SearchRecipeImpl.fromJson;

  @override
  String? get query;
  @override
  String? get type;
  @override
  num? get maxReadyTime;
  @override
  List<String>? get includeIngredients;
  @override
  num? get minCalories;
  @override
  num? get maxCalories;
  @override
  int? get number;

  /// Create a copy of SearchRecipeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchRecipeImplCopyWith<_$SearchRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
