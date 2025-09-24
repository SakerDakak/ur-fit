// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meals_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MealsState {
  SearchRecipeModel get searchRecipeModel;
  int get currentTypeIndex;
  List<MealModel> get allMeals;
  List<NutritionData> get nutritionData;
  Recipe? get mealDetails;
  num get gainedCalories;
  num get gainedCarb;
  num get gainedProtein;
  List<MealPlanModel> get allPlans;
  String get errMessage;
  RequestState get getAllMealsState;
  RequestState get getMealDetailsState;
  RequestState get getMealPlansState; // حفظ حالة التحديدات المتعددة
  List<String> get selectedComponents;
  List<String> get selectedDifficulties;

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MealsStateCopyWith<MealsState> get copyWith =>
      _$MealsStateCopyWithImpl<MealsState>(this as MealsState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MealsState &&
            (identical(other.searchRecipeModel, searchRecipeModel) ||
                other.searchRecipeModel == searchRecipeModel) &&
            (identical(other.currentTypeIndex, currentTypeIndex) ||
                other.currentTypeIndex == currentTypeIndex) &&
            const DeepCollectionEquality().equals(other.allMeals, allMeals) &&
            const DeepCollectionEquality()
                .equals(other.nutritionData, nutritionData) &&
            (identical(other.mealDetails, mealDetails) ||
                other.mealDetails == mealDetails) &&
            (identical(other.gainedCalories, gainedCalories) ||
                other.gainedCalories == gainedCalories) &&
            (identical(other.gainedCarb, gainedCarb) ||
                other.gainedCarb == gainedCarb) &&
            (identical(other.gainedProtein, gainedProtein) ||
                other.gainedProtein == gainedProtein) &&
            const DeepCollectionEquality().equals(other.allPlans, allPlans) &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage) &&
            (identical(other.getAllMealsState, getAllMealsState) ||
                other.getAllMealsState == getAllMealsState) &&
            (identical(other.getMealDetailsState, getMealDetailsState) ||
                other.getMealDetailsState == getMealDetailsState) &&
            (identical(other.getMealPlansState, getMealPlansState) ||
                other.getMealPlansState == getMealPlansState) &&
            const DeepCollectionEquality()
                .equals(other.selectedComponents, selectedComponents) &&
            const DeepCollectionEquality()
                .equals(other.selectedDifficulties, selectedDifficulties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchRecipeModel,
      currentTypeIndex,
      const DeepCollectionEquality().hash(allMeals),
      const DeepCollectionEquality().hash(nutritionData),
      mealDetails,
      gainedCalories,
      gainedCarb,
      gainedProtein,
      const DeepCollectionEquality().hash(allPlans),
      errMessage,
      getAllMealsState,
      getMealDetailsState,
      getMealPlansState,
      const DeepCollectionEquality().hash(selectedComponents),
      const DeepCollectionEquality().hash(selectedDifficulties));

  @override
  String toString() {
    return 'MealsState(searchRecipeModel: $searchRecipeModel, currentTypeIndex: $currentTypeIndex, allMeals: $allMeals, nutritionData: $nutritionData, mealDetails: $mealDetails, gainedCalories: $gainedCalories, gainedCarb: $gainedCarb, gainedProtein: $gainedProtein, allPlans: $allPlans, errMessage: $errMessage, getAllMealsState: $getAllMealsState, getMealDetailsState: $getMealDetailsState, getMealPlansState: $getMealPlansState, selectedComponents: $selectedComponents, selectedDifficulties: $selectedDifficulties)';
  }
}

/// @nodoc
abstract mixin class $MealsStateCopyWith<$Res> {
  factory $MealsStateCopyWith(
          MealsState value, $Res Function(MealsState) _then) =
      _$MealsStateCopyWithImpl;
  @useResult
  $Res call(
      {SearchRecipeModel searchRecipeModel,
      int currentTypeIndex,
      List<MealModel> allMeals,
      List<NutritionData> nutritionData,
      Recipe? mealDetails,
      num gainedCalories,
      num gainedCarb,
      num gainedProtein,
      List<MealPlanModel> allPlans,
      String errMessage,
      RequestState getAllMealsState,
      RequestState getMealDetailsState,
      RequestState getMealPlansState,
      List<String> selectedComponents,
      List<String> selectedDifficulties});

  $SearchRecipeModelCopyWith<$Res> get searchRecipeModel;
  $RecipeCopyWith<$Res>? get mealDetails;
}

