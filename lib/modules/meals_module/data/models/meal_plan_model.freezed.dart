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

/// @nodoc
mixin _$MealPlan {
  int get id;
  String get timeFrame;
  String get startDate;
  String get endDate;
  Week get week;

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealPlanCopyWith<MealPlan> get copyWith =>
      _$MealPlanCopyWithImpl<MealPlan>(this as MealPlan, _$identity);

  /// Serializes this MealPlan to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealPlan &&
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
    return 'MealPlan(id: $id, timeFrame: $timeFrame, startDate: $startDate, endDate: $endDate, week: $week)';
  }
}

/// @nodoc
abstract mixin class $MealPlanCopyWith<$Res> {
  factory $MealPlanCopyWith(MealPlan value, $Res Function(MealPlan) _then) =
      _$MealPlanCopyWithImpl;
  @useResult
  $Res call(
      {int id, String timeFrame, String startDate, String endDate, Week week});

  $WeekCopyWith<$Res> get week;
}

/// @nodoc
class _$MealPlanCopyWithImpl<$Res> implements $MealPlanCopyWith<$Res> {
  _$MealPlanCopyWithImpl(this._self, this._then);

  final MealPlan _self;
  final $Res Function(MealPlan) _then;

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

  /// Create a copy of MealPlan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WeekCopyWith<$Res> get week {
    return $WeekCopyWith<$Res>(_self.week, (value) {
      return _then(_self.copyWith(week: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MealPlan].
extension MealPlanPatterns on MealPlan {
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
class _MealPlan implements MealPlan {
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

  /// Create a copy of MealPlan
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
    return 'MealPlan(id: $id, timeFrame: $timeFrame, startDate: $startDate, endDate: $endDate, week: $week)';
  }
}

/// @nodoc
abstract mixin class _$MealPlanCopyWith<$Res>
    implements $MealPlanCopyWith<$Res> {
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

  /// Create a copy of MealPlan
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

  /// Create a copy of MealPlan
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
  Day get monday;
  Day get tuesday;
  Day get wednesday;
  Day get thursday;
  Day get friday;
  Day get saturday;
  Day get sunday;

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

  @override
  String toString() {
    return 'Week(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday, saturday: $saturday, sunday: $sunday)';
  }
}

/// @nodoc
abstract mixin class $WeekCopyWith<$Res> {
  factory $WeekCopyWith(Week value, $Res Function(Week) _then) =
      _$WeekCopyWithImpl;
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
class _$WeekCopyWithImpl<$Res> implements $WeekCopyWith<$Res> {
  _$WeekCopyWithImpl(this._self, this._then);

  final Week _self;
  final $Res Function(Week) _then;

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
    return _then(_self.copyWith(
      monday: null == monday
          ? _self.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as Day,
      tuesday: null == tuesday
          ? _self.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as Day,
      wednesday: null == wednesday
          ? _self.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as Day,
      thursday: null == thursday
          ? _self.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as Day,
      friday: null == friday
          ? _self.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as Day,
      saturday: null == saturday
          ? _self.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as Day,
      sunday: null == sunday
          ? _self.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as Day,
    ));
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get monday {
    return $DayCopyWith<$Res>(_self.monday, (value) {
      return _then(_self.copyWith(monday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get tuesday {
    return $DayCopyWith<$Res>(_self.tuesday, (value) {
      return _then(_self.copyWith(tuesday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get wednesday {
    return $DayCopyWith<$Res>(_self.wednesday, (value) {
      return _then(_self.copyWith(wednesday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get thursday {
    return $DayCopyWith<$Res>(_self.thursday, (value) {
      return _then(_self.copyWith(thursday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get friday {
    return $DayCopyWith<$Res>(_self.friday, (value) {
      return _then(_self.copyWith(friday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get saturday {
    return $DayCopyWith<$Res>(_self.saturday, (value) {
      return _then(_self.copyWith(saturday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get sunday {
    return $DayCopyWith<$Res>(_self.sunday, (value) {
      return _then(_self.copyWith(sunday: value));
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
    TResult Function(Day monday, Day tuesday, Day wednesday, Day thursday,
            Day friday, Day saturday, Day sunday)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Week() when $default != null:
        return $default(_that.monday, _that.tuesday, _that.wednesday,
            _that.thursday, _that.friday, _that.saturday, _that.sunday);
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
    TResult Function(Day monday, Day tuesday, Day wednesday, Day thursday,
            Day friday, Day saturday, Day sunday)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Week():
        return $default(_that.monday, _that.tuesday, _that.wednesday,
            _that.thursday, _that.friday, _that.saturday, _that.sunday);
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
    TResult? Function(Day monday, Day tuesday, Day wednesday, Day thursday,
            Day friday, Day saturday, Day sunday)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Week() when $default != null:
        return $default(_that.monday, _that.tuesday, _that.wednesday,
            _that.thursday, _that.friday, _that.saturday, _that.sunday);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Week implements Week {
  const _Week(
      {required this.monday,
      required this.tuesday,
      required this.wednesday,
      required this.thursday,
      required this.friday,
      required this.saturday,
      required this.sunday});
  factory _Week.fromJson(Map<String, dynamic> json) => _$WeekFromJson(json);

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

  @override
  String toString() {
    return 'Week(monday: $monday, tuesday: $tuesday, wednesday: $wednesday, thursday: $thursday, friday: $friday, saturday: $saturday, sunday: $sunday)';
  }
}

/// @nodoc
abstract mixin class _$WeekCopyWith<$Res> implements $WeekCopyWith<$Res> {
  factory _$WeekCopyWith(_Week value, $Res Function(_Week) _then) =
      __$WeekCopyWithImpl;
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
class __$WeekCopyWithImpl<$Res> implements _$WeekCopyWith<$Res> {
  __$WeekCopyWithImpl(this._self, this._then);

  final _Week _self;
  final $Res Function(_Week) _then;

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? monday = null,
    Object? tuesday = null,
    Object? wednesday = null,
    Object? thursday = null,
    Object? friday = null,
    Object? saturday = null,
    Object? sunday = null,
  }) {
    return _then(_Week(
      monday: null == monday
          ? _self.monday
          : monday // ignore: cast_nullable_to_non_nullable
              as Day,
      tuesday: null == tuesday
          ? _self.tuesday
          : tuesday // ignore: cast_nullable_to_non_nullable
              as Day,
      wednesday: null == wednesday
          ? _self.wednesday
          : wednesday // ignore: cast_nullable_to_non_nullable
              as Day,
      thursday: null == thursday
          ? _self.thursday
          : thursday // ignore: cast_nullable_to_non_nullable
              as Day,
      friday: null == friday
          ? _self.friday
          : friday // ignore: cast_nullable_to_non_nullable
              as Day,
      saturday: null == saturday
          ? _self.saturday
          : saturday // ignore: cast_nullable_to_non_nullable
              as Day,
      sunday: null == sunday
          ? _self.sunday
          : sunday // ignore: cast_nullable_to_non_nullable
              as Day,
    ));
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get monday {
    return $DayCopyWith<$Res>(_self.monday, (value) {
      return _then(_self.copyWith(monday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get tuesday {
    return $DayCopyWith<$Res>(_self.tuesday, (value) {
      return _then(_self.copyWith(tuesday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get wednesday {
    return $DayCopyWith<$Res>(_self.wednesday, (value) {
      return _then(_self.copyWith(wednesday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get thursday {
    return $DayCopyWith<$Res>(_self.thursday, (value) {
      return _then(_self.copyWith(thursday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get friday {
    return $DayCopyWith<$Res>(_self.friday, (value) {
      return _then(_self.copyWith(friday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get saturday {
    return $DayCopyWith<$Res>(_self.saturday, (value) {
      return _then(_self.copyWith(saturday: value));
    });
  }

  /// Create a copy of Week
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DayCopyWith<$Res> get sunday {
    return $DayCopyWith<$Res>(_self.sunday, (value) {
      return _then(_self.copyWith(sunday: value));
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
  @JsonKey(name: 'recipe_id')
  String get recipeId;
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

  @override
  String toString() {
    return 'Meal(id: $id, recipeId: $recipeId, imageType: $imageType, title: $title, readyInMinutes: $readyInMinutes, servings: $servings, sourceUrl: $sourceUrl)';
  }
}

/// @nodoc
abstract mixin class $MealCopyWith<$Res> {
  factory $MealCopyWith(Meal value, $Res Function(Meal) _then) =
      _$MealCopyWithImpl;
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
    Object? recipeId = null,
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
      recipeId: null == recipeId
          ? _self.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
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
    TResult Function(
            int id,
            @JsonKey(name: 'recipe_id') String recipeId,
            String imageType,
            String title,
            int readyInMinutes,
            int servings,
            String sourceUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Meal() when $default != null:
        return $default(_that.id, _that.recipeId, _that.imageType, _that.title,
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
    TResult Function(
            int id,
            @JsonKey(name: 'recipe_id') String recipeId,
            String imageType,
            String title,
            int readyInMinutes,
            int servings,
            String sourceUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Meal():
        return $default(_that.id, _that.recipeId, _that.imageType, _that.title,
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
    TResult? Function(
            int id,
            @JsonKey(name: 'recipe_id') String recipeId,
            String imageType,
            String title,
            int readyInMinutes,
            int servings,
            String sourceUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Meal() when $default != null:
        return $default(_that.id, _that.recipeId, _that.imageType, _that.title,
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
      @JsonKey(name: 'recipe_id') required this.recipeId,
      required this.imageType,
      required this.title,
      required this.readyInMinutes,
      required this.servings,
      required this.sourceUrl});
  factory _Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

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

  @override
  String toString() {
    return 'Meal(id: $id, recipeId: $recipeId, imageType: $imageType, title: $title, readyInMinutes: $readyInMinutes, servings: $servings, sourceUrl: $sourceUrl)';
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
      @JsonKey(name: 'recipe_id') String recipeId,
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
    Object? recipeId = null,
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
      recipeId: null == recipeId
          ? _self.recipeId
          : recipeId // ignore: cast_nullable_to_non_nullable
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
