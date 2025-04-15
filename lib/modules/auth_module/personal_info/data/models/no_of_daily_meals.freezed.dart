// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'no_of_daily_meals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoOfDailyMealsModel _$NoOfDailyMealsModelFromJson(Map<String, dynamic> json) {
  return _NoOfDailyMealsModel.fromJson(json);
}

/// @nodoc
mixin _$NoOfDailyMealsModel {
  String get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;

  /// Serializes this NoOfDailyMealsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoOfDailyMealsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoOfDailyMealsModelCopyWith<NoOfDailyMealsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoOfDailyMealsModelCopyWith<$Res> {
  factory $NoOfDailyMealsModelCopyWith(
          NoOfDailyMealsModel value, $Res Function(NoOfDailyMealsModel) then) =
      _$NoOfDailyMealsModelCopyWithImpl<$Res, NoOfDailyMealsModel>;
  @useResult
  $Res call({String value, String label});
}

/// @nodoc
class _$NoOfDailyMealsModelCopyWithImpl<$Res, $Val extends NoOfDailyMealsModel>
    implements $NoOfDailyMealsModelCopyWith<$Res> {
  _$NoOfDailyMealsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoOfDailyMealsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoOfDailyMealsModelImplCopyWith<$Res>
    implements $NoOfDailyMealsModelCopyWith<$Res> {
  factory _$$NoOfDailyMealsModelImplCopyWith(_$NoOfDailyMealsModelImpl value,
          $Res Function(_$NoOfDailyMealsModelImpl) then) =
      __$$NoOfDailyMealsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String label});
}

/// @nodoc
class __$$NoOfDailyMealsModelImplCopyWithImpl<$Res>
    extends _$NoOfDailyMealsModelCopyWithImpl<$Res, _$NoOfDailyMealsModelImpl>
    implements _$$NoOfDailyMealsModelImplCopyWith<$Res> {
  __$$NoOfDailyMealsModelImplCopyWithImpl(_$NoOfDailyMealsModelImpl _value,
      $Res Function(_$NoOfDailyMealsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoOfDailyMealsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
  }) {
    return _then(_$NoOfDailyMealsModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoOfDailyMealsModelImpl implements _NoOfDailyMealsModel {
  const _$NoOfDailyMealsModelImpl({required this.value, required this.label});

  factory _$NoOfDailyMealsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoOfDailyMealsModelImplFromJson(json);

  @override
  final String value;
  @override
  final String label;

  @override
  String toString() {
    return 'NoOfDailyMealsModel(value: $value, label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoOfDailyMealsModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, label);

  /// Create a copy of NoOfDailyMealsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoOfDailyMealsModelImplCopyWith<_$NoOfDailyMealsModelImpl> get copyWith =>
      __$$NoOfDailyMealsModelImplCopyWithImpl<_$NoOfDailyMealsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoOfDailyMealsModelImplToJson(
      this,
    );
  }
}

abstract class _NoOfDailyMealsModel implements NoOfDailyMealsModel {
  const factory _NoOfDailyMealsModel(
      {required final String value,
      required final String label}) = _$NoOfDailyMealsModelImpl;

  factory _NoOfDailyMealsModel.fromJson(Map<String, dynamic> json) =
      _$NoOfDailyMealsModelImpl.fromJson;

  @override
  String get value;
  @override
  String get label;

  /// Create a copy of NoOfDailyMealsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoOfDailyMealsModelImplCopyWith<_$NoOfDailyMealsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
