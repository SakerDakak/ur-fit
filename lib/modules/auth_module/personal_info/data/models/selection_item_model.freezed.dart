// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selection_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectionItemModel _$SelectionItemModelFromJson(Map<String, dynamic> json) {
  return _SelectionItemModel.fromJson(json);
}

/// @nodoc
mixin _$SelectionItemModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this SelectionItemModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SelectionItemModelCopyWith<SelectionItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectionItemModelCopyWith<$Res> {
  factory $SelectionItemModelCopyWith(
          SelectionItemModel value, $Res Function(SelectionItemModel) then) =
      _$SelectionItemModelCopyWithImpl<$Res, SelectionItemModel>;
  @useResult
  $Res call({int id, String name, String? image});
}

/// @nodoc
class _$SelectionItemModelCopyWithImpl<$Res, $Val extends SelectionItemModel>
    implements $SelectionItemModelCopyWith<$Res> {
  _$SelectionItemModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectionItemModelImplCopyWith<$Res>
    implements $SelectionItemModelCopyWith<$Res> {
  factory _$$SelectionItemModelImplCopyWith(_$SelectionItemModelImpl value,
          $Res Function(_$SelectionItemModelImpl) then) =
      __$$SelectionItemModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? image});
}

/// @nodoc
class __$$SelectionItemModelImplCopyWithImpl<$Res>
    extends _$SelectionItemModelCopyWithImpl<$Res, _$SelectionItemModelImpl>
    implements _$$SelectionItemModelImplCopyWith<$Res> {
  __$$SelectionItemModelImplCopyWithImpl(_$SelectionItemModelImpl _value,
      $Res Function(_$SelectionItemModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_$SelectionItemModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectionItemModelImpl implements _SelectionItemModel {
  const _$SelectionItemModelImpl(
      {required this.id, required this.name, required this.image});

  factory _$SelectionItemModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectionItemModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? image;

  @override
  String toString() {
    return 'SelectionItemModel(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectionItemModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  /// Create a copy of SelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectionItemModelImplCopyWith<_$SelectionItemModelImpl> get copyWith =>
      __$$SelectionItemModelImplCopyWithImpl<_$SelectionItemModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectionItemModelImplToJson(
      this,
    );
  }
}

abstract class _SelectionItemModel implements SelectionItemModel {
  const factory _SelectionItemModel(
      {required final int id,
      required final String name,
      required final String? image}) = _$SelectionItemModelImpl;

  factory _SelectionItemModel.fromJson(Map<String, dynamic> json) =
      _$SelectionItemModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get image;

  /// Create a copy of SelectionItemModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectionItemModelImplCopyWith<_$SelectionItemModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