/// @nodoc
class _$MealsStateCopyWithImpl<$Res> implements $MealsStateCopyWith<$Res> {
  _$MealsStateCopyWithImpl(this._self, this._then);

  final MealsState _self;
  final $Res Function(MealsState) _then;

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchRecipeModel = null,
    Object? currentTypeIndex = null,
    Object? allMeals = null,
    Object? nutritionData = null,
    Object? mealDetails = freezed,
    Object? gainedCalories = null,
    Object? gainedCarb = null,
    Object? gainedProtein = null,
    Object? allPlans = null,
    Object? errMessage = null,
    Object? getAllMealsState = null,
    Object? getMealDetailsState = null,
    Object? getMealPlansState = null,
    Object? selectedComponents = null,
    Object? selectedDifficulties = null,
  }) {
    return _then(_self.copyWith(
      searchRecipeModel: null == searchRecipeModel
          ? _self.searchRecipeModel
          : searchRecipeModel // ignore: cast_nullable_to_non_nullable
              as SearchRecipeModel,
      currentTypeIndex: null == currentTypeIndex
          ? _self.currentTypeIndex
          : currentTypeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      allMeals: null == allMeals
          ? _self.allMeals
          : allMeals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
      nutritionData: null == nutritionData
          ? _self.nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as List<NutritionData>,
      mealDetails: freezed == mealDetails
          ? _self.mealDetails
          : mealDetails // ignore: cast_nullable_to_non_nullable
              as Recipe?,
      gainedCalories: null == gainedCalories
          ? _self.gainedCalories
          : gainedCalories // ignore: cast_nullable_to_non_nullable
              as num,
      gainedCarb: null == gainedCarb
          ? _self.gainedCarb
          : gainedCarb // ignore: cast_nullable_to_non_nullable
              as num,
      gainedProtein: null == gainedProtein
          ? _self.gainedProtein
          : gainedProtein // ignore: cast_nullable_to_non_nullable
              as num,
      allPlans: null == allPlans
          ? _self.allPlans
          : allPlans // ignore: cast_nullable_to_non_nullable
              as List<MealPlanModel>,
      errMessage: null == errMessage
          ? _self.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
      getAllMealsState: null == getAllMealsState
          ? _self.getAllMealsState
          : getAllMealsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getMealDetailsState: null == getMealDetailsState
          ? _self.getMealDetailsState
          : getMealDetailsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getMealPlansState: null == getMealPlansState
          ? _self.getMealPlansState
          : getMealPlansState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      selectedComponents: null == selectedComponents
          ? _self.selectedComponents
          : selectedComponents // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedDifficulties: null == selectedDifficulties
          ? _self.selectedDifficulties
          : selectedDifficulties // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchRecipeModelCopyWith<$Res> get searchRecipeModel {
    return $SearchRecipeModelCopyWith<$Res>(_self.searchRecipeModel, (value) {
      return _then(_self.copyWith(searchRecipeModel: value));
    });
  }

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res>? get mealDetails {
    if (_self.mealDetails == null) {
      return null;
    }

    return $RecipeCopyWith<$Res>(_self.mealDetails!, (value) {
      return _then(_self.copyWith(mealDetails: value));
    });
  }
}

/// Adds pattern-matching-related methods to [MealsState].
extension MealsStatePatterns on MealsState {
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
    TResult Function(_MealsState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealsState() when $default != null:
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
    TResult Function(_MealsState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealsState():
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
    TResult? Function(_MealsState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealsState() when $default != null:
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
            SearchRecipeModel searchRecipeModel,
            int currentTypeIndex,
            List<MealModel> allMeals,
            List<NutritionData> nutritionData,
            Recipe? mealDetails,
            num gainedCalories,
            num gainedCarb,
            num gainedProtein,
            List<MealPlanModel> allPlans,
            String errMessage,
            RequestState getAllMealsState,
            RequestState getMealDetailsState,
            RequestState getMealPlansState,
            List<String> selectedComponents,
            List<String> selectedDifficulties)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MealsState() when $default != null:
        return $default(
            _that.searchRecipeModel,
            _that.currentTypeIndex,
            _that.allMeals,
            _that.nutritionData,
            _that.mealDetails,
            _that.gainedCalories,
            _that.gainedCarb,
            _that.gainedProtein,
            _that.allPlans,
            _that.errMessage,
            _that.getAllMealsState,
            _that.getMealDetailsState,
            _that.getMealPlansState,
            _that.selectedComponents,
            _that.selectedDifficulties);
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
            SearchRecipeModel searchRecipeModel,
            int currentTypeIndex,
            List<MealModel> allMeals,
            List<NutritionData> nutritionData,
            Recipe? mealDetails,
            num gainedCalories,
            num gainedCarb,
            num gainedProtein,
            List<MealPlanModel> allPlans,
            String errMessage,
            RequestState getAllMealsState,
            RequestState getMealDetailsState,
            RequestState getMealPlansState,
            List<String> selectedComponents,
            List<String> selectedDifficulties)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealsState():
        return $default(
            _that.searchRecipeModel,
            _that.currentTypeIndex,
            _that.allMeals,
            _that.nutritionData,
            _that.mealDetails,
            _that.gainedCalories,
            _that.gainedCarb,
            _that.gainedProtein,
            _that.allPlans,
            _that.errMessage,
            _that.getAllMealsState,
            _that.getMealDetailsState,
            _that.getMealPlansState,
            _that.selectedComponents,
            _that.selectedDifficulties);
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
            SearchRecipeModel searchRecipeModel,
            int currentTypeIndex,
            List<MealModel> allMeals,
            List<NutritionData> nutritionData,
            Recipe? mealDetails,
            num gainedCalories,
            num gainedCarb,
            num gainedProtein,
            List<MealPlanModel> allPlans,
            String errMessage,
            RequestState getAllMealsState,
            RequestState getMealDetailsState,
            RequestState getMealPlansState,
            List<String> selectedComponents,
            List<String> selectedDifficulties)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MealsState() when $default != null:
        return $default(
            _that.searchRecipeModel,
            _that.currentTypeIndex,
            _that.allMeals,
            _that.nutritionData,
            _that.mealDetails,
            _that.gainedCalories,
            _that.gainedCarb,
            _that.gainedProtein,
            _that.allPlans,
            _that.errMessage,
            _that.getAllMealsState,
            _that.getMealDetailsState,
            _that.getMealPlansState,
            _that.selectedComponents,
            _that.selectedDifficulties);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MealsState implements MealsState {
  const _MealsState(
      {required this.searchRecipeModel,
      this.currentTypeIndex = 0,
      final List<MealModel> allMeals = const [],
      final List<NutritionData> nutritionData = const [],
      this.mealDetails = null,
      this.gainedCalories = 0,
      this.gainedCarb = 0,
      this.gainedProtein = 0,
      final List<MealPlanModel> allPlans = const [],
      this.errMessage = '',
      this.getAllMealsState = RequestState.initial,
      this.getMealDetailsState = RequestState.initial,
      this.getMealPlansState = RequestState.initial,
      final List<String> selectedComponents = const [],
      final List<String> selectedDifficulties = const []})
      : _allMeals = allMeals,
        _nutritionData = nutritionData,
        _allPlans = allPlans,
        _selectedComponents = selectedComponents,
        _selectedDifficulties = selectedDifficulties;

  @override
  final SearchRecipeModel searchRecipeModel;
  @override
  @JsonKey()
  final int currentTypeIndex;
  final List<MealModel> _allMeals;
  @override
  @JsonKey()
  List<MealModel> get allMeals {
    if (_allMeals is EqualUnmodifiableListView) return _allMeals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allMeals);
  }

  final List<NutritionData> _nutritionData;
  @override
  @JsonKey()
  List<NutritionData> get nutritionData {
    if (_nutritionData is EqualUnmodifiableListView) return _nutritionData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nutritionData);
  }

  @override
  @JsonKey()
  final Recipe? mealDetails;
  @override
  @JsonKey()
  final num gainedCalories;
  @override
  @JsonKey()
  final num gainedCarb;
  @override
  @JsonKey()
  final num gainedProtein;
  final List<MealPlanModel> _allPlans;
  @override
  @JsonKey()
  List<MealPlanModel> get allPlans {
    if (_allPlans is EqualUnmodifiableListView) return _allPlans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_allPlans);
  }

  @override
  @JsonKey()
  final String errMessage;
  @override
  @JsonKey()
  final RequestState getAllMealsState;
  @override
  @JsonKey()
  final RequestState getMealDetailsState;
  @override
  @JsonKey()
  final RequestState getMealPlansState;
