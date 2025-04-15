// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MealModel _$MealModelFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
mixin _$MealModel {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get imageType => throw _privateConstructorUsedError;
  NutritionsModel? get nutrition => throw _privateConstructorUsedError;

  /// Serializes this MealModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealModelCopyWith<MealModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealModelCopyWith<$Res> {
  factory $MealModelCopyWith(MealModel value, $Res Function(MealModel) then) =
      _$MealModelCopyWithImpl<$Res, MealModel>;
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
class _$MealModelCopyWithImpl<$Res, $Val extends MealModel>
    implements $MealModelCopyWith<$Res> {
  _$MealModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: freezed == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrition: freezed == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionsModel?,
    ) as $Val);
  }

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutritionsModelCopyWith<$Res>? get nutrition {
    if (_value.nutrition == null) {
      return null;
    }

    return $NutritionsModelCopyWith<$Res>(_value.nutrition!, (value) {
      return _then(_value.copyWith(nutrition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MealImplCopyWith<$Res> implements $MealModelCopyWith<$Res> {
  factory _$$MealImplCopyWith(
          _$MealImpl value, $Res Function(_$MealImpl) then) =
      __$$MealImplCopyWithImpl<$Res>;
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
class __$$MealImplCopyWithImpl<$Res>
    extends _$MealModelCopyWithImpl<$Res, _$MealImpl>
    implements _$$MealImplCopyWith<$Res> {
  __$$MealImplCopyWithImpl(_$MealImpl _value, $Res Function(_$MealImpl) _then)
      : super(_value, _then);

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
    return _then(_$MealImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      imageType: freezed == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrition: freezed == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealImpl implements _Meal {
  const _$MealImpl(
      {required this.id,
      required this.title,
      required this.image,
      required this.imageType,
      required this.nutrition});

  factory _$MealImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealImplFromJson(json);

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

  @override
  String toString() {
    return 'MealModel(id: $id, title: $title, image: $image, imageType: $imageType, nutrition: $nutrition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealImpl &&
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

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealImplCopyWith<_$MealImpl> get copyWith =>
      __$$MealImplCopyWithImpl<_$MealImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealImplToJson(
      this,
    );
  }
}

abstract class _Meal implements MealModel {
  const factory _Meal(
      {required final int id,
      required final String? title,
      required final String? image,
      required final String? imageType,
      required final NutritionsModel? nutrition}) = _$MealImpl;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$MealImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  String? get imageType;
  @override
  NutritionsModel? get nutrition;

  /// Create a copy of MealModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealImplCopyWith<_$MealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
