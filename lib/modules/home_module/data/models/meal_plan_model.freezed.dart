// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_plan_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
MealPlanModel _$MealPlanModelFromJson(Map<String, dynamic> json) {
  return _MealPlan.fromJson(json);
}

/// @nodoc
mixin _$MealPlanModel {
  int get id;
  String get timeFrame;
  String get startDate;
  String get endDate;
  Week get week;

  /// Create a copy of MealPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealPlanModelCopyWith<MealPlanModel> get copyWith =>
      _$MealPlanModelCopyWithImpl<MealPlanModel>(
          this as MealPlanModel, _$identity);

  /// Serializes this MealPlanModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealPlanModel &&
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

  @override
  String toString() {
    return 'MealPlanModel(id: $id, timeFrame: $timeFrame, startDate: $startDate, endDate: $endDate, week: $week)';
  }
}

/// @nodoc
abstract mixin class $MealPlanModelCopyWith<$Res> {
  factory $MealPlanModelCopyWith(
          MealPlanModel value, $Res Function(MealPlanModel) _then) =
      _$MealPlanModelCopyWithImpl;
  @useResult
  $Res call(
      {int id, String timeFrame, String startDate, String endDate, Week week});

  $WeekCopyWith<$Res> get week;
}

/// @nodoc
class _$MealPlanModelCopyWithImpl<$Res>
    implements $MealPlanModelCopyWith<$Res> {
  _$MealPlanModelCopyWithImpl(this._self, this._then);

  final MealPlanModel _self;
  final $Res Function(MealPlanModel) _then;

  /// Create a copy of MealPlanModel
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
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timeFrame: null == timeFrame
          ? _self.timeFrame
          : timeFrame // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      week: null == week
          ? _self.week
          : week // ignore: cast_nullable_to_non_nullable
              as Week,
    ));
  }

  /// Create a copy of MealPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekCopyWith<$Res> get week {
    return $WeekCopyWith<$Res>(_self.week, (value) {
      return _then(_self.copyWith(week: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MealPlanModel].
extension MealPlanModelPatterns on MealPlanModel {
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
    TResult Function(_MealPlan value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealPlan() when $default != null:
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
    TResult Function(_MealPlan value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealPlan():
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
    TResult? Function(_MealPlan value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealPlan() when $default != null:
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
    TResult Function(int id, String timeFrame, String startDate, String endDate,
            Week week)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealPlan() when $default != null:
        return $default(_that.id, _that.timeFrame, _that.startDate,
            _that.endDate, _that.week);
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
    TResult Function(int id, String timeFrame, String startDate, String endDate,
            Week week)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealPlan():
        return $default(_that.id, _that.timeFrame, _that.startDate,
            _that.endDate, _that.week);
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
    TResult? Function(int id, String timeFrame, String startDate,
            String endDate, Week week)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealPlan() when $default != null:
        return $default(_that.id, _that.timeFrame, _that.startDate,
            _that.endDate, _that.week);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _MealPlan implements MealPlanModel {
  const _MealPlan(
      {required this.id,
      required this.timeFrame,
      required this.startDate,
      required this.endDate,
      required this.week});
  factory _MealPlan.fromJson(Map<String, dynamic> json) =>
      _$MealPlanFromJson(json);

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

  /// Create a copy of MealPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealPlanCopyWith<_MealPlan> get copyWith =>
      __$MealPlanCopyWithImpl<_MealPlan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealPlanToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealPlan &&
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

  @override
  String toString() {
    return 'MealPlanModel(id: $id, timeFrame: $timeFrame, startDate: $startDate, endDate: $endDate, week: $week)';
  }
}

/// @nodoc
abstract mixin class _$MealPlanCopyWith<$Res>
    implements $MealPlanModelCopyWith<$Res> {
  factory _$MealPlanCopyWith(_MealPlan value, $Res Function(_MealPlan) _then) =
      __$MealPlanCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id, String timeFrame, String startDate, String endDate, Week week});

  @override
  $WeekCopyWith<$Res> get week;
}

/// @nodoc
class __$MealPlanCopyWithImpl<$Res> implements _$MealPlanCopyWith<$Res> {
  __$MealPlanCopyWithImpl(this._self, this._then);

  final _MealPlan _self;
  final $Res Function(_MealPlan) _then;

  /// Create a copy of MealPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? timeFrame = null,
    Object? startDate = null,
    Object? endDate = null,
    Object? week = null,
  }) {
    return _then(_MealPlan(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      timeFrame: null == timeFrame
          ? _self.timeFrame
          : timeFrame // ignore: cast_nullable_to_non_nullable
              as String,
      startDate: null == startDate
          ? _self.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      endDate: null == endDate
          ? _self.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String,
      week: null == week
          ? _self.week
          : week // ignore: cast_nullable_to_non_nullable
              as Week,
    ));
  }

  /// Create a copy of MealPlanModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekCopyWith<$Res> get week {
    return $WeekCopyWith<$Res>(_self.week, (value) {
      return _then(_self.copyWith(week: value));
    });
  }
}

/// @nodoc
mixin _$Week {
  Day get Monday;
  Day get Tuesday;
  Day get Wednesday;
  Day get Thursday;
  Day get Friday;
  Day get Saturday;
  Day get Sunday;

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WeekCopyWith<Week> get copyWith =>
      _$WeekCopyWithImpl<Week>(this as Week, _$identity);

  /// Serializes this Week to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Week &&
            (identical(other.Monday, Monday) || other.Monday == Monday) &&
            (identical(other.Tuesday, Tuesday) || other.Tuesday == Tuesday) &&
            (identical(other.Wednesday, Wednesday) ||
                other.Wednesday == Wednesday) &&
            (identical(other.Thursday, Thursday) ||
                other.Thursday == Thursday) &&
            (identical(other.Friday, Friday) || other.Friday == Friday) &&
            (identical(other.Saturday, Saturday) ||
                other.Saturday == Saturday) &&
            (identical(other.Sunday, Sunday) || other.Sunday == Sunday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, Monday, Tuesday, Wednesday,
      Thursday, Friday, Saturday, Sunday);

  @override
  String toString() {
    return 'Week(Monday: $Monday, Tuesday: $Tuesday, Wednesday: $Wednesday, Thursday: $Thursday, Friday: $Friday, Saturday: $Saturday, Sunday: $Sunday)';
  }
}

/// @nodoc
abstract mixin class $WeekCopyWith<$Res> {
  factory $WeekCopyWith(Week value, $Res Function(Week) _then) =
      _$WeekCopyWithImpl;
  @useResult
  $Res call(
      {Day Monday,
      Day Tuesday,
      Day Wednesday,
      Day Thursday,
      Day Friday,
      Day Saturday,
      Day Sunday});

  $DayCopyWith<$Res> get Monday;
  $DayCopyWith<$Res> get Tuesday;
  $DayCopyWith<$Res> get Wednesday;
  $DayCopyWith<$Res> get Thursday;
  $DayCopyWith<$Res> get Friday;
  $DayCopyWith<$Res> get Saturday;
  $DayCopyWith<$Res> get Sunday;
}

/// @nodoc
class _$WeekCopyWithImpl<$Res> implements $WeekCopyWith<$Res> {
  _$WeekCopyWithImpl(this._self, this._then);

  final Week _self;
  final $Res Function(Week) _then;

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Monday = null,
    Object? Tuesday = null,
    Object? Wednesday = null,
    Object? Thursday = null,
    Object? Friday = null,
    Object? Saturday = null,
    Object? Sunday = null,
  }) {
    return _then(_self.copyWith(
      Monday: null == Monday
          ? _self.Monday
          : Monday // ignore: cast_nullable_to_non_nullable
              as Day,
      Tuesday: null == Tuesday
          ? _self.Tuesday
          : Tuesday // ignore: cast_nullable_to_non_nullable
              as Day,
      Wednesday: null == Wednesday
          ? _self.Wednesday
          : Wednesday // ignore: cast_nullable_to_non_nullable
              as Day,
      Thursday: null == Thursday
          ? _self.Thursday
          : Thursday // ignore: cast_nullable_to_non_nullable
              as Day,
      Friday: null == Friday
          ? _self.Friday
          : Friday // ignore: cast_nullable_to_non_nullable
              as Day,
      Saturday: null == Saturday
          ? _self.Saturday
          : Saturday // ignore: cast_nullable_to_non_nullable
              as Day,
      Sunday: null == Sunday
          ? _self.Sunday
          : Sunday // ignore: cast_nullable_to_non_nullable
              as Day,
    ));
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Monday {
    return $DayCopyWith<$Res>(_self.Monday, (value) {
      return _then(_self.copyWith(Monday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Tuesday {
    return $DayCopyWith<$Res>(_self.Tuesday, (value) {
      return _then(_self.copyWith(Tuesday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Wednesday {
    return $DayCopyWith<$Res>(_self.Wednesday, (value) {
      return _then(_self.copyWith(Wednesday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Thursday {
    return $DayCopyWith<$Res>(_self.Thursday, (value) {
      return _then(_self.copyWith(Thursday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Friday {
    return $DayCopyWith<$Res>(_self.Friday, (value) {
      return _then(_self.copyWith(Friday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Saturday {
    return $DayCopyWith<$Res>(_self.Saturday, (value) {
      return _then(_self.copyWith(Saturday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Sunday {
    return $DayCopyWith<$Res>(_self.Sunday, (value) {
      return _then(_self.copyWith(Sunday: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Week].
extension WeekPatterns on Week {
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
    TResult Function(_Week value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Week() when $default != null:
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
    TResult Function(_Week value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Week():
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
    TResult? Function(_Week value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Week() when $default != null:
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
    TResult Function(Day Monday, Day Tuesday, Day Wednesday, Day Thursday,
            Day Friday, Day Saturday, Day Sunday)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Week() when $default != null:
        return $default(_that.Monday, _that.Tuesday, _that.Wednesday,
            _that.Thursday, _that.Friday, _that.Saturday, _that.Sunday);
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
    TResult Function(Day Monday, Day Tuesday, Day Wednesday, Day Thursday,
            Day Friday, Day Saturday, Day Sunday)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Week():
        return $default(_that.Monday, _that.Tuesday, _that.Wednesday,
            _that.Thursday, _that.Friday, _that.Saturday, _that.Sunday);
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
    TResult? Function(Day Monday, Day Tuesday, Day Wednesday, Day Thursday,
            Day Friday, Day Saturday, Day Sunday)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Week() when $default != null:
        return $default(_that.Monday, _that.Tuesday, _that.Wednesday,
            _that.Thursday, _that.Friday, _that.Saturday, _that.Sunday);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Week implements Week {
  const _Week(
      {required this.Monday,
      required this.Tuesday,
      required this.Wednesday,
      required this.Thursday,
      required this.Friday,
      required this.Saturday,
      required this.Sunday});
  factory _Week.fromJson(Map<String, dynamic> json) => _$WeekFromJson(json);

  @override
  final Day Monday;
  @override
  final Day Tuesday;
  @override
  final Day Wednesday;
  @override
  final Day Thursday;
  @override
  final Day Friday;
  @override
  final Day Saturday;
  @override
  final Day Sunday;

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WeekCopyWith<_Week> get copyWith =>
      __$WeekCopyWithImpl<_Week>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$WeekToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Week &&
            (identical(other.Monday, Monday) || other.Monday == Monday) &&
            (identical(other.Tuesday, Tuesday) || other.Tuesday == Tuesday) &&
            (identical(other.Wednesday, Wednesday) ||
                other.Wednesday == Wednesday) &&
            (identical(other.Thursday, Thursday) ||
                other.Thursday == Thursday) &&
            (identical(other.Friday, Friday) || other.Friday == Friday) &&
            (identical(other.Saturday, Saturday) ||
                other.Saturday == Saturday) &&
            (identical(other.Sunday, Sunday) || other.Sunday == Sunday));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, Monday, Tuesday, Wednesday,
      Thursday, Friday, Saturday, Sunday);

  @override
  String toString() {
    return 'Week(Monday: $Monday, Tuesday: $Tuesday, Wednesday: $Wednesday, Thursday: $Thursday, Friday: $Friday, Saturday: $Saturday, Sunday: $Sunday)';
  }
}

/// @nodoc
abstract mixin class _$WeekCopyWith<$Res> implements $WeekCopyWith<$Res> {
  factory _$WeekCopyWith(_Week value, $Res Function(_Week) _then) =
      __$WeekCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Day Monday,
      Day Tuesday,
      Day Wednesday,
      Day Thursday,
      Day Friday,
      Day Saturday,
      Day Sunday});

  @override
  $DayCopyWith<$Res> get Monday;
  @override
  $DayCopyWith<$Res> get Tuesday;
  @override
  $DayCopyWith<$Res> get Wednesday;
  @override
  $DayCopyWith<$Res> get Thursday;
  @override
  $DayCopyWith<$Res> get Friday;
  @override
  $DayCopyWith<$Res> get Saturday;
  @override
  $DayCopyWith<$Res> get Sunday;
}

/// @nodoc
class __$WeekCopyWithImpl<$Res> implements _$WeekCopyWith<$Res> {
  __$WeekCopyWithImpl(this._self, this._then);

  final _Week _self;
  final $Res Function(_Week) _then;

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? Monday = null,
    Object? Tuesday = null,
    Object? Wednesday = null,
    Object? Thursday = null,
    Object? Friday = null,
    Object? Saturday = null,
    Object? Sunday = null,
  }) {
    return _then(_Week(
      Monday: null == Monday
          ? _self.Monday
          : Monday // ignore: cast_nullable_to_non_nullable
              as Day,
      Tuesday: null == Tuesday
          ? _self.Tuesday
          : Tuesday // ignore: cast_nullable_to_non_nullable
              as Day,
      Wednesday: null == Wednesday
          ? _self.Wednesday
          : Wednesday // ignore: cast_nullable_to_non_nullable
              as Day,
      Thursday: null == Thursday
          ? _self.Thursday
          : Thursday // ignore: cast_nullable_to_non_nullable
              as Day,
      Friday: null == Friday
          ? _self.Friday
          : Friday // ignore: cast_nullable_to_non_nullable
              as Day,
      Saturday: null == Saturday
          ? _self.Saturday
          : Saturday // ignore: cast_nullable_to_non_nullable
              as Day,
      Sunday: null == Sunday
          ? _self.Sunday
          : Sunday // ignore: cast_nullable_to_non_nullable
              as Day,
    ));
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Monday {
    return $DayCopyWith<$Res>(_self.Monday, (value) {
      return _then(_self.copyWith(Monday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Tuesday {
    return $DayCopyWith<$Res>(_self.Tuesday, (value) {
      return _then(_self.copyWith(Tuesday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Wednesday {
    return $DayCopyWith<$Res>(_self.Wednesday, (value) {
      return _then(_self.copyWith(Wednesday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Thursday {
    return $DayCopyWith<$Res>(_self.Thursday, (value) {
      return _then(_self.copyWith(Thursday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Friday {
    return $DayCopyWith<$Res>(_self.Friday, (value) {
      return _then(_self.copyWith(Friday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Saturday {
    return $DayCopyWith<$Res>(_self.Saturday, (value) {
      return _then(_self.copyWith(Saturday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get Sunday {
    return $DayCopyWith<$Res>(_self.Sunday, (value) {
      return _then(_self.copyWith(Sunday: value));
    });
  }
}

/// @nodoc
mixin _$Day {
  List<Meal> get meals;
  Nutrients get nutrients;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DayCopyWith<Day> get copyWith =>
      _$DayCopyWithImpl<Day>(this as Day, _$identity);

  /// Serializes this Day to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Day &&
            const DeepCollectionEquality().equals(other.meals, meals) &&
            (identical(other.nutrients, nutrients) ||
                other.nutrients == nutrients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(meals), nutrients);

  @override
  String toString() {
    return 'Day(meals: $meals, nutrients: $nutrients)';
  }
}

/// @nodoc
abstract mixin class $DayCopyWith<$Res> {
  factory $DayCopyWith(Day value, $Res Function(Day) _then) = _$DayCopyWithImpl;
  @useResult
  $Res call({List<Meal> meals, Nutrients nutrients});

  $NutrientsCopyWith<$Res> get nutrients;
}

/// @nodoc
class _$DayCopyWithImpl<$Res> implements $DayCopyWith<$Res> {
  _$DayCopyWithImpl(this._self, this._then);

  final Day _self;
  final $Res Function(Day) _then;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
    Object? nutrients = null,
  }) {
    return _then(_self.copyWith(
      meals: null == meals
          ? _self.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      nutrients: null == nutrients
          ? _self.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as Nutrients,
    ));
  }

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutrientsCopyWith<$Res> get nutrients {
    return $NutrientsCopyWith<$Res>(_self.nutrients, (value) {
      return _then(_self.copyWith(nutrients: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Day].
extension DayPatterns on Day {
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
    TResult Function(_Day value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Day() when $default != null:
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
    TResult Function(_Day value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Day():
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
    TResult? Function(_Day value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Day() when $default != null:
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
    TResult Function(List<Meal> meals, Nutrients nutrients)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Day() when $default != null:
        return $default(_that.meals, _that.nutrients);
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
    TResult Function(List<Meal> meals, Nutrients nutrients) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Day():
        return $default(_that.meals, _that.nutrients);
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
    TResult? Function(List<Meal> meals, Nutrients nutrients)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Day() when $default != null:
        return $default(_that.meals, _that.nutrients);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Day implements Day {
  const _Day({required final List<Meal> meals, required this.nutrients})
      : _meals = meals;
  factory _Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);

  final List<Meal> _meals;
  @override
  List<Meal> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  final Nutrients nutrients;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DayCopyWith<_Day> get copyWith =>
      __$DayCopyWithImpl<_Day>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DayToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Day &&
            const DeepCollectionEquality().equals(other._meals, _meals) &&
            (identical(other.nutrients, nutrients) ||
                other.nutrients == nutrients));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_meals), nutrients);

  @override
  String toString() {
    return 'Day(meals: $meals, nutrients: $nutrients)';
  }
}

/// @nodoc
abstract mixin class _$DayCopyWith<$Res> implements $DayCopyWith<$Res> {
  factory _$DayCopyWith(_Day value, $Res Function(_Day) _then) =
      __$DayCopyWithImpl;
  @override
  @useResult
  $Res call({List<Meal> meals, Nutrients nutrients});

  @override
  $NutrientsCopyWith<$Res> get nutrients;
}

/// @nodoc
class __$DayCopyWithImpl<$Res> implements _$DayCopyWith<$Res> {
  __$DayCopyWithImpl(this._self, this._then);

  final _Day _self;
  final $Res Function(_Day) _then;

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? meals = null,
    Object? nutrients = null,
  }) {
    return _then(_Day(
      meals: null == meals
          ? _self._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
      nutrients: null == nutrients
          ? _self.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as Nutrients,
    ));
  }

  /// Create a copy of Day
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutrientsCopyWith<$Res> get nutrients {
    return $NutrientsCopyWith<$Res>(_self.nutrients, (value) {
      return _then(_self.copyWith(nutrients: value));
    });
  }
}

/// @nodoc
mixin _$Meal {
  int get id;
  String get recipe_id;
  String get imageType;
  String get title;
  int get readyInMinutes;
  int get servings;
  String get sourceUrl;

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealCopyWith<Meal> get copyWith =>
      _$MealCopyWithImpl<Meal>(this as Meal, _$identity);

  /// Serializes this Meal to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Meal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipe_id, recipe_id) ||
                other.recipe_id == recipe_id) &&
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
  int get hashCode => Object.hash(runtimeType, id, recipe_id, imageType, title,
      readyInMinutes, servings, sourceUrl);

  @override
  String toString() {
    return 'Meal(id: $id, recipe_id: $recipe_id, imageType: $imageType, title: $title, readyInMinutes: $readyInMinutes, servings: $servings, sourceUrl: $sourceUrl)';
  }
}

/// @nodoc
abstract mixin class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) _then) =
      _$MealCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String recipe_id,
      String imageType,
      String title,
      int readyInMinutes,
      int servings,
      String sourceUrl});
}

/// @nodoc
class _$MealCopyWithImpl<$Res> implements $MealCopyWith<$Res> {
  _$MealCopyWithImpl(this._self, this._then);

  final Meal _self;
  final $Res Function(Meal) _then;

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? recipe_id = null,
    Object? imageType = null,
    Object? title = null,
    Object? readyInMinutes = null,
    Object? servings = null,
    Object? sourceUrl = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipe_id: null == recipe_id
          ? _self.recipe_id
          : recipe_id // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: null == imageType
          ? _self.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readyInMinutes: null == readyInMinutes
          ? _self.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      servings: null == servings
          ? _self.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      sourceUrl: null == sourceUrl
          ? _self.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Meal].
extension MealPatterns on Meal {
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
    TResult Function(_Meal value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Meal() when $default != null:
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
    TResult Function(_Meal value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Meal():
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
    TResult? Function(_Meal value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Meal() when $default != null:
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
    TResult Function(int id, String recipe_id, String imageType, String title,
            int readyInMinutes, int servings, String sourceUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Meal() when $default != null:
        return $default(_that.id, _that.recipe_id, _that.imageType, _that.title,
            _that.readyInMinutes, _that.servings, _that.sourceUrl);
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
    TResult Function(int id, String recipe_id, String imageType, String title,
            int readyInMinutes, int servings, String sourceUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Meal():
        return $default(_that.id, _that.recipe_id, _that.imageType, _that.title,
            _that.readyInMinutes, _that.servings, _that.sourceUrl);
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
    TResult? Function(int id, String recipe_id, String imageType, String title,
            int readyInMinutes, int servings, String sourceUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Meal() when $default != null:
        return $default(_that.id, _that.recipe_id, _that.imageType, _that.title,
            _that.readyInMinutes, _that.servings, _that.sourceUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Meal implements Meal {
  const _Meal(
      {required this.id,
      required this.recipe_id,
      required this.imageType,
      required this.title,
      required this.readyInMinutes,
      required this.servings,
      required this.sourceUrl});
  factory _Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

  @override
  final int id;
  @override
  final String recipe_id;
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

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealCopyWith<_Meal> get copyWith =>
      __$MealCopyWithImpl<_Meal>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MealToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Meal &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.recipe_id, recipe_id) ||
                other.recipe_id == recipe_id) &&
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
  int get hashCode => Object.hash(runtimeType, id, recipe_id, imageType, title,
      readyInMinutes, servings, sourceUrl);

  @override
  String toString() {
    return 'Meal(id: $id, recipe_id: $recipe_id, imageType: $imageType, title: $title, readyInMinutes: $readyInMinutes, servings: $servings, sourceUrl: $sourceUrl)';
  }
}

/// @nodoc
abstract mixin class _$MealCopyWith<$Res> implements $MealCopyWith<$Res> {
  factory _$MealCopyWith(_Meal value, $Res Function(_Meal) _then) =
      __$MealCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String recipe_id,
      String imageType,
      String title,
      int readyInMinutes,
      int servings,
      String sourceUrl});
}

/// @nodoc
class __$MealCopyWithImpl<$Res> implements _$MealCopyWith<$Res> {
  __$MealCopyWithImpl(this._self, this._then);

  final _Meal _self;
  final $Res Function(_Meal) _then;

  /// Create a copy of Meal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? recipe_id = null,
    Object? imageType = null,
    Object? title = null,
    Object? readyInMinutes = null,
    Object? servings = null,
    Object? sourceUrl = null,
  }) {
    return _then(_Meal(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      recipe_id: null == recipe_id
          ? _self.recipe_id
          : recipe_id // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: null == imageType
          ? _self.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      readyInMinutes: null == readyInMinutes
          ? _self.readyInMinutes
          : readyInMinutes // ignore: cast_nullable_to_non_nullable
              as int,
      servings: null == servings
          ? _self.servings
          : servings // ignore: cast_nullable_to_non_nullable
              as int,
      sourceUrl: null == sourceUrl
          ? _self.sourceUrl
          : sourceUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Nutrients {
  double get calories;
  double get protein;
  double get fat;
  double get carbohydrates;

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NutrientsCopyWith<Nutrients> get copyWith =>
      _$NutrientsCopyWithImpl<Nutrients>(this as Nutrients, _$identity);

  /// Serializes this Nutrients to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Nutrients &&
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

  @override
  String toString() {
    return 'Nutrients(calories: $calories, protein: $protein, fat: $fat, carbohydrates: $carbohydrates)';
  }
}

/// @nodoc
abstract mixin class $NutrientsCopyWith<$Res> {
  factory $NutrientsCopyWith(Nutrients value, $Res Function(Nutrients) _then) =
      _$NutrientsCopyWithImpl;
  @useResult
  $Res call(
      {double calories, double protein, double fat, double carbohydrates});
}

/// @nodoc
class _$NutrientsCopyWithImpl<$Res> implements $NutrientsCopyWith<$Res> {
  _$NutrientsCopyWithImpl(this._self, this._then);

  final Nutrients _self;
  final $Res Function(Nutrients) _then;

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
    return _then(_self.copyWith(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      protein: null == protein
          ? _self.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      fat: null == fat
          ? _self.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrates: null == carbohydrates
          ? _self.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [Nutrients].
extension NutrientsPatterns on Nutrients {
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
    TResult Function(_Nutrients value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Nutrients() when $default != null:
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
    TResult Function(_Nutrients value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutrients():
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
    TResult? Function(_Nutrients value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutrients() when $default != null:
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
            double calories, double protein, double fat, double carbohydrates)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Nutrients() when $default != null:
        return $default(
            _that.calories, _that.protein, _that.fat, _that.carbohydrates);
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
            double calories, double protein, double fat, double carbohydrates)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutrients():
        return $default(
            _that.calories, _that.protein, _that.fat, _that.carbohydrates);
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
            double calories, double protein, double fat, double carbohydrates)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Nutrients() when $default != null:
        return $default(
            _that.calories, _that.protein, _that.fat, _that.carbohydrates);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Nutrients implements Nutrients {
  const _Nutrients(
      {required this.calories,
      required this.protein,
      required this.fat,
      required this.carbohydrates});
  factory _Nutrients.fromJson(Map<String, dynamic> json) =>
      _$NutrientsFromJson(json);

  @override
  final double calories;
  @override
  final double protein;
  @override
  final double fat;
  @override
  final double carbohydrates;

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NutrientsCopyWith<_Nutrients> get copyWith =>
      __$NutrientsCopyWithImpl<_Nutrients>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NutrientsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Nutrients &&
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

  @override
  String toString() {
    return 'Nutrients(calories: $calories, protein: $protein, fat: $fat, carbohydrates: $carbohydrates)';
  }
}

/// @nodoc
abstract mixin class _$NutrientsCopyWith<$Res>
    implements $NutrientsCopyWith<$Res> {
  factory _$NutrientsCopyWith(
          _Nutrients value, $Res Function(_Nutrients) _then) =
      __$NutrientsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {double calories, double protein, double fat, double carbohydrates});
}

/// @nodoc
class __$NutrientsCopyWithImpl<$Res> implements _$NutrientsCopyWith<$Res> {
  __$NutrientsCopyWithImpl(this._self, this._then);

  final _Nutrients _self;
  final $Res Function(_Nutrients) _then;

  /// Create a copy of Nutrients
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? calories = null,
    Object? protein = null,
    Object? fat = null,
    Object? carbohydrates = null,
  }) {
    return _then(_Nutrients(
      calories: null == calories
          ? _self.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
      protein: null == protein
          ? _self.protein
          : protein // ignore: cast_nullable_to_non_nullable
              as double,
      fat: null == fat
          ? _self.fat
          : fat // ignore: cast_nullable_to_non_nullable
              as double,
      carbohydrates: null == carbohydrates
          ? _self.carbohydrates
          : carbohydrates // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