// حفظ حالة التحديدات المتعددة
  final List<String> _selectedComponents;
// حفظ حالة التحديدات المتعددة
  @override
  @JsonKey()
  List<String> get selectedComponents {
    if (_selectedComponents is EqualUnmodifiableListView)
      return _selectedComponents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedComponents);
  }

  final List<String> _selectedDifficulties;
  @override
  @JsonKey()
  List<String> get selectedDifficulties {
    if (_selectedDifficulties is EqualUnmodifiableListView)
      return _selectedDifficulties;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedDifficulties);
  }

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MealsStateCopyWith<_MealsState> get copyWith =>
      __$MealsStateCopyWithImpl<_MealsState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MealsState &&
            (identical(other.searchRecipeModel, searchRecipeModel) ||
                other.searchRecipeModel == searchRecipeModel) &&
            (identical(other.currentTypeIndex, currentTypeIndex) ||
                other.currentTypeIndex == currentTypeIndex) &&
            const DeepCollectionEquality().equals(other._allMeals, _allMeals) &&
            const DeepCollectionEquality()
                .equals(other._nutritionData, _nutritionData) &&
            (identical(other.mealDetails, mealDetails) ||
                other.mealDetails == mealDetails) &&
            (identical(other.gainedCalories, gainedCalories) ||
                other.gainedCalories == gainedCalories) &&
            (identical(other.gainedCarb, gainedCarb) ||
                other.gainedCarb == gainedCarb) &&
            (identical(other.gainedProtein, gainedProtein) ||
                other.gainedProtein == gainedProtein) &&
            const DeepCollectionEquality().equals(other._allPlans, _allPlans) &&
            (identical(other.errMessage, errMessage) ||
                other.errMessage == errMessage) &&
            (identical(other.getAllMealsState, getAllMealsState) ||
                other.getAllMealsState == getAllMealsState) &&
            (identical(other.getMealDetailsState, getMealDetailsState) ||
                other.getMealDetailsState == getMealDetailsState) &&
            (identical(other.getMealPlansState, getMealPlansState) ||
                other.getMealPlansState == getMealPlansState) &&
            const DeepCollectionEquality()
                .equals(other._selectedComponents, _selectedComponents) &&
            const DeepCollectionEquality()
                .equals(other._selectedDifficulties, _selectedDifficulties));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      searchRecipeModel,
      currentTypeIndex,
      const DeepCollectionEquality().hash(_allMeals),
      const DeepCollectionEquality().hash(_nutritionData),
      mealDetails,
      gainedCalories,
      gainedCarb,
      gainedProtein,
      const DeepCollectionEquality().hash(_allPlans),
      errMessage,
      getAllMealsState,
      getMealDetailsState,
      getMealPlansState,
      const DeepCollectionEquality().hash(_selectedComponents),
      const DeepCollectionEquality().hash(_selectedDifficulties));

  @override
  String toString() {
    return 'MealsState(searchRecipeModel: $searchRecipeModel, currentTypeIndex: $currentTypeIndex, allMeals: $allMeals, nutritionData: $nutritionData, mealDetails: $mealDetails, gainedCalories: $gainedCalories, gainedCarb: $gainedCarb, gainedProtein: $gainedProtein, allPlans: $allPlans, errMessage: $errMessage, getAllMealsState: $getAllMealsState, getMealDetailsState: $getMealDetailsState, getMealPlansState: $getMealPlansState, selectedComponents: $selectedComponents, selectedDifficulties: $selectedDifficulties)';
  }
}

