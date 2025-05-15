// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'plan_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlanHistoryModel _$PlanHistoryModelFromJson(Map<String, dynamic> json) {
  return _PlanHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$PlanHistoryModel {
  Package? get package => throw _privateConstructorUsedError;
  SubscriptionData? get subscription_data => throw _privateConstructorUsedError;
  num? get user_target_weight => throw _privateConstructorUsedError;
  MealPlans get mealPlans => throw _privateConstructorUsedError;
  ExercisePlans get exercisePlans => throw _privateConstructorUsedError;
  ExpectedResultOfExercisePlans? get expectedResultOfExercisePlans =>
      throw _privateConstructorUsedError;
  ExpectedResultOfMealPlans? get expectedResultOfMealPlans =>
      throw _privateConstructorUsedError;

  /// Serializes this PlanHistoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlanHistoryModelCopyWith<PlanHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlanHistoryModelCopyWith<$Res> {
  factory $PlanHistoryModelCopyWith(
          PlanHistoryModel value, $Res Function(PlanHistoryModel) then) =
      _$PlanHistoryModelCopyWithImpl<$Res, PlanHistoryModel>;
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
class _$PlanHistoryModelCopyWithImpl<$Res, $Val extends PlanHistoryModel>
    implements $PlanHistoryModelCopyWith<$Res> {
  _$PlanHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as Package?,
      subscription_data: freezed == subscription_data
          ? _value.subscription_data
          : subscription_data // ignore: cast_nullable_to_non_nullable
              as SubscriptionData?,
      user_target_weight: freezed == user_target_weight
          ? _value.user_target_weight
          : user_target_weight // ignore: cast_nullable_to_non_nullable
              as num?,
      mealPlans: null == mealPlans
          ? _value.mealPlans
          : mealPlans // ignore: cast_nullable_to_non_nullable
              as MealPlans,
      exercisePlans: null == exercisePlans
          ? _value.exercisePlans
          : exercisePlans // ignore: cast_nullable_to_non_nullable
              as ExercisePlans,
      expectedResultOfExercisePlans: freezed == expectedResultOfExercisePlans
          ? _value.expectedResultOfExercisePlans
          : expectedResultOfExercisePlans // ignore: cast_nullable_to_non_nullable
              as ExpectedResultOfExercisePlans?,
      expectedResultOfMealPlans: freezed == expectedResultOfMealPlans
          ? _value.expectedResultOfMealPlans
          : expectedResultOfMealPlans // ignore: cast_nullable_to_non_nullable
              as ExpectedResultOfMealPlans?,
    ) as $Val);
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PackageCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $PackageCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SubscriptionDataCopyWith<$Res>? get subscription_data {
    if (_value.subscription_data == null) {
      return null;
    }

    return $SubscriptionDataCopyWith<$Res>(_value.subscription_data!, (value) {
      return _then(_value.copyWith(subscription_data: value) as $Val);
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MealPlansCopyWith<$Res> get mealPlans {
    return $MealPlansCopyWith<$Res>(_value.mealPlans, (value) {
      return _then(_value.copyWith(mealPlans: value) as $Val);
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExercisePlansCopyWith<$Res> get exercisePlans {
    return $ExercisePlansCopyWith<$Res>(_value.exercisePlans, (value) {
      return _then(_value.copyWith(exercisePlans: value) as $Val);
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpectedResultOfExercisePlansCopyWith<$Res>?
      get expectedResultOfExercisePlans {
    if (_value.expectedResultOfExercisePlans == null) {
      return null;
    }

    return $ExpectedResultOfExercisePlansCopyWith<$Res>(
        _value.expectedResultOfExercisePlans!, (value) {
      return _then(
          _value.copyWith(expectedResultOfExercisePlans: value) as $Val);
    });
  }

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExpectedResultOfMealPlansCopyWith<$Res>? get expectedResultOfMealPlans {
    if (_value.expectedResultOfMealPlans == null) {
      return null;
    }

    return $ExpectedResultOfMealPlansCopyWith<$Res>(
        _value.expectedResultOfMealPlans!, (value) {
      return _then(_value.copyWith(expectedResultOfMealPlans: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlanHistoryModelImplCopyWith<$Res>
    implements $PlanHistoryModelCopyWith<$Res> {
  factory _$$PlanHistoryModelImplCopyWith(_$PlanHistoryModelImpl value,
          $Res Function(_$PlanHistoryModelImpl) then) =
      __$$PlanHistoryModelImplCopyWithImpl<$Res>;
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
class __$$PlanHistoryModelImplCopyWithImpl<$Res>
    extends _$PlanHistoryModelCopyWithImpl<$Res, _$PlanHistoryModelImpl>
    implements _$$PlanHistoryModelImplCopyWith<$Res> {
  __$$PlanHistoryModelImplCopyWithImpl(_$PlanHistoryModelImpl _value,
      $Res Function(_$PlanHistoryModelImpl) _then)
      : super(_value, _then);

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
    return _then(_$PlanHistoryModelImpl(
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as Package?,
      subscription_data: freezed == subscription_data
          ? _value.subscription_data
          : subscription_data // ignore: cast_nullable_to_non_nullable
              as SubscriptionData?,
      user_target_weight: freezed == user_target_weight
          ? _value.user_target_weight
          : user_target_weight // ignore: cast_nullable_to_non_nullable
              as num?,
      mealPlans: null == mealPlans
          ? _value.mealPlans
          : mealPlans // ignore: cast_nullable_to_non_nullable
              as MealPlans,
      exercisePlans: null == exercisePlans
          ? _value.exercisePlans
          : exercisePlans // ignore: cast_nullable_to_non_nullable
              as ExercisePlans,
      expectedResultOfExercisePlans: freezed == expectedResultOfExercisePlans
          ? _value.expectedResultOfExercisePlans
          : expectedResultOfExercisePlans // ignore: cast_nullable_to_non_nullable
              as ExpectedResultOfExercisePlans?,
      expectedResultOfMealPlans: freezed == expectedResultOfMealPlans
          ? _value.expectedResultOfMealPlans
          : expectedResultOfMealPlans // ignore: cast_nullable_to_non_nullable
              as ExpectedResultOfMealPlans?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlanHistoryModelImpl implements _PlanHistoryModel {
  const _$PlanHistoryModelImpl(
      {required this.package,
      required this.subscription_data,
      required this.user_target_weight,
      required this.mealPlans,
      required this.exercisePlans,
      required this.expectedResultOfExercisePlans,
      required this.expectedResultOfMealPlans});

  factory _$PlanHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlanHistoryModelImplFromJson(json);

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

  @override
  String toString() {
    return 'PlanHistoryModel(package: $package, subscription_data: $subscription_data, user_target_weight: $user_target_weight, mealPlans: $mealPlans, exercisePlans: $exercisePlans, expectedResultOfExercisePlans: $expectedResultOfExercisePlans, expectedResultOfMealPlans: $expectedResultOfMealPlans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlanHistoryModelImpl &&
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

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlanHistoryModelImplCopyWith<_$PlanHistoryModelImpl> get copyWith =>
      __$$PlanHistoryModelImplCopyWithImpl<_$PlanHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlanHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _PlanHistoryModel implements PlanHistoryModel {
  const factory _PlanHistoryModel(
      {required final Package? package,
      required final SubscriptionData? subscription_data,
      required final num? user_target_weight,
      required final MealPlans mealPlans,
      required final ExercisePlans exercisePlans,
      required final ExpectedResultOfExercisePlans?
          expectedResultOfExercisePlans,
      required final ExpectedResultOfMealPlans?
          expectedResultOfMealPlans}) = _$PlanHistoryModelImpl;

  factory _PlanHistoryModel.fromJson(Map<String, dynamic> json) =
      _$PlanHistoryModelImpl.fromJson;

  @override
  Package? get package;
  @override
  SubscriptionData? get subscription_data;
  @override
  num? get user_target_weight;
  @override
  MealPlans get mealPlans;
  @override
  ExercisePlans get exercisePlans;
  @override
  ExpectedResultOfExercisePlans? get expectedResultOfExercisePlans;
  @override
  ExpectedResultOfMealPlans? get expectedResultOfMealPlans;

  /// Create a copy of PlanHistoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlanHistoryModelImplCopyWith<_$PlanHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Package _$PackageFromJson(Map<String, dynamic> json) {
  return _Package.fromJson(json);
}

/// @nodoc
mixin _$Package {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get price => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  int? get is_active => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;

  /// Serializes this Package to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageCopyWith<Package> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageCopyWith<$Res> {
  factory $PackageCopyWith(Package value, $Res Function(Package) then) =
      _$PackageCopyWithImpl<$Res, Package>;
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
class _$PackageCopyWithImpl<$Res, $Val extends Package>
    implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
              as String,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as int?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageImplCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$$PackageImplCopyWith(
          _$PackageImpl value, $Res Function(_$PackageImpl) then) =
      __$$PackageImplCopyWithImpl<$Res>;
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
class __$$PackageImplCopyWithImpl<$Res>
    extends _$PackageCopyWithImpl<$Res, _$PackageImpl>
    implements _$$PackageImplCopyWith<$Res> {
  __$$PackageImplCopyWithImpl(
      _$PackageImpl _value, $Res Function(_$PackageImpl) _then)
      : super(_value, _then);

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
    return _then(_$PackageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
              as String,
      is_active: freezed == is_active
          ? _value.is_active
          : is_active // ignore: cast_nullable_to_non_nullable
              as int?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageImpl implements _Package {
  const _$PackageImpl(
      {required this.id,
      required this.name,
      required this.description,
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

  @override
  String toString() {
    return 'Package(id: $id, name: $name, description: $description, duration: $duration, price: $price, type: $type, is_active: $is_active, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageImpl &&
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

  /// Create a copy of Package
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

abstract class _Package implements Package {
  const factory _Package(
      {required final int id,
      required final String name,
      required final String description,
      required final int duration,
      required final String price,
      required final String type,
      required final int? is_active,
      required final String image}) = _$PackageImpl;

  factory _Package.fromJson(Map<String, dynamic> json) = _$PackageImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get description;
  @override
  int get duration;
  @override
  String get price;
  @override
  String get type;
  @override
  int? get is_active;
  @override
  String get image;

  /// Create a copy of Package
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageImplCopyWith<_$PackageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscriptionData _$SubscriptionDataFromJson(Map<String, dynamic> json) {
  return _SubscriptionData.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionData {
  int get id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  int get package_id => throw _privateConstructorUsedError;
  String get start_date => throw _privateConstructorUsedError;
  String get end_date => throw _privateConstructorUsedError;
  String get created_at => throw _privateConstructorUsedError;
  String get updated_at => throw _privateConstructorUsedError;

  /// Serializes this SubscriptionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionDataCopyWith<SubscriptionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionDataCopyWith<$Res> {
  factory $SubscriptionDataCopyWith(
          SubscriptionData value, $Res Function(SubscriptionData) then) =
      _$SubscriptionDataCopyWithImpl<$Res, SubscriptionData>;
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
class _$SubscriptionDataCopyWithImpl<$Res, $Val extends SubscriptionData>
    implements $SubscriptionDataCopyWith<$Res> {
  _$SubscriptionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      package_id: null == package_id
          ? _value.package_id
          : package_id // ignore: cast_nullable_to_non_nullable
              as int,
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String,
      end_date: null == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionDataImplCopyWith<$Res>
    implements $SubscriptionDataCopyWith<$Res> {
  factory _$$SubscriptionDataImplCopyWith(_$SubscriptionDataImpl value,
          $Res Function(_$SubscriptionDataImpl) then) =
      __$$SubscriptionDataImplCopyWithImpl<$Res>;
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
class __$$SubscriptionDataImplCopyWithImpl<$Res>
    extends _$SubscriptionDataCopyWithImpl<$Res, _$SubscriptionDataImpl>
    implements _$$SubscriptionDataImplCopyWith<$Res> {
  __$$SubscriptionDataImplCopyWithImpl(_$SubscriptionDataImpl _value,
      $Res Function(_$SubscriptionDataImpl) _then)
      : super(_value, _then);

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
    return _then(_$SubscriptionDataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      package_id: null == package_id
          ? _value.package_id
          : package_id // ignore: cast_nullable_to_non_nullable
              as int,
      start_date: null == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String,
      end_date: null == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String,
      created_at: null == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String,
      updated_at: null == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionDataImpl implements _SubscriptionData {
  const _$SubscriptionDataImpl(
      {required this.id,
      required this.user_id,
      required this.package_id,
      required this.start_date,
      required this.end_date,
      required this.created_at,
      required this.updated_at});

  factory _$SubscriptionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionDataImplFromJson(json);

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

  @override
  String toString() {
    return 'SubscriptionData(id: $id, user_id: $user_id, package_id: $package_id, start_date: $start_date, end_date: $end_date, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionDataImpl &&
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

  /// Create a copy of SubscriptionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionDataImplCopyWith<_$SubscriptionDataImpl> get copyWith =>
      __$$SubscriptionDataImplCopyWithImpl<_$SubscriptionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionDataImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionData implements SubscriptionData {
  const factory _SubscriptionData(
      {required final int id,
      required final int? user_id,
      required final int package_id,
      required final String start_date,
      required final String end_date,
      required final String created_at,
      required final String updated_at}) = _$SubscriptionDataImpl;

  factory _SubscriptionData.fromJson(Map<String, dynamic> json) =
      _$SubscriptionDataImpl.fromJson;

  @override
  int get id;
  @override
  int? get user_id;
  @override
  int get package_id;
  @override
  String get start_date;
  @override
  String get end_date;
  @override
  String get created_at;
  @override
  String get updated_at;

  /// Create a copy of SubscriptionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionDataImplCopyWith<_$SubscriptionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MealPlans _$MealPlansFromJson(Map<String, dynamic> json) {
  return _MealPlans.fromJson(json);
}

/// @nodoc
mixin _$MealPlans {
  num get calories => throw _privateConstructorUsedError;
  num get protein => throw _privateConstructorUsedError;
  num get carbs => throw _privateConstructorUsedError;

  /// Serializes this MealPlans to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealPlans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealPlansCopyWith<MealPlans> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealPlansCopyWith<$Res> {
  factory $MealPlansCopyWith(MealPlans value, $Res Function(MealPlans) then) =
      _$MealPlansCopyWithImpl<$Res, MealPlans>;
  @useResult
  $Res call({num calories, num protein, num carbs});
}

/// @nodoc
class _$MealPlansCopyWithImpl<$Res, $Val extends MealPlans>
    implements $MealPlansCopyWith<$Res> {
  _$MealPlansCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealPlans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? carbs = null,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as num,
      carbs: null == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealPlansImplCopyWith<$Res>
    implements $MealPlansCopyWith<$Res> {
  factory _$$MealPlansImplCopyWith(
          _$MealPlansImpl value, $Res Function(_$MealPlansImpl) then) =
      __$$MealPlansImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num calories, num protein, num carbs});
}

/// @nodoc
class __$$MealPlansImplCopyWithImpl<$Res>
    extends _$MealPlansCopyWithImpl<$Res, _$MealPlansImpl>
    implements _$$MealPlansImplCopyWith<$Res> {
  __$$MealPlansImplCopyWithImpl(
      _$MealPlansImpl _value, $Res Function(_$MealPlansImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealPlans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? carbs = null,
  }) {
    return _then(_$MealPlansImpl(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as num,
      carbs: null == carbs
          ? _value.carbs
          : carbs // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealPlansImpl implements _MealPlans {
  const _$MealPlansImpl(
      {required this.calories, required this.protein, required this.carbs});

  factory _$MealPlansImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealPlansImplFromJson(json);

  @override
  final num calories;
  @override
  final num protein;
  @override
  final num carbs;

  @override
  String toString() {
    return 'MealPlans(calories: $calories, protein: $protein, carbs: $carbs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealPlansImpl &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.carbs, carbs) || other.carbs == carbs));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, protein, carbs);

  /// Create a copy of MealPlans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealPlansImplCopyWith<_$MealPlansImpl> get copyWith =>
      __$$MealPlansImplCopyWithImpl<_$MealPlansImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealPlansImplToJson(
      this,
    );
  }
}

abstract class _MealPlans implements MealPlans {
  const factory _MealPlans(
      {required final num calories,
      required final num protein,
      required final num carbs}) = _$MealPlansImpl;

  factory _MealPlans.fromJson(Map<String, dynamic> json) =
      _$MealPlansImpl.fromJson;

  @override
  num get calories;
  @override
  num get protein;
  @override
  num get carbs;

  /// Create a copy of MealPlans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealPlansImplCopyWith<_$MealPlansImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExercisePlans _$ExercisePlansFromJson(Map<String, dynamic> json) {
  return _ExercisePlans.fromJson(json);
}

/// @nodoc
mixin _$ExercisePlans {
  num get calories => throw _privateConstructorUsedError;
  num get sets => throw _privateConstructorUsedError;
  num get times => throw _privateConstructorUsedError;

  /// Serializes this ExercisePlans to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExercisePlansCopyWith<ExercisePlans> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExercisePlansCopyWith<$Res> {
  factory $ExercisePlansCopyWith(
          ExercisePlans value, $Res Function(ExercisePlans) then) =
      _$ExercisePlansCopyWithImpl<$Res, ExercisePlans>;
  @useResult
  $Res call({num calories, num sets, num times});
}

/// @nodoc
class _$ExercisePlansCopyWithImpl<$Res, $Val extends ExercisePlans>
    implements $ExercisePlansCopyWith<$Res> {
  _$ExercisePlansCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? sets = null,
    Object? times = null,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as num,
      times: null == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExercisePlansImplCopyWith<$Res>
    implements $ExercisePlansCopyWith<$Res> {
  factory _$$ExercisePlansImplCopyWith(
          _$ExercisePlansImpl value, $Res Function(_$ExercisePlansImpl) then) =
      __$$ExercisePlansImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num calories, num sets, num times});
}

/// @nodoc
class __$$ExercisePlansImplCopyWithImpl<$Res>
    extends _$ExercisePlansCopyWithImpl<$Res, _$ExercisePlansImpl>
    implements _$$ExercisePlansImplCopyWith<$Res> {
  __$$ExercisePlansImplCopyWithImpl(
      _$ExercisePlansImpl _value, $Res Function(_$ExercisePlansImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? sets = null,
    Object? times = null,
  }) {
    return _then(_$ExercisePlansImpl(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as num,
      times: null == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExercisePlansImpl implements _ExercisePlans {
  const _$ExercisePlansImpl(
      {required this.calories, required this.sets, required this.times});

  factory _$ExercisePlansImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExercisePlansImplFromJson(json);

  @override
  final num calories;
  @override
  final num sets;
  @override
  final num times;

  @override
  String toString() {
    return 'ExercisePlans(calories: $calories, sets: $sets, times: $times)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExercisePlansImpl &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.times, times) || other.times == times));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, sets, times);

  /// Create a copy of ExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExercisePlansImplCopyWith<_$ExercisePlansImpl> get copyWith =>
      __$$ExercisePlansImplCopyWithImpl<_$ExercisePlansImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExercisePlansImplToJson(
      this,
    );
  }
}

abstract class _ExercisePlans implements ExercisePlans {
  const factory _ExercisePlans(
      {required final num calories,
      required final num sets,
      required final num times}) = _$ExercisePlansImpl;

  factory _ExercisePlans.fromJson(Map<String, dynamic> json) =
      _$ExercisePlansImpl.fromJson;

  @override
  num get calories;
  @override
  num get sets;
  @override
  num get times;

  /// Create a copy of ExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExercisePlansImplCopyWith<_$ExercisePlansImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExpectedResultOfExercisePlans _$ExpectedResultOfExercisePlansFromJson(
    Map<String, dynamic> json) {
  return _ExpectedResultOfExercisePlans.fromJson(json);
}

/// @nodoc
mixin _$ExpectedResultOfExercisePlans {
  num get calories => throw _privateConstructorUsedError;
  num get sets => throw _privateConstructorUsedError;
  num get times => throw _privateConstructorUsedError;

  /// Serializes this ExpectedResultOfExercisePlans to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExpectedResultOfExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpectedResultOfExercisePlansCopyWith<ExpectedResultOfExercisePlans>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpectedResultOfExercisePlansCopyWith<$Res> {
  factory $ExpectedResultOfExercisePlansCopyWith(
          ExpectedResultOfExercisePlans value,
          $Res Function(ExpectedResultOfExercisePlans) then) =
      _$ExpectedResultOfExercisePlansCopyWithImpl<$Res,
          ExpectedResultOfExercisePlans>;
  @useResult
  $Res call({num calories, num sets, num times});
}

/// @nodoc
class _$ExpectedResultOfExercisePlansCopyWithImpl<$Res,
        $Val extends ExpectedResultOfExercisePlans>
    implements $ExpectedResultOfExercisePlansCopyWith<$Res> {
  _$ExpectedResultOfExercisePlansCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpectedResultOfExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? sets = null,
    Object? times = null,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as num,
      times: null == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpectedResultOfExercisePlansImplCopyWith<$Res>
    implements $ExpectedResultOfExercisePlansCopyWith<$Res> {
  factory _$$ExpectedResultOfExercisePlansImplCopyWith(
          _$ExpectedResultOfExercisePlansImpl value,
          $Res Function(_$ExpectedResultOfExercisePlansImpl) then) =
      __$$ExpectedResultOfExercisePlansImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num calories, num sets, num times});
}

/// @nodoc
class __$$ExpectedResultOfExercisePlansImplCopyWithImpl<$Res>
    extends _$ExpectedResultOfExercisePlansCopyWithImpl<$Res,
        _$ExpectedResultOfExercisePlansImpl>
    implements _$$ExpectedResultOfExercisePlansImplCopyWith<$Res> {
  __$$ExpectedResultOfExercisePlansImplCopyWithImpl(
      _$ExpectedResultOfExercisePlansImpl _value,
      $Res Function(_$ExpectedResultOfExercisePlansImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpectedResultOfExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? sets = null,
    Object? times = null,
  }) {
    return _then(_$ExpectedResultOfExercisePlansImpl(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as num,
      times: null == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpectedResultOfExercisePlansImpl
    implements _ExpectedResultOfExercisePlans {
  const _$ExpectedResultOfExercisePlansImpl(
      {required this.calories, required this.sets, required this.times});

  factory _$ExpectedResultOfExercisePlansImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ExpectedResultOfExercisePlansImplFromJson(json);

  @override
  final num calories;
  @override
  final num sets;
  @override
  final num times;

  @override
  String toString() {
    return 'ExpectedResultOfExercisePlans(calories: $calories, sets: $sets, times: $times)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpectedResultOfExercisePlansImpl &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.sets, sets) || other.sets == sets) &&
            (identical(other.times, times) || other.times == times));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, sets, times);

  /// Create a copy of ExpectedResultOfExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpectedResultOfExercisePlansImplCopyWith<
          _$ExpectedResultOfExercisePlansImpl>
      get copyWith => __$$ExpectedResultOfExercisePlansImplCopyWithImpl<
          _$ExpectedResultOfExercisePlansImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpectedResultOfExercisePlansImplToJson(
      this,
    );
  }
}

abstract class _ExpectedResultOfExercisePlans
    implements ExpectedResultOfExercisePlans {
  const factory _ExpectedResultOfExercisePlans(
      {required final num calories,
      required final num sets,
      required final num times}) = _$ExpectedResultOfExercisePlansImpl;

  factory _ExpectedResultOfExercisePlans.fromJson(Map<String, dynamic> json) =
      _$ExpectedResultOfExercisePlansImpl.fromJson;

  @override
  num get calories;
  @override
  num get sets;
  @override
  num get times;

  /// Create a copy of ExpectedResultOfExercisePlans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpectedResultOfExercisePlansImplCopyWith<
          _$ExpectedResultOfExercisePlansImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ExpectedResultOfMealPlans _$ExpectedResultOfMealPlansFromJson(
    Map<String, dynamic> json) {
  return _ExpectedResultOfMealPlans.fromJson(json);
}

/// @nodoc
mixin _$ExpectedResultOfMealPlans {
  num get calories => throw _privateConstructorUsedError;
  num get protein => throw _privateConstructorUsedError;
  num? get fat => throw _privateConstructorUsedError;

  /// Serializes this ExpectedResultOfMealPlans to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ExpectedResultOfMealPlans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExpectedResultOfMealPlansCopyWith<ExpectedResultOfMealPlans> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpectedResultOfMealPlansCopyWith<$Res> {
  factory $ExpectedResultOfMealPlansCopyWith(ExpectedResultOfMealPlans value,
          $Res Function(ExpectedResultOfMealPlans) then) =
      _$ExpectedResultOfMealPlansCopyWithImpl<$Res, ExpectedResultOfMealPlans>;
  @useResult
  $Res call({num calories, num protein, num? fat});
}

/// @nodoc
class _$ExpectedResultOfMealPlansCopyWithImpl<$Res,
        $Val extends ExpectedResultOfMealPlans>
    implements $ExpectedResultOfMealPlansCopyWith<$Res> {
  _$ExpectedResultOfMealPlansCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ExpectedResultOfMealPlans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? fat = freezed,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as num,
      fat: freezed == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpectedResultOfMealPlansImplCopyWith<$Res>
    implements $ExpectedResultOfMealPlansCopyWith<$Res> {
  factory _$$ExpectedResultOfMealPlansImplCopyWith(
          _$ExpectedResultOfMealPlansImpl value,
          $Res Function(_$ExpectedResultOfMealPlansImpl) then) =
      __$$ExpectedResultOfMealPlansImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num calories, num protein, num? fat});
}

/// @nodoc
class __$$ExpectedResultOfMealPlansImplCopyWithImpl<$Res>
    extends _$ExpectedResultOfMealPlansCopyWithImpl<$Res,
        _$ExpectedResultOfMealPlansImpl>
    implements _$$ExpectedResultOfMealPlansImplCopyWith<$Res> {
  __$$ExpectedResultOfMealPlansImplCopyWithImpl(
      _$ExpectedResultOfMealPlansImpl _value,
      $Res Function(_$ExpectedResultOfMealPlansImpl) _then)
      : super(_value, _then);

  /// Create a copy of ExpectedResultOfMealPlans
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? fat = freezed,
  }) {
    return _then(_$ExpectedResultOfMealPlansImpl(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as num,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as num,
      fat: freezed == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExpectedResultOfMealPlansImpl implements _ExpectedResultOfMealPlans {
  const _$ExpectedResultOfMealPlansImpl(
      {required this.calories, required this.protein, required this.fat});

  factory _$ExpectedResultOfMealPlansImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpectedResultOfMealPlansImplFromJson(json);

  @override
  final num calories;
  @override
  final num protein;
  @override
  final num? fat;

  @override
  String toString() {
    return 'ExpectedResultOfMealPlans(calories: $calories, protein: $protein, fat: $fat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpectedResultOfMealPlansImpl &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, calories, protein, fat);

  /// Create a copy of ExpectedResultOfMealPlans
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpectedResultOfMealPlansImplCopyWith<_$ExpectedResultOfMealPlansImpl>
      get copyWith => __$$ExpectedResultOfMealPlansImplCopyWithImpl<
          _$ExpectedResultOfMealPlansImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpectedResultOfMealPlansImplToJson(
      this,
    );
  }
}

abstract class _ExpectedResultOfMealPlans implements ExpectedResultOfMealPlans {
  const factory _ExpectedResultOfMealPlans(
      {required final num calories,
      required final num protein,
      required final num? fat}) = _$ExpectedResultOfMealPlansImpl;

  factory _ExpectedResultOfMealPlans.fromJson(Map<String, dynamic> json) =
      _$ExpectedResultOfMealPlansImpl.fromJson;

  @override
  num get calories;
  @override
  num get protein;
  @override
  num? get fat;

  /// Create a copy of ExpectedResultOfMealPlans
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExpectedResultOfMealPlansImplCopyWith<_$ExpectedResultOfMealPlansImpl>
      get copyWith => throw _privateConstructorUsedError;
}
