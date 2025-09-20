// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlanHistoryModel {
  Package? get package;
  SubscriptionData? get subscription_data;
  num? get user_target_weight;
  MealPlans get mealPlans;
  ExercisePlans get exercisePlans;
  ExpectedResultOfExercisePlans? get expectedResultOfExercisePlans;
  ExpectedResultOfMealPlans? get expectedResultOfMealPlans;

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlanHistoryModelCopyWith<PlanHistoryModel> get copyWith =>
      _$PlanHistoryModelCopyWithImpl<PlanHistoryModel>(
          this as PlanHistoryModel, _$identity);

  /// Serializes this PlanHistoryModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlanHistoryModel &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.subscription_data, subscription_data) ||
                other.subscription_data == subscription_data) &&
            (identical(other.user_target_weight, user_target_weight) ||
                other.user_target_weight == user_target_weight) &&
            (identical(other.mealPlans, mealPlans) ||
                other.mealPlans == mealPlans) &&
            (identical(other.exercisePlans, exercisePlans) ||
                other.exercisePlans == exercisePlans) &&
            (identical(other.expectedResultOfExercisePlans,
                    expectedResultOfExercisePlans) ||
                other.expectedResultOfExercisePlans ==
                    expectedResultOfExercisePlans) &&
            (identical(other.expectedResultOfMealPlans,
                    expectedResultOfMealPlans) ||
                other.expectedResultOfMealPlans == expectedResultOfMealPlans));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      package,
      subscription_data,
      user_target_weight,
      mealPlans,
      exercisePlans,
      expectedResultOfExercisePlans,
      expectedResultOfMealPlans);

  @override
  String toString() {
    return 'PlanHistoryModel(package: $package, subscription_data: $subscription_data, user_target_weight: $user_target_weight, mealPlans: $mealPlans, exercisePlans: $exercisePlans, expectedResultOfExercisePlans: $expectedResultOfExercisePlans, expectedResultOfMealPlans: $expectedResultOfMealPlans)';
  }
}

/// @nodoc
abstract mixin class $PlanHistoryModelCopyWith<$Res> {
  factory $PlanHistoryModelCopyWith(
          PlanHistoryModel value, $Res Function(PlanHistoryModel) _then) =
      _$PlanHistoryModelCopyWithImpl;
  @useResult
  $Res call(
      {Package? package,
      SubscriptionData? subscription_data,
      num? user_target_weight,
      MealPlans mealPlans,
      ExercisePlans exercisePlans,
      ExpectedResultOfExercisePlans? expectedResultOfExercisePlans,
      ExpectedResultOfMealPlans? expectedResultOfMealPlans});

  $PackageCopyWith<$Res>? get package;
  $SubscriptionDataCopyWith<$Res>? get subscription_data;
  $MealPlansCopyWith<$Res> get mealPlans;
  $ExercisePlansCopyWith<$Res> get exercisePlans;
  $ExpectedResultOfExercisePlansCopyWith<$Res>?
      get expectedResultOfExercisePlans;
  $ExpectedResultOfMealPlansCopyWith<$Res>? get expectedResultOfMealPlans;
}

