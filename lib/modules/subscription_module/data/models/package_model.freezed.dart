// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageModel _$PackageModelFromJson(Map<String, dynamic> json) {
  return _Package.fromJson(json);
}

/// @nodoc
mixin _$PackageModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  PlanType get type => throw _privateConstructorUsedError;
  int get is_active => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this PackageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageModelCopyWith<PackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageModelCopyWith<$Res> {
  factory $PackageModelCopyWith(
          PackageModel value, $Res Function(PackageModel) then) =
      _$PackageModelCopyWithImpl<$Res, PackageModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int duration,
      String price,
      PlanType type,
      int is_active,
      String? image});
}

/// @nodoc
class _$PackageModelCopyWithImpl<$Res, $Val extends PackageModel>
    implements $PackageModelCopyWith<$Res> {
  _$PackageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? duration = null,
    Object? price = null,
    Object? type = null,
    Object? is_active = null,
    Object? image = freezed,
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
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlanType,
      is_active: null == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageImplCopyWith<$Res>
    implements $PackageModelCopyWith<$Res> {
  factory _$$PackageImplCopyWith(
          _$PackageImpl value, $Res Function(_$PackageImpl) then) =
      __$$PackageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int duration,
      String price,
      PlanType type,
      int is_active,
      String? image});
}

/// @nodoc
class __$$PackageImplCopyWithImpl<$Res>
    extends _$PackageModelCopyWithImpl<$Res, _$PackageImpl>
    implements _$$PackageImplCopyWith<$Res> {
  __$$PackageImplCopyWithImpl(
      _$PackageImpl _value, $Res Function(_$PackageImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? duration = null,
    Object? price = null,
    Object? type = null,
    Object? is_active = null,
    Object? image = freezed,
  }) {
    return _then(_$PackageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PlanType,
      is_active: null == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as int,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageImpl implements _Package {
  const _$PackageImpl(
      {required this.id,
      required this.name,
      required this.duration,
      required this.price,
      required this.type,
      required this.is_active,
      required this.image});

  factory _$PackageImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int duration;
  @override
  final String price;
  @override
  final PlanType type;
  @override
  final int is_active;
  @override
  final String? image;

  @override
  String toString() {
    return 'PackageModel(id: $id, name: $name, duration: $duration, price: $price, type: $type, is_active: $is_active, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.is_active, is_active) ||
                other.is_active == is_active) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, duration, price, type, is_active, image);

  /// Create a copy of PackageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageImplCopyWith<_$PackageImpl> get copyWith =>
      __$$PackageImplCopyWithImpl<_$PackageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageImplToJson(
      this,
    );
  }
}

abstract class _Package implements PackageModel {
  const factory _Package(
      {required final int id,
      required final String name,
      required final int duration,
      required final String price,
      required final PlanType type,
      required final int is_active,
      required final String? image}) = _$PackageImpl;

  factory _Package.fromJson(Map<String, dynamic> json) = _$PackageImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get duration;
  @override
  String get price;
  @override
  PlanType get type;
  @override
  int get is_active;
  @override
  String? get image;

  /// Create a copy of PackageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageImplCopyWith<_$PackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
