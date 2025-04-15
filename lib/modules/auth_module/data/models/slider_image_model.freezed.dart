// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SliderImageModel _$SliderImageModelFromJson(Map<String, dynamic> json) {
  return _SliderImage.fromJson(json);
}

/// @nodoc
mixin _$SliderImageModel {
  int? get id => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;

  /// Serializes this SliderImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SliderImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SliderImageModelCopyWith<SliderImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderImageModelCopyWith<$Res> {
  factory $SliderImageModelCopyWith(
          SliderImageModel value, $Res Function(SliderImageModel) then) =
      _$SliderImageModelCopyWithImpl<$Res, SliderImageModel>;
  @useResult
  $Res call({int? id, String? image, String? title});
}

/// @nodoc
class _$SliderImageModelCopyWithImpl<$Res, $Val extends SliderImageModel>
    implements $SliderImageModelCopyWith<$Res> {
  _$SliderImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SliderImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SliderImageImplCopyWith<$Res>
    implements $SliderImageModelCopyWith<$Res> {
  factory _$$SliderImageImplCopyWith(
          _$SliderImageImpl value, $Res Function(_$SliderImageImpl) then) =
      __$$SliderImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? image, String? title});
}

/// @nodoc
class __$$SliderImageImplCopyWithImpl<$Res>
    extends _$SliderImageModelCopyWithImpl<$Res, _$SliderImageImpl>
    implements _$$SliderImageImplCopyWith<$Res> {
  __$$SliderImageImplCopyWithImpl(
      _$SliderImageImpl _value, $Res Function(_$SliderImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of SliderImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? image = freezed,
    Object? title = freezed,
  }) {
    return _then(_$SliderImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderImageImpl implements _SliderImage {
  const _$SliderImageImpl(
      {required this.id, required this.image, required this.title});

  factory _$SliderImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderImageImplFromJson(json);

  @override
  final int? id;
  @override
  final String? image;
  @override
  final String? title;

  @override
  String toString() {
    return 'SliderImageModel(id: $id, image: $image, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, title);

  /// Create a copy of SliderImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderImageImplCopyWith<_$SliderImageImpl> get copyWith =>
      __$$SliderImageImplCopyWithImpl<_$SliderImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderImageImplToJson(
      this,
    );
  }
}

abstract class _SliderImage implements SliderImageModel {
  const factory _SliderImage(
      {required final int? id,
      required final String? image,
      required final String? title}) = _$SliderImageImpl;

  factory _SliderImage.fromJson(Map<String, dynamic> json) =
      _$SliderImageImpl.fromJson;

  @override
  int? get id;
  @override
  String? get image;
  @override
  String? get title;

  /// Create a copy of SliderImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderImageImplCopyWith<_$SliderImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
