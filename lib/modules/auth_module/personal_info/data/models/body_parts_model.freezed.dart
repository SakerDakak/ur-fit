// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'body_parts_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BodyPartsModel _$BodyPartsModelFromJson(Map<String, dynamic> json) {
  return _BodyPartsModel.fromJson(json);
}

/// @nodoc
mixin _$BodyPartsModel {
  String get key => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this BodyPartsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyPartsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyPartsModelCopyWith<BodyPartsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyPartsModelCopyWith<$Res> {
  factory $BodyPartsModelCopyWith(
          BodyPartsModel value, $Res Function(BodyPartsModel) then) =
      _$BodyPartsModelCopyWithImpl<$Res, BodyPartsModel>;
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class _$BodyPartsModelCopyWithImpl<$Res, $Val extends BodyPartsModel>
    implements $BodyPartsModelCopyWith<$Res> {
  _$BodyPartsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyPartsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyPartsModelImplCopyWith<$Res>
    implements $BodyPartsModelCopyWith<$Res> {
  factory _$$BodyPartsModelImplCopyWith(_$BodyPartsModelImpl value,
          $Res Function(_$BodyPartsModelImpl) then) =
      __$$BodyPartsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key, String value});
}

/// @nodoc
class __$$BodyPartsModelImplCopyWithImpl<$Res>
    extends _$BodyPartsModelCopyWithImpl<$Res, _$BodyPartsModelImpl>
    implements _$$BodyPartsModelImplCopyWith<$Res> {
  __$$BodyPartsModelImplCopyWithImpl(
      _$BodyPartsModelImpl _value, $Res Function(_$BodyPartsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyPartsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
    Object? value = null,
  }) {
    return _then(_$BodyPartsModelImpl(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyPartsModelImpl implements _BodyPartsModel {
  const _$BodyPartsModelImpl({required this.key, required this.value});

  factory _$BodyPartsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyPartsModelImplFromJson(json);

  @override
  final String key;
  @override
  final String value;

  @override
  String toString() {
    return 'BodyPartsModel(key: $key, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BodyPartsModelImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, value);

  /// Create a copy of BodyPartsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyPartsModelImplCopyWith<_$BodyPartsModelImpl> get copyWith =>
      __$$BodyPartsModelImplCopyWithImpl<_$BodyPartsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyPartsModelImplToJson(
      this,
    );
  }
}

abstract class _BodyPartsModel implements BodyPartsModel {
  const factory _BodyPartsModel(
      {required final String key,
      required final String value}) = _$BodyPartsModelImpl;

  factory _BodyPartsModel.fromJson(Map<String, dynamic> json) =
      _$BodyPartsModelImpl.fromJson;

  @override
  String get key;
  @override
  String get value;

  /// Create a copy of BodyPartsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyPartsModelImplCopyWith<_$BodyPartsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
