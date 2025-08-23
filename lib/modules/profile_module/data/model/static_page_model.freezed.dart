// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'static_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StaticPageModel {
  int get id;
  String get title;
  String get content;
  String get key;

  /// Create a copy of StaticPageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StaticPageModelCopyWith<StaticPageModel> get copyWith =>
      _$StaticPageModelCopyWithImpl<StaticPageModel>(
          this as StaticPageModel, _$identity);

  /// Serializes this StaticPageModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StaticPageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, key);

  @override
  String toString() {
    return 'StaticPageModel(id: $id, title: $title, content: $content, key: $key)';
  }
}

/// @nodoc
abstract mixin class $StaticPageModelCopyWith<$Res> {
  factory $StaticPageModelCopyWith(
          StaticPageModel value, $Res Function(StaticPageModel) _then) =
      _$StaticPageModelCopyWithImpl;
  @useResult
  $Res call({int id, String title, String content, String key});
}

/// @nodoc
class _$StaticPageModelCopyWithImpl<$Res>
    implements $StaticPageModelCopyWith<$Res> {
  _$StaticPageModelCopyWithImpl(this._self, this._then);

  final StaticPageModel _self;
  final $Res Function(StaticPageModel) _then;

  /// Create a copy of StaticPageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? key = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [StaticPageModel].
extension StaticPageModelPatterns on StaticPageModel {
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
    TResult Function(_StaticPageModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StaticPageModel() when $default != null:
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
    TResult Function(_StaticPageModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StaticPageModel():
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
    TResult? Function(_StaticPageModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StaticPageModel() when $default != null:
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
    TResult Function(int id, String title, String content, String key)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StaticPageModel() when $default != null:
        return $default(_that.id, _that.title, _that.content, _that.key);
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
    TResult Function(int id, String title, String content, String key) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StaticPageModel():
        return $default(_that.id, _that.title, _that.content, _that.key);
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
    TResult? Function(int id, String title, String content, String key)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StaticPageModel() when $default != null:
        return $default(_that.id, _that.title, _that.content, _that.key);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _StaticPageModel implements StaticPageModel {
  const _StaticPageModel(
      {required this.id,
      required this.title,
      required this.content,
      required this.key});
  factory _StaticPageModel.fromJson(Map<String, dynamic> json) =>
      _$StaticPageModelFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String key;

  /// Create a copy of StaticPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StaticPageModelCopyWith<_StaticPageModel> get copyWith =>
      __$StaticPageModelCopyWithImpl<_StaticPageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StaticPageModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StaticPageModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, content, key);

  @override
  String toString() {
    return 'StaticPageModel(id: $id, title: $title, content: $content, key: $key)';
  }
}

/// @nodoc
abstract mixin class _$StaticPageModelCopyWith<$Res>
    implements $StaticPageModelCopyWith<$Res> {
  factory _$StaticPageModelCopyWith(
          _StaticPageModel value, $Res Function(_StaticPageModel) _then) =
      __$StaticPageModelCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String title, String content, String key});
}

/// @nodoc
class __$StaticPageModelCopyWithImpl<$Res>
    implements _$StaticPageModelCopyWith<$Res> {
  __$StaticPageModelCopyWithImpl(this._self, this._then);

  final _StaticPageModel _self;
  final $Res Function(_StaticPageModel) _then;

  /// Create a copy of StaticPageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? content = null,
    Object? key = null,
  }) {
    return _then(_StaticPageModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _self.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _self.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
