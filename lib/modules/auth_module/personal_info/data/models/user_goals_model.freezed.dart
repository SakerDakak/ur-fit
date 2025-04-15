// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_goals_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserGoalsModel _$UserGoalsModelFromJson(Map<String, dynamic> json) {
  return _GoalsSectionOneModel.fromJson(json);
}

/// @nodoc
mixin _$UserGoalsModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  GoalsSectionTwoEnum? get sectionTwoType => throw _privateConstructorUsedError;
  GoalsSectionOneEnum? get sectionOneType => throw _privateConstructorUsedError;

  /// Serializes this UserGoalsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserGoalsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserGoalsModelCopyWith<UserGoalsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGoalsModelCopyWith<$Res> {
  factory $UserGoalsModelCopyWith(
          UserGoalsModel value, $Res Function(UserGoalsModel) then) =
      _$UserGoalsModelCopyWithImpl<$Res, UserGoalsModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String imageUrl,
      GoalsSectionTwoEnum? sectionTwoType,
      GoalsSectionOneEnum? sectionOneType});
}

/// @nodoc
class _$UserGoalsModelCopyWithImpl<$Res, $Val extends UserGoalsModel>
    implements $UserGoalsModelCopyWith<$Res> {
  _$UserGoalsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserGoalsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? sectionTwoType = freezed,
    Object? sectionOneType = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sectionTwoType: freezed == sectionTwoType
          ? _value.sectionTwoType
          : sectionTwoType // ignore: cast_nullable_to_non_nullable
              as GoalsSectionTwoEnum?,
      sectionOneType: freezed == sectionOneType
          ? _value.sectionOneType
          : sectionOneType // ignore: cast_nullable_to_non_nullable
              as GoalsSectionOneEnum?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GoalsSectionOneModelImplCopyWith<$Res>
    implements $UserGoalsModelCopyWith<$Res> {
  factory _$$GoalsSectionOneModelImplCopyWith(_$GoalsSectionOneModelImpl value,
          $Res Function(_$GoalsSectionOneModelImpl) then) =
      __$$GoalsSectionOneModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String imageUrl,
      GoalsSectionTwoEnum? sectionTwoType,
      GoalsSectionOneEnum? sectionOneType});
}

/// @nodoc
class __$$GoalsSectionOneModelImplCopyWithImpl<$Res>
    extends _$UserGoalsModelCopyWithImpl<$Res, _$GoalsSectionOneModelImpl>
    implements _$$GoalsSectionOneModelImplCopyWith<$Res> {
  __$$GoalsSectionOneModelImplCopyWithImpl(_$GoalsSectionOneModelImpl _value,
      $Res Function(_$GoalsSectionOneModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserGoalsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? sectionTwoType = freezed,
    Object? sectionOneType = freezed,
  }) {
    return _then(_$GoalsSectionOneModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sectionTwoType: freezed == sectionTwoType
          ? _value.sectionTwoType
          : sectionTwoType // ignore: cast_nullable_to_non_nullable
              as GoalsSectionTwoEnum?,
      sectionOneType: freezed == sectionOneType
          ? _value.sectionOneType
          : sectionOneType // ignore: cast_nullable_to_non_nullable
              as GoalsSectionOneEnum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GoalsSectionOneModelImpl implements _GoalsSectionOneModel {
  const _$GoalsSectionOneModelImpl(
      {required this.id,
      required this.name,
      required this.imageUrl,
      this.sectionTwoType,
      this.sectionOneType});

  factory _$GoalsSectionOneModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoalsSectionOneModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final GoalsSectionTwoEnum? sectionTwoType;
  @override
  final GoalsSectionOneEnum? sectionOneType;

  @override
  String toString() {
    return 'UserGoalsModel(id: $id, name: $name, imageUrl: $imageUrl, sectionTwoType: $sectionTwoType, sectionOneType: $sectionOneType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoalsSectionOneModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.sectionTwoType, sectionTwoType) ||
                other.sectionTwoType == sectionTwoType) &&
            (identical(other.sectionOneType, sectionOneType) ||
                other.sectionOneType == sectionOneType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, imageUrl, sectionTwoType, sectionOneType);

  /// Create a copy of UserGoalsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoalsSectionOneModelImplCopyWith<_$GoalsSectionOneModelImpl>
      get copyWith =>
          __$$GoalsSectionOneModelImplCopyWithImpl<_$GoalsSectionOneModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoalsSectionOneModelImplToJson(
      this,
    );
  }
}

abstract class _GoalsSectionOneModel implements UserGoalsModel {
  const factory _GoalsSectionOneModel(
      {required final int id,
      required final String name,
      required final String imageUrl,
      final GoalsSectionTwoEnum? sectionTwoType,
      final GoalsSectionOneEnum? sectionOneType}) = _$GoalsSectionOneModelImpl;

  factory _GoalsSectionOneModel.fromJson(Map<String, dynamic> json) =
      _$GoalsSectionOneModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get imageUrl;
  @override
  GoalsSectionTwoEnum? get sectionTwoType;
  @override
  GoalsSectionOneEnum? get sectionOneType;

  /// Create a copy of UserGoalsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoalsSectionOneModelImplCopyWith<_$GoalsSectionOneModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