/// @nodoc
class _$PlanHistoryModelCopyWithImpl<$Res>
    implements $PlanHistoryModelCopyWith<$Res> {
  _$PlanHistoryModelCopyWithImpl(this._self, this._then);

  final PlanHistoryModel _self;
  final $Res Function(PlanHistoryModel) _then;

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = freezed,
    Object? subscription_data = freezed,
    Object? user_target_weight = freezed,
    Object? mealPlans = null,
    Object? exercisePlans = null,
    Object? expectedResultOfExercisePlans = freezed,
    Object? expectedResultOfMealPlans = freezed,
  }) {
    return _then(_self.copyWith(
      package: freezed == package
          ? _self.package
          : package // ignore: cast_nullable_to_non_nullable
              as Package?,
      subscription_data: freezed == subscription_data
          ? _self.subscription_data
          : subscription_data // ignore: cast_nullable_to_non_nullable
              as SubscriptionData?,
      user_target_weight: freezed == user_target_weight
          ? _self.user_target_weight
          : user_target_weight // ignore: cast_nullable_to_non_nullable
              as num?,
      mealPlans: null == mealPlans
          ? _self.mealPlans
          : mealPlans // ignore: cast_nullable_to_non_nullable
              as MealPlans,
      exercisePlans: null == exercisePlans
          ? _self.exercisePlans
          : exercisePlans // ignore: cast_nullable_to_non_nullable
              as ExercisePlans,
      expectedResultOfExercisePlans: freezed == expectedResultOfExercisePlans
          ? _self.expectedResultOfExercisePlans
          : expectedResultOfExercisePlans // ignore: cast_nullable_to_non_nullable
              as ExpectedResultOfExercisePlans?,
      expectedResultOfMealPlans: freezed == expectedResultOfMealPlans
          ? _self.expectedResultOfMealPlans
          : expectedResultOfMealPlans // ignore: cast_nullable_to_non_nullable
              as ExpectedResultOfMealPlans?,
    ));
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageCopyWith<$Res>? get package {
    if (_self.package == null) {
      return null;
    }

    return $PackageCopyWith<$Res>(_self.package!, (value) {
      return _then(_self.copyWith(package: value));
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionDataCopyWith<$Res>? get subscription_data {
    if (_self.subscription_data == null) {
      return null;
    }

    return $SubscriptionDataCopyWith<$Res>(_self.subscription_data!, (value) {
      return _then(_self.copyWith(subscription_data: value));
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MealPlansCopyWith<$Res> get mealPlans {
    return $MealPlansCopyWith<$Res>(_self.mealPlans, (value) {
      return _then(_self.copyWith(mealPlans: value));
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExercisePlansCopyWith<$Res> get exercisePlans {
    return $ExercisePlansCopyWith<$Res>(_self.exercisePlans, (value) {
      return _then(_self.copyWith(exercisePlans: value));
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpectedResultOfExercisePlansCopyWith<$Res>?
      get expectedResultOfExercisePlans {
    if (_self.expectedResultOfExercisePlans == null) {
      return null;
    }

    return $ExpectedResultOfExercisePlansCopyWith<$Res>(
        _self.expectedResultOfExercisePlans!, (value) {
      return _then(_self.copyWith(expectedResultOfExercisePlans: value));
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpectedResultOfMealPlansCopyWith<$Res>? get expectedResultOfMealPlans {
    if (_self.expectedResultOfMealPlans == null) {
      return null;
    }

    return $ExpectedResultOfMealPlansCopyWith<$Res>(
        _self.expectedResultOfMealPlans!, (value) {
      return _then(_self.copyWith(expectedResultOfMealPlans: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PlanHistoryModel].
extension PlanHistoryModelPatterns on PlanHistoryModel {
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
    TResult Function(_PlanHistoryModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PlanHistoryModel() when $default != null:
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
    TResult Function(_PlanHistoryModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlanHistoryModel():
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
    TResult? Function(_PlanHistoryModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlanHistoryModel() when $default != null:
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
            Package? package,
            SubscriptionData? subscription_data,
            num? user_target_weight,
            MealPlans mealPlans,
            ExercisePlans exercisePlans,
            ExpectedResultOfExercisePlans? expectedResultOfExercisePlans,
            ExpectedResultOfMealPlans? expectedResultOfMealPlans)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PlanHistoryModel() when $default != null:
        return $default(
            _that.package,
            _that.subscription_data,
            _that.user_target_weight,
            _that.mealPlans,
            _that.exercisePlans,
            _that.expectedResultOfExercisePlans,
            _that.expectedResultOfMealPlans);
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
            Package? package,
            SubscriptionData? subscription_data,
            num? user_target_weight,
            MealPlans mealPlans,
            ExercisePlans exercisePlans,
            ExpectedResultOfExercisePlans? expectedResultOfExercisePlans,
            ExpectedResultOfMealPlans? expectedResultOfMealPlans)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlanHistoryModel():
        return $default(
            _that.package,
            _that.subscription_data,
            _that.user_target_weight,
            _that.mealPlans,
            _that.exercisePlans,
            _that.expectedResultOfExercisePlans,
            _that.expectedResultOfMealPlans);
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
            Package? package,
            SubscriptionData? subscription_data,
            num? user_target_weight,
            MealPlans mealPlans,
            ExercisePlans exercisePlans,
            ExpectedResultOfExercisePlans? expectedResultOfExercisePlans,
            ExpectedResultOfMealPlans? expectedResultOfMealPlans)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PlanHistoryModel() when $default != null:
        return $default(
            _that.package,
            _that.subscription_data,
            _that.user_target_weight,
            _that.mealPlans,
            _that.exercisePlans,
            _that.expectedResultOfExercisePlans,
            _that.expectedResultOfMealPlans);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _PlanHistoryModel implements PlanHistoryModel {
  const _PlanHistoryModel(
      {required this.package,
      required this.subscription_data,
      required this.user_target_weight,
      required this.mealPlans,
      required this.exercisePlans,
      required this.expectedResultOfExercisePlans,
      required this.expectedResultOfMealPlans});
  factory _PlanHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$PlanHistoryModelFromJson(json);

  @override
  final Package? package;
  @override
  final SubscriptionData? subscription_data;
  @override
  final num? user_target_weight;
  @override
  final MealPlans mealPlans;
  @override
  final ExercisePlans exercisePlans;
  @override
  final ExpectedResultOfExercisePlans? expectedResultOfExercisePlans;
  @override
  final ExpectedResultOfMealPlans? expectedResultOfMealPlans;

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlanHistoryModelCopyWith<_PlanHistoryModel> get copyWith =>
      __$PlanHistoryModelCopyWithImpl<_PlanHistoryModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlanHistoryModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlanHistoryModel &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.subscription_data, subscription_data) ||
                other.subscription_data == subscription_data) &&
            (identical(other.user_target_weight, user_target_weight) ||
                other.user_target_weight == user_target_weight) &&
            (identical(other.mealPlans, mealPlans) ||
                other.mealPlans == mealPlans) &&
            (identical(other.exercisePlans, exercisePlans) ||
                other.exercisePlans == exercisePlans) &&
            (identical(other.expectedResultOfExercisePlans,
                    expectedResultOfExercisePlans) ||
                other.expectedResultOfExercisePlans ==
                    expectedResultOfExercisePlans) &&
            (identical(other.expectedResultOfMealPlans,
                    expectedResultOfMealPlans) ||
                other.expectedResultOfMealPlans == expectedResultOfMealPlans));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      package,
      subscription_data,
      user_target_weight,
      mealPlans,
      exercisePlans,
      expectedResultOfExercisePlans,
      expectedResultOfMealPlans);

  @override
  String toString() {
    return 'PlanHistoryModel(package: $package, subscription_data: $subscription_data, user_target_weight: $user_target_weight, mealPlans: $mealPlans, exercisePlans: $exercisePlans, expectedResultOfExercisePlans: $expectedResultOfExercisePlans, expectedResultOfMealPlans: $expectedResultOfMealPlans)';
  }
}

/// @nodoc
abstract mixin class _$PlanHistoryModelCopyWith<$Res>
    implements $PlanHistoryModelCopyWith<$Res> {
  factory _$PlanHistoryModelCopyWith(
          _PlanHistoryModel value, $Res Function(_PlanHistoryModel) _then) =
      __$PlanHistoryModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Package? package,
      SubscriptionData? subscription_data,
      num? user_target_weight,
      MealPlans mealPlans,
      ExercisePlans exercisePlans,
      ExpectedResultOfExercisePlans? expectedResultOfExercisePlans,
      ExpectedResultOfMealPlans? expectedResultOfMealPlans});

  @override
  $PackageCopyWith<$Res>? get package;
  @override
  $SubscriptionDataCopyWith<$Res>? get subscription_data;
  @override
  $MealPlansCopyWith<$Res> get mealPlans;
  @override
  $ExercisePlansCopyWith<$Res> get exercisePlans;
  @override
  $ExpectedResultOfExercisePlansCopyWith<$Res>?
      get expectedResultOfExercisePlans;
  @override
  $ExpectedResultOfMealPlansCopyWith<$Res>? get expectedResultOfMealPlans;
}

/// @nodoc
class __$PlanHistoryModelCopyWithImpl<$Res>
    implements _$PlanHistoryModelCopyWith<$Res> {
  __$PlanHistoryModelCopyWithImpl(this._self, this._then);

  final _PlanHistoryModel _self;
  final $Res Function(_PlanHistoryModel) _then;

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? package = freezed,
    Object? subscription_data = freezed,
    Object? user_target_weight = freezed,
    Object? mealPlans = null,
    Object? exercisePlans = null,
    Object? expectedResultOfExercisePlans = freezed,
    Object? expectedResultOfMealPlans = freezed,
  }) {
    return _then(_PlanHistoryModel(
      package: freezed == package
          ? _self.package
          : package // ignore: cast_nullable_to_non_nullable
              as Package?,
      subscription_data: freezed == subscription_data
          ? _self.subscription_data
          : subscription_data // ignore: cast_nullable_to_non_nullable
              as SubscriptionData?,
      user_target_weight: freezed == user_target_weight
          ? _self.user_target_weight
          : user_target_weight // ignore: cast_nullable_to_non_nullable
              as num?,
      mealPlans: null == mealPlans
          ? _self.mealPlans
          : mealPlans // ignore: cast_nullable_to_non_nullable
              as MealPlans,
      exercisePlans: null == exercisePlans
          ? _self.exercisePlans
          : exercisePlans // ignore: cast_nullable_to_non_nullable
              as ExercisePlans,
      expectedResultOfExercisePlans: freezed == expectedResultOfExercisePlans
          ? _self.expectedResultOfExercisePlans
          : expectedResultOfExercisePlans // ignore: cast_nullable_to_non_nullable
              as ExpectedResultOfExercisePlans?,
      expectedResultOfMealPlans: freezed == expectedResultOfMealPlans
          ? _self.expectedResultOfMealPlans
          : expectedResultOfMealPlans // ignore: cast_nullable_to_non_nullable
              as ExpectedResultOfMealPlans?,
    ));
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageCopyWith<$Res>? get package {
    if (_self.package == null) {
      return null;
    }

    return $PackageCopyWith<$Res>(_self.package!, (value) {
      return _then(_self.copyWith(package: value));
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionDataCopyWith<$Res>? get subscription_data {
    if (_self.subscription_data == null) {
      return null;
    }

    return $SubscriptionDataCopyWith<$Res>(_self.subscription_data!, (value) {
      return _then(_self.copyWith(subscription_data: value));
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MealPlansCopyWith<$Res> get mealPlans {
    return $MealPlansCopyWith<$Res>(_self.mealPlans, (value) {
      return _then(_self.copyWith(mealPlans: value));
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExercisePlansCopyWith<$Res> get exercisePlans {
    return $ExercisePlansCopyWith<$Res>(_self.exercisePlans, (value) {
      return _then(_self.copyWith(exercisePlans: value));
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpectedResultOfExercisePlansCopyWith<$Res>?
      get expectedResultOfExercisePlans {
    if (_self.expectedResultOfExercisePlans == null) {
      return null;
    }

    return $ExpectedResultOfExercisePlansCopyWith<$Res>(
        _self.expectedResultOfExercisePlans!, (value) {
      return _then(_self.copyWith(expectedResultOfExercisePlans: value));
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpectedResultOfMealPlansCopyWith<$Res>? get expectedResultOfMealPlans {
    if (_self.expectedResultOfMealPlans == null) {
      return null;
    }

    return $ExpectedResultOfMealPlansCopyWith<$Res>(
        _self.expectedResultOfMealPlans!, (value) {
      return _then(_self.copyWith(expectedResultOfMealPlans: value));
    });
  }
}

/// @nodoc
mixin _$Package {
  int get id;
  String get name;
  String get description;
  int get duration;
  String get price;
  String get type;
  int? get is_active;
  String get image;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PackageCopyWith<Package> get copyWith =>
      _$PackageCopyWithImpl<Package>(this as Package, _$identity);

  /// Serializes this Package to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Package &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
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
  int get hashCode => Object.hash(runtimeType, id, name, description, duration,
      price, type, is_active, image);

  @override
  String toString() {
    return 'Package(id: $id, name: $name, description: $description, duration: $duration, price: $price, type: $type, is_active: $is_active, image: $image)';
  }
}

/// @nodoc
abstract mixin class $PackageCopyWith<$Res> {
  factory $PackageCopyWith(Package value, $Res Function(Package) _then) =
      _$PackageCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int duration,
      String price,
      String type,
      int? is_active,
      String image});
}

/// @nodoc
class _$PackageCopyWithImpl<$Res> implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._self, this._then);

  final Package _self;
  final $Res Function(Package) _then;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? duration = null,
    Object? price = null,
    Object? type = null,
    Object? is_active = freezed,
    Object? image = null,
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
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      is_active: freezed == is_active
          ? _self.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as int?,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Package].
extension PackagePatterns on Package {
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
    TResult Function(_Package value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Package() when $default != null:
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
    TResult Function(_Package value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Package():
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
    TResult? Function(_Package value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Package() when $default != null:
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
    TResult Function(int id, String name, String description, int duration,
            String price, String type, int? is_active, String image)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Package() when $default != null:
        return $default(_that.id, _that.name, _that.description, _that.duration,
            _that.price, _that.type, _that.is_active, _that.image);
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
    TResult Function(int id, String name, String description, int duration,
            String price, String type, int? is_active, String image)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Package():
        return $default(_that.id, _that.name, _that.description, _that.duration,
            _that.price, _that.type, _that.is_active, _that.image);
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
    TResult? Function(int id, String name, String description, int duration,
            String price, String type, int? is_active, String image)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Package() when $default != null:
        return $default(_that.id, _that.name, _that.description, _that.duration,
            _that.price, _that.type, _that.is_active, _that.image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Package implements Package {
  const _Package(
      {required this.id,
      required this.name,
      required this.description,
      required this.duration,
      required this.price,
      required this.type,
      required this.is_active,
      required this.image});
  factory _Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String description;
  @override
  final int duration;
  @override
  final String price;
  @override
  final String type;
  @override
  final int? is_active;
  @override
  final String image;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PackageCopyWith<_Package> get copyWith =>
      __$PackageCopyWithImpl<_Package>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PackageToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Package &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
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
  int get hashCode => Object.hash(runtimeType, id, name, description, duration,
      price, type, is_active, image);

  @override
  String toString() {
    return 'Package(id: $id, name: $name, description: $description, duration: $duration, price: $price, type: $type, is_active: $is_active, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$PackageCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$PackageCopyWith(_Package value, $Res Function(_Package) _then) =
      __$PackageCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String description,
      int duration,
      String price,
      String type,
      int? is_active,
      String image});
}

/// @nodoc
class __$PackageCopyWithImpl<$Res> implements _$PackageCopyWith<$Res> {
  __$PackageCopyWithImpl(this._self, this._then);

  final _Package _self;
  final $Res Function(_Package) _then;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? duration = null,
    Object? price = null,
    Object? type = null,
    Object? is_active = freezed,
    Object? image = null,
  }) {
    return _then(_Package(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _self.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      is_active: freezed == is_active
          ? _self.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as int?,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$SubscriptionData {
  int get id;
  int? get user_id;
  int get package_id;
  String get start_date;
  String get end_date;
  String get created_at;
  String get updated_at;

  /// Create a copy of SubscriptionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SubscriptionDataCopyWith<SubscriptionData> get copyWith =>
      _$SubscriptionDataCopyWithImpl<SubscriptionData>(
          this as SubscriptionData, _$identity);

  /// Serializes this SubscriptionData to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SubscriptionData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.package_id, package_id) ||
                other.package_id == package_id) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, user_id, package_id,
      start_date, end_date, created_at, updated_at);

  @override
  String toString() {
    return 'SubscriptionData(id: $id, user_id: $user_id, package_id: $package_id, start_date: $start_date, end_date: $end_date, created_at: $created_at, updated_at: $updated_at)';
  }
}

/// @nodoc
abstract mixin class $SubscriptionDataCopyWith<$Res> {
  factory $SubscriptionDataCopyWith(
          SubscriptionData value, $Res Function(SubscriptionData) _then) =
      _$SubscriptionDataCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      int? user_id,
      int package_id,
      String start_date,
      String end_date,
      String created_at,
      String updated_at});
}

/// @nodoc
class _$SubscriptionDataCopyWithImpl<$Res>
    implements $SubscriptionDataCopyWith<$Res> {
  _$SubscriptionDataCopyWithImpl(this._self, this._then);

  final SubscriptionData _self;
  final $Res Function(SubscriptionData) _then;

  /// Create a copy of SubscriptionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? user_id = freezed,
    Object? package_id = null,
    Object? start_date = null,
    Object? end_date = null,
    Object? created_at = null,
    Object? updated_at = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: freezed == user_id
          ? _self.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      package_id: null == package_id
          ? _self.package_id
          : package_id // ignore: cast_nullable_to_non_nullable
              as int,
      start_date: null == start_date
          ? _self.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String,
      end_date: null == end_date
          ? _self.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _self.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [SubscriptionData].
extension SubscriptionDataPatterns on SubscriptionData {
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
    TResult Function(_SubscriptionData value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubscriptionData() when $default != null:
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
    TResult Function(_SubscriptionData value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubscriptionData():
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
    TResult? Function(_SubscriptionData value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubscriptionData() when $default != null:
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
    TResult Function(int id, int? user_id, int package_id, String start_date,
            String end_date, String created_at, String updated_at)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SubscriptionData() when $default != null:
        return $default(
            _that.id,
            _that.user_id,
            _that.package_id,
            _that.start_date,
            _that.end_date,
            _that.created_at,
            _that.updated_at);
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
    TResult Function(int id, int? user_id, int package_id, String start_date,
            String end_date, String created_at, String updated_at)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubscriptionData():
        return $default(
            _that.id,
            _that.user_id,
            _that.package_id,
            _that.start_date,
            _that.end_date,
            _that.created_at,
            _that.updated_at);
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
    TResult? Function(int id, int? user_id, int package_id, String start_date,
            String end_date, String created_at, String updated_at)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SubscriptionData() when $default != null:
        return $default(
            _that.id,
            _that.user_id,
            _that.package_id,
            _that.start_date,
            _that.end_date,
            _that.created_at,
            _that.updated_at);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _SubscriptionData implements SubscriptionData {
  const _SubscriptionData(
      {required this.id,
      required this.user_id,
      required this.package_id,
      required this.start_date,
      required this.end_date,
      required this.created_at,
      required this.updated_at});
  factory _SubscriptionData.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionDataFromJson(json);

  @override
  final int id;
  @override
  final int? user_id;
  @override
  final int package_id;
  @override
  final String start_date;
  @override
  final String end_date;
  @override
  final String created_at;
  @override
  final String updated_at;

  /// Create a copy of SubscriptionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SubscriptionDataCopyWith<_SubscriptionData> get copyWith =>
      __$SubscriptionDataCopyWithImpl<_SubscriptionData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SubscriptionDataToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SubscriptionData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(other.package_id, package_id) ||
                other.package_id == package_id) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, user_id, package_id,
      start_date, end_date, created_at, updated_at);

  @override
  String toString() {
    return 'SubscriptionData(id: $id, user_id: $user_id, package_id: $package_id, start_date: $start_date, end_date: $end_date, created_at: $created_at, updated_at: $updated_at)';
  }
}

/// @nodoc
abstract mixin class _$SubscriptionDataCopyWith<$Res>
    implements $SubscriptionDataCopyWith<$Res> {
  factory _$SubscriptionDataCopyWith(
          _SubscriptionData value, $Res Function(_SubscriptionData) _then) =
      __$SubscriptionDataCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      int? user_id,
      int package_id,
      String start_date,
      String end_date,
      String created_at,
      String updated_at});
}

/// @nodoc
class __$SubscriptionDataCopyWithImpl<$Res>
    implements _$SubscriptionDataCopyWith<$Res> {
  __$SubscriptionDataCopyWithImpl(this._self, this._then);

  final _SubscriptionData _self;
  final $Res Function(_SubscriptionData) _then;

  /// Create a copy of SubscriptionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? user_id = freezed,
    Object? package_id = null,
    Object? start_date = null,
    Object? end_date = null,
    Object? created_at = null,
    Object? updated_at = null,
  }) {
    return _then(_SubscriptionData(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: freezed == user_id
          ? _self.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      package_id: null == package_id
          ? _self.package_id
          : package_id // ignore: cast_nullable_to_non_nullable
              as int,
      start_date: null == start_date
          ? _self.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String,
      end_date: null == end_date
          ? _self.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _self.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _self.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$MealPlans {
  num get calories;
  num get protein;
  num get carbs;

  /// Create a copy of MealPlans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealPlansCopyWith<MealPlans> get copyWith =>
      _$MealPlansCopyWithImpl<MealPlans>(this as MealPlans, _$identity);

  /// Serializes this MealPlans to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealPlans &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.carbs, carbs) || other.carbs == carbs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, protein, carbs);

  @override
  String toString() {
    return 'MealPlans(calories: $calories, protein: $protein, carbs: $carbs)';
  }
}

/// @nodoc
abstract mixin class $MealPlansCopyWith<$Res> {
  factory $MealPlansCopyWith(MealPlans value, $Res Function(MealPlans) _then) =
      _$MealPlansCopyWithImpl;
  @useResult
  $Res call({num calories, num protein, num carbs});
}

/// @nodoc
class _$MealPlansCopyWithImpl<$Res> implements $MealPlansCopyWith<$Res> {
  _$MealPlansCopyWithImpl(this._self, this._then);

  final MealPlans _self;
  final $Res Function(MealPlans) _then;

  /// Create a copy of MealPlans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? carbs = null,
  }) {
    return _then(_self.copyWith(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      protein: null == protein
          ? _self.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as num,
      carbs: null == carbs
          ? _self.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// Adds pattern-matching-related methods to [MealPlans].
extension MealPlansPatterns on MealPlans {
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
    TResult Function(_MealPlans value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealPlans() when $default != null:
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
    TResult Function(_MealPlans value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealPlans():
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
    TResult? Function(_MealPlans value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealPlans() when $default != null:
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
    TResult Function(num calories, num protein, num carbs)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealPlans() when $default != null:
        return $default(_that.calories, _that.protein, _that.carbs);
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
    TResult Function(num calories, num protein, num carbs) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealPlans():
        return $default(_that.calories, _that.protein, _that.carbs);
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
    TResult? Function(num calories, num protein, num carbs)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealPlans() when $default != null:
        return $default(_that.calories, _that.protein, _that.carbs);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MealPlans implements MealPlans {
  const _MealPlans(
      {required this.calories, required this.protein, required this.carbs});
  factory _MealPlans.fromJson(Map<String, dynamic> json) =>
      _$MealPlansFromJson(json);

  @override
  final num calories;
  @override
  final num protein;
  @override
  final num carbs;

  /// Create a copy of MealPlans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealPlansCopyWith<_MealPlans> get copyWith =>
      __$MealPlansCopyWithImpl<_MealPlans>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealPlansToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealPlans &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.carbs, carbs) || other.carbs == carbs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, protein, carbs);

  @override
  String toString() {
    return 'MealPlans(calories: $calories, protein: $protein, carbs: $carbs)';
  }
}

/// @nodoc
abstract mixin class _$MealPlansCopyWith<$Res>
    implements $MealPlansCopyWith<$Res> {
  factory _$MealPlansCopyWith(
          _MealPlans value, $Res Function(_MealPlans) _then) =
      __$MealPlansCopyWithImpl;
  @override
  @useResult
  $Res call({num calories, num protein, num carbs});
}

/// @nodoc
class __$MealPlansCopyWithImpl<$Res> implements _$MealPlansCopyWith<$Res> {
  __$MealPlansCopyWithImpl(this._self, this._then);

  final _MealPlans _self;
  final $Res Function(_MealPlans) _then;

  /// Create a copy of MealPlans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? carbs = null,
  }) {
    return _then(_MealPlans(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      protein: null == protein
          ? _self.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as num,
      carbs: null == carbs
          ? _self.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
mixin _$ExercisePlans {
  num get calories;
  num get sets;
  num get times;

  /// Create a copy of ExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExercisePlansCopyWith<ExercisePlans> get copyWith =>
      _$ExercisePlansCopyWithImpl<ExercisePlans>(
          this as ExercisePlans, _$identity);

  /// Serializes this ExercisePlans to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExercisePlans &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.times, times) || other.times == times));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, sets, times);

  @override
  String toString() {
    return 'ExercisePlans(calories: $calories, sets: $sets, times: $times)';
  }
}

/// @nodoc
abstract mixin class $ExercisePlansCopyWith<$Res> {
  factory $ExercisePlansCopyWith(
          ExercisePlans value, $Res Function(ExercisePlans) _then) =
      _$ExercisePlansCopyWithImpl;
  @useResult
  $Res call({num calories, num sets, num times});
}

/// @nodoc
class _$ExercisePlansCopyWithImpl<$Res>
    implements $ExercisePlansCopyWith<$Res> {
  _$ExercisePlansCopyWithImpl(this._self, this._then);

  final ExercisePlans _self;
  final $Res Function(ExercisePlans) _then;

  /// Create a copy of ExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? sets = null,
    Object? times = null,
  }) {
    return _then(_self.copyWith(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      sets: null == sets
          ? _self.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as num,
      times: null == times
          ? _self.times
          : times // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExercisePlans].
extension ExercisePlansPatterns on ExercisePlans {
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
    TResult Function(_ExercisePlans value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExercisePlans() when $default != null:
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
    TResult Function(_ExercisePlans value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExercisePlans():
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
    TResult? Function(_ExercisePlans value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExercisePlans() when $default != null:
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
    TResult Function(num calories, num sets, num times)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExercisePlans() when $default != null:
        return $default(_that.calories, _that.sets, _that.times);
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
    TResult Function(num calories, num sets, num times) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExercisePlans():
        return $default(_that.calories, _that.sets, _that.times);
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
    TResult? Function(num calories, num sets, num times)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExercisePlans() when $default != null:
        return $default(_that.calories, _that.sets, _that.times);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExercisePlans implements ExercisePlans {
  const _ExercisePlans(
      {required this.calories, required this.sets, required this.times});
  factory _ExercisePlans.fromJson(Map<String, dynamic> json) =>
      _$ExercisePlansFromJson(json);

  @override
  final num calories;
  @override
  final num sets;
  @override
  final num times;

  /// Create a copy of ExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExercisePlansCopyWith<_ExercisePlans> get copyWith =>
      __$ExercisePlansCopyWithImpl<_ExercisePlans>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExercisePlansToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExercisePlans &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.times, times) || other.times == times));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, sets, times);

  @override
  String toString() {
    return 'ExercisePlans(calories: $calories, sets: $sets, times: $times)';
  }
}

/// @nodoc
abstract mixin class _$ExercisePlansCopyWith<$Res>
    implements $ExercisePlansCopyWith<$Res> {
  factory _$ExercisePlansCopyWith(
          _ExercisePlans value, $Res Function(_ExercisePlans) _then) =
      __$ExercisePlansCopyWithImpl;
  @override
  @useResult
  $Res call({num calories, num sets, num times});
}

/// @nodoc
class __$ExercisePlansCopyWithImpl<$Res>
    implements _$ExercisePlansCopyWith<$Res> {
  __$ExercisePlansCopyWithImpl(this._self, this._then);

  final _ExercisePlans _self;
  final $Res Function(_ExercisePlans) _then;

  /// Create a copy of ExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? calories = null,
    Object? sets = null,
    Object? times = null,
  }) {
    return _then(_ExercisePlans(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      sets: null == sets
          ? _self.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as num,
      times: null == times
          ? _self.times
          : times // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
mixin _$ExpectedResultOfExercisePlans {
  num get calories;
  num get sets;
  num get times;

  /// Create a copy of ExpectedResultOfExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpectedResultOfExercisePlansCopyWith<ExpectedResultOfExercisePlans>
      get copyWith => _$ExpectedResultOfExercisePlansCopyWithImpl<
              ExpectedResultOfExercisePlans>(
          this as ExpectedResultOfExercisePlans, _$identity);

  /// Serializes this ExpectedResultOfExercisePlans to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpectedResultOfExercisePlans &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.times, times) || other.times == times));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, sets, times);

  @override
  String toString() {
    return 'ExpectedResultOfExercisePlans(calories: $calories, sets: $sets, times: $times)';
  }
}

/// @nodoc
abstract mixin class $ExpectedResultOfExercisePlansCopyWith<$Res> {
  factory $ExpectedResultOfExercisePlansCopyWith(
          ExpectedResultOfExercisePlans value,
          $Res Function(ExpectedResultOfExercisePlans) _then) =
      _$ExpectedResultOfExercisePlansCopyWithImpl;
  @useResult
  $Res call({num calories, num sets, num times});
}

/// @nodoc
class _$ExpectedResultOfExercisePlansCopyWithImpl<$Res>
    implements $ExpectedResultOfExercisePlansCopyWith<$Res> {
  _$ExpectedResultOfExercisePlansCopyWithImpl(this._self, this._then);

  final ExpectedResultOfExercisePlans _self;
  final $Res Function(ExpectedResultOfExercisePlans) _then;

  /// Create a copy of ExpectedResultOfExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? sets = null,
    Object? times = null,
  }) {
    return _then(_self.copyWith(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      sets: null == sets
          ? _self.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as num,
      times: null == times
          ? _self.times
          : times // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExpectedResultOfExercisePlans].
extension ExpectedResultOfExercisePlansPatterns
    on ExpectedResultOfExercisePlans {
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
    TResult Function(_ExpectedResultOfExercisePlans value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExpectedResultOfExercisePlans() when $default != null:
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
    TResult Function(_ExpectedResultOfExercisePlans value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpectedResultOfExercisePlans():
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
    TResult? Function(_ExpectedResultOfExercisePlans value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpectedResultOfExercisePlans() when $default != null:
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
    TResult Function(num calories, num sets, num times)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExpectedResultOfExercisePlans() when $default != null:
        return $default(_that.calories, _that.sets, _that.times);
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
    TResult Function(num calories, num sets, num times) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpectedResultOfExercisePlans():
        return $default(_that.calories, _that.sets, _that.times);
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
    TResult? Function(num calories, num sets, num times)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpectedResultOfExercisePlans() when $default != null:
        return $default(_that.calories, _that.sets, _that.times);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExpectedResultOfExercisePlans implements ExpectedResultOfExercisePlans {
  const _ExpectedResultOfExercisePlans(
      {required this.calories, required this.sets, required this.times});
  factory _ExpectedResultOfExercisePlans.fromJson(Map<String, dynamic> json) =>
      _$ExpectedResultOfExercisePlansFromJson(json);

  @override
  final num calories;
  @override
  final num sets;
  @override
  final num times;

  /// Create a copy of ExpectedResultOfExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpectedResultOfExercisePlansCopyWith<_ExpectedResultOfExercisePlans>
      get copyWith => __$ExpectedResultOfExercisePlansCopyWithImpl<
          _ExpectedResultOfExercisePlans>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExpectedResultOfExercisePlansToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpectedResultOfExercisePlans &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.times, times) || other.times == times));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, sets, times);

  @override
  String toString() {
    return 'ExpectedResultOfExercisePlans(calories: $calories, sets: $sets, times: $times)';
  }
}

/// @nodoc
abstract mixin class _$ExpectedResultOfExercisePlansCopyWith<$Res>
    implements $ExpectedResultOfExercisePlansCopyWith<$Res> {
  factory _$ExpectedResultOfExercisePlansCopyWith(
          _ExpectedResultOfExercisePlans value,
          $Res Function(_ExpectedResultOfExercisePlans) _then) =
      __$ExpectedResultOfExercisePlansCopyWithImpl;
  @override
  @useResult
  $Res call({num calories, num sets, num times});
}

/// @nodoc
class __$ExpectedResultOfExercisePlansCopyWithImpl<$Res>
    implements _$ExpectedResultOfExercisePlansCopyWith<$Res> {
  __$ExpectedResultOfExercisePlansCopyWithImpl(this._self, this._then);

  final _ExpectedResultOfExercisePlans _self;
  final $Res Function(_ExpectedResultOfExercisePlans) _then;

  /// Create a copy of ExpectedResultOfExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? calories = null,
    Object? sets = null,
    Object? times = null,
  }) {
    return _then(_ExpectedResultOfExercisePlans(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      sets: null == sets
          ? _self.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as num,
      times: null == times
          ? _self.times
          : times // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
mixin _$ExpectedResultOfMealPlans {
  num get calories;
  num get protein;
  num? get fat;

  /// Create a copy of ExpectedResultOfMealPlans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpectedResultOfMealPlansCopyWith<ExpectedResultOfMealPlans> get copyWith =>
      _$ExpectedResultOfMealPlansCopyWithImpl<ExpectedResultOfMealPlans>(
          this as ExpectedResultOfMealPlans, _$identity);

  /// Serializes this ExpectedResultOfMealPlans to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpectedResultOfMealPlans &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, protein, fat);

  @override
  String toString() {
    return 'ExpectedResultOfMealPlans(calories: $calories, protein: $protein, fat: $fat)';
  }
}

/// @nodoc
abstract mixin class $ExpectedResultOfMealPlansCopyWith<$Res> {
  factory $ExpectedResultOfMealPlansCopyWith(ExpectedResultOfMealPlans value,
          $Res Function(ExpectedResultOfMealPlans) _then) =
      _$ExpectedResultOfMealPlansCopyWithImpl;
  @useResult
  $Res call({num calories, num protein, num? fat});
}

/// @nodoc
class _$ExpectedResultOfMealPlansCopyWithImpl<$Res>
    implements $ExpectedResultOfMealPlansCopyWith<$Res> {
  _$ExpectedResultOfMealPlansCopyWithImpl(this._self, this._then);

  final ExpectedResultOfMealPlans _self;
  final $Res Function(ExpectedResultOfMealPlans) _then;

  /// Create a copy of ExpectedResultOfMealPlans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? fat = freezed,
  }) {
    return _then(_self.copyWith(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      protein: null == protein
          ? _self.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as num,
      fat: freezed == fat
          ? _self.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ExpectedResultOfMealPlans].
extension ExpectedResultOfMealPlansPatterns on ExpectedResultOfMealPlans {
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
    TResult Function(_ExpectedResultOfMealPlans value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExpectedResultOfMealPlans() when $default != null:
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
    TResult Function(_ExpectedResultOfMealPlans value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpectedResultOfMealPlans():
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
    TResult? Function(_ExpectedResultOfMealPlans value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpectedResultOfMealPlans() when $default != null:
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
    TResult Function(num calories, num protein, num? fat)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ExpectedResultOfMealPlans() when $default != null:
        return $default(_that.calories, _that.protein, _that.fat);
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
    TResult Function(num calories, num protein, num? fat) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpectedResultOfMealPlans():
        return $default(_that.calories, _that.protein, _that.fat);
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
    TResult? Function(num calories, num protein, num? fat)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ExpectedResultOfMealPlans() when $default != null:
        return $default(_that.calories, _that.protein, _that.fat);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ExpectedResultOfMealPlans implements ExpectedResultOfMealPlans {
  const _ExpectedResultOfMealPlans(
      {required this.calories, required this.protein, required this.fat});
  factory _ExpectedResultOfMealPlans.fromJson(Map<String, dynamic> json) =>
      _$ExpectedResultOfMealPlansFromJson(json);

  @override
  final num calories;
  @override
  final num protein;
  @override
  final num? fat;

  /// Create a copy of ExpectedResultOfMealPlans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExpectedResultOfMealPlansCopyWith<_ExpectedResultOfMealPlans>
      get copyWith =>
          __$ExpectedResultOfMealPlansCopyWithImpl<_ExpectedResultOfMealPlans>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExpectedResultOfMealPlansToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExpectedResultOfMealPlans &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, protein, fat);

  @override
  String toString() {
    return 'ExpectedResultOfMealPlans(calories: $calories, protein: $protein, fat: $fat)';
  }
}

/// @nodoc
abstract mixin class _$ExpectedResultOfMealPlansCopyWith<$Res>
    implements $ExpectedResultOfMealPlansCopyWith<$Res> {
  factory _$ExpectedResultOfMealPlansCopyWith(_ExpectedResultOfMealPlans value,
          $Res Function(_ExpectedResultOfMealPlans) _then) =
      __$ExpectedResultOfMealPlansCopyWithImpl;
  @override
  @useResult
  $Res call({num calories, num protein, num? fat});
}

/// @nodoc
class __$ExpectedResultOfMealPlansCopyWithImpl<$Res>
    implements _$ExpectedResultOfMealPlansCopyWith<$Res> {
  __$ExpectedResultOfMealPlansCopyWithImpl(this._self, this._then);

  final _ExpectedResultOfMealPlans _self;
  final $Res Function(_ExpectedResultOfMealPlans) _then;

  /// Create a copy of ExpectedResultOfMealPlans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? fat = freezed,
  }) {
    return _then(_ExpectedResultOfMealPlans(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      protein: null == protein
          ? _self.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as num,
      fat: freezed == fat
          ? _self.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

// dart format on
