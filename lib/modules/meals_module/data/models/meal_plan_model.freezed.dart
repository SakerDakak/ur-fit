// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MealPlan _$MealPlanFromJson(Map<String, dynamic> json) {
  return _MealPlan.fromJson(json);
}

/// @nodoc
mixin _$MealPlan {
  int get id => throw _privateConstructorUsedError;
  String get timeFrame => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  String get endDate => throw _privateConstructorUsedError;
  Week get week => throw _privateConstructorUsedError;

  /// Serializes this MealPlan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealPlanCopyWith<MealPlan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealPlanCopyWith<$Res> {
  factory $MealPlanCopyWith(MealPlan value, $Res Function(MealPlan) then) =
      _$MealPlanCopyWithImpl<$Res, MealPlan>;
  @useResult
  $Res call(
      {int id, String timeFrame, String startDate, String endDate, Week week});

  $WeekCopyWith<$Res> get week;
}

/// @nodoc
class _$MealPlanCopyWithImpl<$Res, $Val extends MealPlan>
    implements $MealPlanCopyWith<$Res> {
  _$MealPlanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeFrame = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? week = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timeFrame: null == timeFrame
          ? _value.timeFrame
          : timeFrame // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as Week,
    ) as $Val);
  }

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekCopyWith<$Res> get week {
    return $WeekCopyWith<$Res>(_value.week, (value) {
      return _then(_value.copyWith(week: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MealPlanImplCopyWith<$Res>
    implements $MealPlanCopyWith<$Res> {
  factory _$$MealPlanImplCopyWith(
          _$MealPlanImpl value, $Res Function(_$MealPlanImpl) then) =
      __$$MealPlanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, String timeFrame, String startDate, String endDate, Week week});

  @override
  $WeekCopyWith<$Res> get week;
}

/// @nodoc
class __$$MealPlanImplCopyWithImpl<$Res>
    extends _$MealPlanCopyWithImpl<$Res, _$MealPlanImpl>
    implements _$$MealPlanImplCopyWith<$Res> {
  __$$MealPlanImplCopyWithImpl(
      _$MealPlanImpl _value, $Res Function(_$MealPlanImpl) _then)
      : super(_value, _then);

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? timeFrame = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? week = null,
  }) {
    return _then(_$MealPlanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timeFrame: null == timeFrame
          ? _value.timeFrame
          : timeFrame // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      week: null == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as Week,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealPlanImpl implements _MealPlan {
  const _$MealPlanImpl(
      {required this.id,
      required this.timeFrame,
      required this.startDate,
      required this.endDate,
      required this.week});

  factory _$MealPlanImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealPlanImplFromJson(json);

  @override
  final int id;
  @override
  final String timeFrame;
  @override
  final String startDate;
  @override
  final String endDate;
  @override
  final Week week;

  @override
  String toString() {
    return 'MealPlan(id: $id, timeFrame: $timeFrame, startDate: $startDate, endDate: $endDate, week: $week)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealPlanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.timeFrame, timeFrame) ||
                other.timeFrame == timeFrame) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.week, week) || other.week == week));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, timeFrame, startDate, endDate, week);

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealPlanImplCopyWith<_$MealPlanImpl> get copyWith =>
      __$$MealPlanImplCopyWithImpl<_$MealPlanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealPlanImplToJson(
      this,
    );
  }
}

abstract class _MealPlan implements MealPlan {
  const factory _MealPlan(
      {required final int id,
      required final String timeFrame,
      required final String startDate,
      required final String endDate,
      required final Week week}) = _$MealPlanImpl;

  factory _MealPlan.fromJson(Map<String, dynamic> json) =
      _$MealPlanImpl.fromJson;