/// @nodoc
abstract mixin class _$MealsStateCopyWith<$Res>
    implements $MealsStateCopyWith<$Res> {
  factory _$MealsStateCopyWith(
          _MealsState value, $Res Function(_MealsState) _then) =
      __$MealsStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {SearchRecipeModel searchRecipeModel,
      int currentTypeIndex,
      List<MealModel> allMeals,
      List<NutritionData> nutritionData,
      Recipe? mealDetails,
      num gainedCalories,
      num gainedCarb,
      num gainedProtein,
      List<MealPlanModel> allPlans,
      String errMessage,
      RequestState getAllMealsState,
      RequestState getMealDetailsState,
      RequestState getMealPlansState,
      List<String> selectedComponents,
      List<String> selectedDifficulties});

  @override
  $SearchRecipeModelCopyWith<$Res> get searchRecipeModel;
  @override
  $RecipeCopyWith<$Res>? get mealDetails;
}

/// @nodoc
class __$MealsStateCopyWithImpl<$Res> implements _$MealsStateCopyWith<$Res> {
  __$MealsStateCopyWithImpl(this._self, this._then);

  final _MealsState _self;
  final $Res Function(_MealsState) _then;

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? searchRecipeModel = null,
    Object? currentTypeIndex = null,
    Object? allMeals = null,
    Object? nutritionData = null,
    Object? mealDetails = freezed,
    Object? gainedCalories = null,
    Object? gainedCarb = null,
    Object? gainedProtein = null,
    Object? allPlans = null,
    Object? errMessage = null,
    Object? getAllMealsState = null,
    Object? getMealDetailsState = null,
    Object? getMealPlansState = null,
    Object? selectedComponents = null,
    Object? selectedDifficulties = null,
  }) {
    return _then(_MealsState(
      searchRecipeModel: null == searchRecipeModel
          ? _self.searchRecipeModel
          : searchRecipeModel // ignore: cast_nullable_to_non_nullable
              as SearchRecipeModel,
      currentTypeIndex: null == currentTypeIndex
          ? _self.currentTypeIndex
          : currentTypeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      allMeals: null == allMeals
          ? _self._allMeals
          : allMeals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
      nutritionData: null == nutritionData
          ? _self._nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as List<NutritionData>,
      mealDetails: freezed == mealDetails
          ? _self.mealDetails
          : mealDetails // ignore: cast_nullable_to_non_nullable
              as Recipe?,
      gainedCalories: null == gainedCalories
          ? _self.gainedCalories
          : gainedCalories // ignore: cast_nullable_to_non_nullable
              as num,
      gainedCarb: null == gainedCarb
          ? _self.gainedCarb
          : gainedCarb // ignore: cast_nullable_to_non_nullable
              as num,
      gainedProtein: null == gainedProtein
          ? _self.gainedProtein
          : gainedProtein // ignore: cast_nullable_to_non_nullable
              as num,
      allPlans: null == allPlans
          ? _self._allPlans
          : allPlans // ignore: cast_nullable_to_non_nullable
              as List<MealPlanModel>,
      errMessage: null == errMessage
          ? _self.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
      getAllMealsState: null == getAllMealsState
          ? _self.getAllMealsState
          : getAllMealsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getMealDetailsState: null == getMealDetailsState
          ? _self.getMealDetailsState
          : getMealDetailsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getMealPlansState: null == getMealPlansState
          ? _self.getMealPlansState
          : getMealPlansState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      selectedComponents: null == selectedComponents
          ? _self._selectedComponents
          : selectedComponents // ignore: cast_nullable_to_non_nullable
              as List<String>,
      selectedDifficulties: null == selectedDifficulties
          ? _self._selectedDifficulties
          : selectedDifficulties // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchRecipeModelCopyWith<$Res> get searchRecipeModel {
    return $SearchRecipeModelCopyWith<$Res>(_self.searchRecipeModel, (value) {
      return _then(_self.copyWith(searchRecipeModel: value));
    });
  }

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res>? get mealDetails {
    if (_self.mealDetails == null) {
      return null;
    }

    return $RecipeCopyWith<$Res>(_self.mealDetails!, (value) {
      return _then(_self.copyWith(mealDetails: value));
    });
  }
}

// dart format on
