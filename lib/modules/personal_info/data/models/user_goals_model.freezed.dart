// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_goals_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
UserGoalsModel _$UserGoalsModelFromJson(Map<String, dynamic> json) {
  return _GoalsSectionOneModel.fromJson(json);
}

/// @nodoc
mixin _$UserGoalsModel {
  int get id;
  String get name;
  String get imageUrl;
  GoalsSectionTwoEnum? get sectionTwoType;
  GoalsSectionOneEnum? get sectionOneType;

  /// Create a copy of UserGoalsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserGoalsModelCopyWith<UserGoalsModel> get copyWith =>
      _$UserGoalsModelCopyWithImpl<UserGoalsModel>(
          this as UserGoalsModel, _$identity);

  /// Serializes this UserGoalsModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserGoalsModel &&
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

  @override
  String toString() {
    return 'UserGoalsModel(id: $id, name: $name, imageUrl: $imageUrl, sectionTwoType: $sectionTwoType, sectionOneType: $sectionOneType)';
  }
}

/// @nodoc
abstract mixin class $UserGoalsModelCopyWith<$Res> {
  factory $UserGoalsModelCopyWith(
          UserGoalsModel value, $Res Function(UserGoalsModel) _then) =
      _$UserGoalsModelCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String imageUrl,
      GoalsSectionTwoEnum? sectionTwoType,
      GoalsSectionOneEnum? sectionOneType});
}

/// @nodoc
class _$UserGoalsModelCopyWithImpl<$Res>
    implements $UserGoalsModelCopyWith<$Res> {
  _$UserGoalsModelCopyWithImpl(this._self, this._then);

  final UserGoalsModel _self;
  final $Res Function(UserGoalsModel) _then;

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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sectionTwoType: freezed == sectionTwoType
          ? _self.sectionTwoType
          : sectionTwoType // ignore: cast_nullable_to_non_nullable
              as GoalsSectionTwoEnum?,
      sectionOneType: freezed == sectionOneType
          ? _self.sectionOneType
          : sectionOneType // ignore: cast_nullable_to_non_nullable
              as GoalsSectionOneEnum?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserGoalsModel].
extension UserGoalsModelPatterns on UserGoalsModel {
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
    TResult Function(_GoalsSectionOneModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoalsSectionOneModel() when $default != null:
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
    TResult Function(_GoalsSectionOneModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoalsSectionOneModel():
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
    TResult? Function(_GoalsSectionOneModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoalsSectionOneModel() when $default != null:
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
            int id,
            String name,
            String imageUrl,
            GoalsSectionTwoEnum? sectionTwoType,
            GoalsSectionOneEnum? sectionOneType)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GoalsSectionOneModel() when $default != null:
        return $default(_that.id, _that.name, _that.imageUrl,
            _that.sectionTwoType, _that.sectionOneType);
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
            int id,
            String name,
            String imageUrl,
            GoalsSectionTwoEnum? sectionTwoType,
            GoalsSectionOneEnum? sectionOneType)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoalsSectionOneModel():
        return $default(_that.id, _that.name, _that.imageUrl,
            _that.sectionTwoType, _that.sectionOneType);
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
            int id,
            String name,
            String imageUrl,
            GoalsSectionTwoEnum? sectionTwoType,
            GoalsSectionOneEnum? sectionOneType)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GoalsSectionOneModel() when $default != null:
        return $default(_that.id, _that.name, _that.imageUrl,
            _that.sectionTwoType, _that.sectionOneType);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _GoalsSectionOneModel implements UserGoalsModel {
  const _GoalsSectionOneModel(
      {required this.id,
      required this.name,
      required this.imageUrl,
      this.sectionTwoType,
      this.sectionOneType});
  factory _GoalsSectionOneModel.fromJson(Map<String, dynamic> json) =>
      _$GoalsSectionOneModelFromJson(json);

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

  /// Create a copy of UserGoalsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GoalsSectionOneModelCopyWith<_GoalsSectionOneModel> get copyWith =>
      __$GoalsSectionOneModelCopyWithImpl<_GoalsSectionOneModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$GoalsSectionOneModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GoalsSectionOneModel &&
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

  @override
  String toString() {
    return 'UserGoalsModel(id: $id, name: $name, imageUrl: $imageUrl, sectionTwoType: $sectionTwoType, sectionOneType: $sectionOneType)';
  }
}

/// @nodoc
abstract mixin class _$GoalsSectionOneModelCopyWith<$Res>
    implements $UserGoalsModelCopyWith<$Res> {
  factory _$GoalsSectionOneModelCopyWith(_GoalsSectionOneModel value,
          $Res Function(_GoalsSectionOneModel) _then) =
      __$GoalsSectionOneModelCopyWithImpl;
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
class __$GoalsSectionOneModelCopyWithImpl<$Res>
    implements _$GoalsSectionOneModelCopyWith<$Res> {
  __$GoalsSectionOneModelCopyWithImpl(this._self, this._then);

  final _GoalsSectionOneModel _self;
  final $Res Function(_GoalsSectionOneModel) _then;

  /// Create a copy of UserGoalsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? imageUrl = null,
    Object? sectionTwoType = freezed,
    Object? sectionOneType = freezed,
  }) {
    return _then(_GoalsSectionOneModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sectionTwoType: freezed == sectionTwoType
          ? _self.sectionTwoType
          : sectionTwoType // ignore: cast_nullable_to_non_nullable
              as GoalsSectionTwoEnum?,
      sectionOneType: freezed == sectionOneType
          ? _self.sectionOneType
          : sectionOneType // ignore: cast_nullable_to_non_nullable
              as GoalsSectionOneEnum?,
    ));
  }
}

// dart format on