  @override
  int get id;
  @override
  String get timeFrame;
  @override
  String get startDate;
  @override
  String get endDate;
  @override
  Week get week;

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealPlanImplCopyWith<_$MealPlanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Week _$WeekFromJson(Map<String, dynamic> json) {
  return _Week.fromJson(json);
}

/// @nodoc
mixin _$Week {
  Day get monday => throw _privateConstructorUsedError;
  Day get tuesday => throw _privateConstructorUsedError;
  Day get wednesday => throw _privateConstructorUsedError;
  Day get thursday => throw _privateConstructorUsedError;
  Day get friday => throw _privateConstructorUsedError;
  Day get saturday => throw _privateConstructorUsedError;
  Day get sunday => throw _privateConstructorUsedError;

  /// Serializes this Week to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WeekCopyWith<Week> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekCopyWith<$Res> {
  factory $WeekCopyWith(Week value, $Res Function(Week) then) =
      _$WeekCopyWithImpl<$Res, Week>;
  @useResult
  $Res call(
      {Day monday,
      Day tuesday,
      Day wednesday,
      Day thursday,
      Day friday,
      Day saturday,
      Day sunday});

  $DayCopyWith<$Res> get monday;
  $DayCopyWith<$Res> get tuesday;
  $DayCopyWith<$Res> get wednesday;
  $DayCopyWith<$Res> get thursday;
  $DayCopyWith<$Res> get friday;
  $DayCopyWith<$Res> get saturday;
  $DayCopyWith<$Res> get sunday;
}

/// @nodoc
class _$WeekCopyWithImpl<$Res, $Val extends Week>
    implements $WeekCopyWith<$Res> {
  _$WeekCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
    Object? saturday = null,
    Object? sunday = null,
  }) {
    return _then(_value.copyWith(
      monday: null == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as Day,
      tuesday: null == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as Day,
      wednesday: null == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as Day,
      thursday: null == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as Day,
      friday: null == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as Day,
      saturday: null == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as Day,
      sunday: null == sunday
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as Day,
    ) as $Val);
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get monday {
    return $DayCopyWith<$Res>(_value.monday, (value) {
      return _then(_value.copyWith(monday: value) as $Val);
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get tuesday {
    return $DayCopyWith<$Res>(_value.tuesday, (value) {
      return _then(_value.copyWith(tuesday: value) as $Val);
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get wednesday {
    return $DayCopyWith<$Res>(_value.wednesday, (value) {
      return _then(_value.copyWith(wednesday: value) as $Val);
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get thursday {
    return $DayCopyWith<$Res>(_value.thursday, (value) {
      return _then(_value.copyWith(thursday: value) as $Val);
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get friday {
    return $DayCopyWith<$Res>(_value.friday, (value) {
      return _then(_value.copyWith(friday: value) as $Val);
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get saturday {
    return $DayCopyWith<$Res>(_value.saturday, (value) {
      return _then(_value.copyWith(saturday: value) as $Val);
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get sunday {
    return $DayCopyWith<$Res>(_value.sunday, (value) {
      return _then(_value.copyWith(sunday: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WeekImplCopyWith<$Res> implements $WeekCopyWith<$Res> {
  factory _$$WeekImplCopyWith(
          _$WeekImpl value, $Res Function(_$WeekImpl) then) =
      __$$WeekImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Day monday,
      Day tuesday,
      Day wednesday,
      Day thursday,
      Day friday,
      Day saturday,
      Day sunday});

  @override
  $DayCopyWith<$Res> get monday;
  @override
  $DayCopyWith<$Res> get tuesday;
  @override
  $DayCopyWith<$Res> get wednesday;
  @override
  $DayCopyWith<$Res> get thursday;
  @override
  $DayCopyWith<$Res> get friday;
  @override
  $DayCopyWith<$Res> get saturday;
  @override
  $DayCopyWith<$Res> get sunday;
}

/// @nodoc
class __$$WeekImplCopyWithImpl<$Res>
    extends _$WeekCopyWithImpl<$Res, _$WeekImpl>
    implements _$$WeekImplCopyWith<$Res> {
  __$$WeekImplCopyWithImpl(_$WeekImpl _value, $Res Function(_$WeekImpl) _then)
      : super(_value, _then);

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
    Object? saturday = null,
    Object? sunday = null,
  }) {
    return _then(_$WeekImpl(
      monday: null == monday
          ? _value.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as Day,
      tuesday: null == tuesday
          ? _value.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as Day,
      wednesday: null == wednesday
          ? _value.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as Day,
      thursday: null == thursday
          ? _value.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as Day,
      friday: null == friday
          ? _value.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as Day,
      saturday: null == saturday
          ? _value.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as Day,
      sunday: null == sunday
          ? _value.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as Day,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeekImpl implements _Week {
  const _$WeekImpl(
      {required this.monday,
      required this.tuesday,
      required this.wednesday,
      required this.thursday,
      required this.friday,
      required this.saturday,
      required this.sunday});

  factory _$WeekImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeekImplFromJson(json);

  @override
  final Day monday;
  @override
  final Day tuesday;
  @override
  final Day wednesday;
  @override
  final Day thursday;
  @override
  final Day friday;
  @override
  final Day saturday;
  @override
  final Day sunday;

  @override
  String toString() {
    return 'Week(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday, saturday: $saturday, sunday: $sunday)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeekImpl &&
            (identical(other.monday, monday) || other.monday == monday) &&
            (identical(other.tuesday, tuesday) || other.tuesday == tuesday) &&
            (identical(other.wednesday, wednesday) ||
                other.wednesday == wednesday) &&
            (identical(other.thursday, thursday) ||
                other.thursday == thursday) &&
            (identical(other.friday, friday) || other.friday == friday) &&
            (identical(other.saturday, saturday) ||
                other.saturday == saturday) &&
            (identical(other.sunday, sunday) || other.sunday == sunday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, monday, tuesday, wednesday,
      thursday, friday, saturday, sunday);

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WeekImplCopyWith<_$WeekImpl> get copyWith =>
      __$$WeekImplCopyWithImpl<_$WeekImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeekImplToJson(
      this,
    );
  }
}

abstract class _Week implements Week {
  const factory _Week(
      {required final Day monday,
      required final Day tuesday,
      required final Day wednesday,
      required final Day thursday,
      required final Day friday,
      required final Day saturday,
      required final Day sunday}) = _$WeekImpl;

  factory _Week.fromJson(Map<String, dynamic> json) = _$WeekImpl.fromJson;

  @override
  Day get monday;
  @override
  Day get tuesday;
  @override
  Day get wednesday;
  @override
  Day get thursday;
  @override
  Day get friday;
  @override
  Day get saturday;
  @override
  Day get sunday;

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WeekImplCopyWith<_$WeekImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Day _$DayFromJson(Map<String, dynamic> json) {
  return _Day.fromJson(json);
}

/// @nodoc
mixin _$Day {
  List<Meal> get meals => throw _privateConstructorUsedError;
  Nutrients get nutrients => throw _privateConstructorUsedError;

  /// Serializes this Day to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DayCopyWith<Day> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) then) =
      _$DayCopyWithImpl<$Res, Day>;
  @useResult
  $Res call({List<Meal> meals, Nutrients nutrients});

  $NutrientsCopyWith<$Res> get nutrients;
}

/// @nodoc
class _$DayCopyWithImpl<$Res, $Val extends Day> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
    Object? nutrients = null,
  }) {
    return _then(_value.copyWith(
      meals: null == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      nutrients: null == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as Nutrients,
    ) as $Val);
  }

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutrientsCopyWith<$Res> get nutrients {
    return $NutrientsCopyWith<$Res>(_value.nutrients, (value) {
      return _then(_value.copyWith(nutrients: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DayImplCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$$DayImplCopyWith(_$DayImpl value, $Res Function(_$DayImpl) then) =
      __$$DayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Meal> meals, Nutrients nutrients});

  @override
  $NutrientsCopyWith<$Res> get nutrients;
}

/// @nodoc
class __$$DayImplCopyWithImpl<$Res> extends _$DayCopyWithImpl<$Res, _$DayImpl>
    implements _$$DayImplCopyWith<$Res> {
  __$$DayImplCopyWithImpl(_$DayImpl _value, $Res Function(_$DayImpl) _then)
      : super(_value, _then);

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
    Object? nutrients = null,
  }) {
    return _then(_$DayImpl(
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      nutrients: null == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as Nutrients,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayImpl implements _Day {
  const _$DayImpl({required final List<Meal> meals, required this.nutrients})
      : _meals = meals;

  factory _$DayImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayImplFromJson(json);

  final List<Meal> _meals;
  @override
  List<Meal> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  final Nutrients nutrients;

  @override
  String toString() {
    return 'Day(meals: $meals, nutrients: $nutrients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals) &&
            (identical(other.nutrients, nutrients) ||
                other.nutrients == nutrients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_meals), nutrients);

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      __$$DayImplCopyWithImpl<_$DayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayImplToJson(
      this,
    );
  }
}

abstract class _Day implements Day {
  const factory _Day(
      {required final List<Meal> meals,
      required final Nutrients nutrients}) = _$DayImpl;

  factory _Day.fromJson(Map<String, dynamic> json) = _$DayImpl.fromJson;

  @override
  List<Meal> get meals;
  @override
  Nutrients get nutrients;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DayImplCopyWith<_$DayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meal _$MealFromJson(Map<String, dynamic> json) {
  return _Meal.fromJson(json);
}

/// @nodoc
mixin _$Meal {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'recipe_id')
  String get recipeId => throw _privateConstructorUsedError;
  String get imageType => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get readyInMinutes => throw _privateConstructorUsedError;
  int get servings => throw _privateConstructorUsedError;
  String get sourceUrl => throw _privateConstructorUsedError;

  /// Serializes this Meal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealCopyWith<Meal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) then) =
      _$MealCopyWithImpl<$Res, Meal>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'recipe_id') String recipeId,
      String imageType,
      String title,
      int readyInMinutes,
      int servings,
      String sourceUrl});
}

/// @nodoc
class _$MealCopyWithImpl<$Res, $Val extends Meal>
    implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipeId = null,
    Object? imageType = null,
    Object? title = null,
    Object? readyInMinutes = null,
    Object? servings = null,
    Object? sourceUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readyInMinutes: null == readyInMinutes
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      sourceUrl: null == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealImplCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$$MealImplCopyWith(
          _$MealImpl value, $Res Function(_$MealImpl) then) =
      __$$MealImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'recipe_id') String recipeId,
      String imageType,
      String title,
      int readyInMinutes,
      int servings,
      String sourceUrl});
}

/// @nodoc
class __$$MealImplCopyWithImpl<$Res>
    extends _$MealCopyWithImpl<$Res, _$MealImpl>
    implements _$$MealImplCopyWith<$Res> {
  __$$MealImplCopyWithImpl(_$MealImpl _value, $Res Function(_$MealImpl) _then)
      : super(_value, _then);

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipeId = null,
    Object? imageType = null,
    Object? title = null,
    Object? readyInMinutes = null,
    Object? servings = null,
    Object? sourceUrl = null,
  }) {
    return _then(_$MealImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipeId: null == recipeId
          ? _value.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: null == imageType
          ? _value.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readyInMinutes: null == readyInMinutes
          ? _value.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      servings: null == servings
          ? _value.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      sourceUrl: null == sourceUrl
          ? _value.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MealImpl implements _Meal {
  const _$MealImpl(
      {required this.id,
      @JsonKey(name: 'recipe_id') required this.recipeId,
      required this.imageType,
      required this.title,
      required this.readyInMinutes,
      required this.servings,
      required this.sourceUrl});

  factory _$MealImpl.fromJson(Map<String, dynamic> json) =>
      _$$MealImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'recipe_id')
  final String recipeId;
  @override
  final String imageType;
  @override
  final String title;
  @override
  final int readyInMinutes;
  @override
  final int servings;
  @override
  final String sourceUrl;

  @override
  String toString() {
    return 'Meal(id: $id, recipeId: $recipeId, imageType: $imageType, title: $title, readyInMinutes: $readyInMinutes, servings: $servings, sourceUrl: $sourceUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipeId, recipeId) ||
                other.recipeId == recipeId) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.readyInMinutes, readyInMinutes) ||
                other.readyInMinutes == readyInMinutes) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, recipeId, imageType, title,
      readyInMinutes, servings, sourceUrl);

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealImplCopyWith<_$MealImpl> get copyWith =>
      __$$MealImplCopyWithImpl<_$MealImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MealImplToJson(
      this,
    );
  }
}

abstract class _Meal implements Meal {
  const factory _Meal(
      {required final int id,
      @JsonKey(name: 'recipe_id') required final String recipeId,
      required final String imageType,
      required final String title,
      required final int readyInMinutes,
      required final int servings,
      required final String sourceUrl}) = _$MealImpl;

  factory _Meal.fromJson(Map<String, dynamic> json) = _$MealImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'recipe_id')
  String get recipeId;
  @override
  String get imageType;
  @override
  String get title;
  @override
  int get readyInMinutes;
  @override
  int get servings;
  @override
  String get sourceUrl;

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealImplCopyWith<_$MealImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Nutrients _$NutrientsFromJson(Map<String, dynamic> json) {
  return _Nutrients.fromJson(json);
}

/// @nodoc
mixin _$Nutrients {
  double get calories => throw _privateConstructorUsedError;
  double get protein => throw _privateConstructorUsedError;
  double get fat => throw _privateConstructorUsedError;
  double get carbohydrates => throw _privateConstructorUsedError;

  /// Serializes this Nutrients to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NutrientsCopyWith<Nutrients> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NutrientsCopyWith<$Res> {
  factory $NutrientsCopyWith(Nutrients value, $Res Function(Nutrients) then) =
      _$NutrientsCopyWithImpl<$Res, Nutrients>;
  @useResult
  $Res call(
      {double calories, double protein, double fat, double carbohydrates});
}

/// @nodoc
class _$NutrientsCopyWithImpl<$Res, $Val extends Nutrients>
    implements $NutrientsCopyWith<$Res> {
  _$NutrientsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? fat = null,
    Object? carbohydrates = null,
  }) {
    return _then(_value.copyWith(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NutrientsImplCopyWith<$Res>
    implements $NutrientsCopyWith<$Res> {
  factory _$$NutrientsImplCopyWith(
          _$NutrientsImpl value, $Res Function(_$NutrientsImpl) then) =
      __$$NutrientsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double calories, double protein, double fat, double carbohydrates});
}

/// @nodoc
class __$$NutrientsImplCopyWithImpl<$Res>
    extends _$NutrientsCopyWithImpl<$Res, _$NutrientsImpl>
    implements _$$NutrientsImplCopyWith<$Res> {
  __$$NutrientsImplCopyWithImpl(
      _$NutrientsImpl _value, $Res Function(_$NutrientsImpl) _then)
      : super(_value, _then);

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? fat = null,
    Object? carbohydrates = null,
  }) {
    return _then(_$NutrientsImpl(
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      protein: null == protein
          ? _value.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      fat: null == fat
          ? _value.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrates: null == carbohydrates
          ? _value.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NutrientsImpl implements _Nutrients {
  const _$NutrientsImpl(
      {required this.calories,
      required this.protein,
      required this.fat,
      required this.carbohydrates});

  factory _$NutrientsImpl.fromJson(Map<String, dynamic> json) =>
      _$$NutrientsImplFromJson(json);

  @override
  final double calories;
  @override
  final double protein;
  @override
  final double fat;
  @override
  final double carbohydrates;

  @override
  String toString() {
    return 'Nutrients(calories: $calories, protein: $protein, fat: $fat, carbohydrates: $carbohydrates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NutrientsImpl &&
            (identical(other.calories, calories) ||
                other.calories == calories) &&
            (identical(other.protein, protein) || other.protein == protein) &&
            (identical(other.fat, fat) || other.fat == fat) &&
            (identical(other.carbohydrates, carbohydrates) ||
                other.carbohydrates == carbohydrates));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, calories, protein, fat, carbohydrates);

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NutrientsImplCopyWith<_$NutrientsImpl> get copyWith =>
      __$$NutrientsImplCopyWithImpl<_$NutrientsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NutrientsImplToJson(
      this,
    );
  }
}

abstract class _Nutrients implements Nutrients {
  const factory _Nutrients(
      {required final double calories,
      required final double protein,
      required final double fat,
      required final double carbohydrates}) = _$NutrientsImpl;

  factory _Nutrients.fromJson(Map<String, dynamic> json) =
      _$NutrientsImpl.fromJson;

  @override
  double get calories;
  @override
  double get protein;
  @override
  double get fat;
  @override
  double get carbohydrates;

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NutrientsImplCopyWith<_$NutrientsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
