// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meals_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MealsState {
  SearchRecipeModel get searchRecipeModel => throw _privateConstructorUsedError;
  int get currentTypeIndex => throw _privateConstructorUsedError;
  List<MealModel> get allMeals => throw _privateConstructorUsedError;
  List<NutritionData> get nutritionData => throw _privateConstructorUsedError;
  Recipe? get mealDetails => throw _privateConstructorUsedError;
  num get gainedCalories => throw _privateConstructorUsedError;
  num get gainedCarb => throw _privateConstructorUsedError;
  num get gainedProtein => throw _privateConstructorUsedError;
  List<MealPlanModel> get allPlans => throw _privateConstructorUsedError;
  String get errMessage => throw _privateConstructorUsedError;
  RequestState get getAllMealsState => throw _privateConstructorUsedError;
  RequestState get getMealDetailsState => throw _privateConstructorUsedError;
  RequestState get getMealPlansState => throw _privateConstructorUsedError;

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MealsStateCopyWith<MealsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsStateCopyWith<$Res> {
  factory $MealsStateCopyWith(
          MealsState value, $Res Function(MealsState) then) =
      _$MealsStateCopyWithImpl<$Res, MealsState>;
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
      RequestState getMealPlansState});

  $SearchRecipeModelCopyWith<$Res> get searchRecipeModel;
  $RecipeCopyWith<$Res>? get mealDetails;
}

/// @nodoc
class _$MealsStateCopyWithImpl<$Res, $Val extends MealsState>
    implements $MealsStateCopyWith<$Res> {
  _$MealsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
  }) {
    return _then(_value.copyWith(
      searchRecipeModel: null == searchRecipeModel
          ? _value.searchRecipeModel
          : searchRecipeModel // ignore: cast_nullable_to_non_nullable
              as SearchRecipeModel,
      currentTypeIndex: null == currentTypeIndex
          ? _value.currentTypeIndex
          : currentTypeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      allMeals: null == allMeals
          ? _value.allMeals
          : allMeals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
      nutritionData: null == nutritionData
          ? _value.nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as List<NutritionData>,
      mealDetails: freezed == mealDetails
          ? _value.mealDetails
          : mealDetails // ignore: cast_nullable_to_non_nullable
              as Recipe?,
      gainedCalories: null == gainedCalories
          ? _value.gainedCalories
          : gainedCalories // ignore: cast_nullable_to_non_nullable
              as num,
      gainedCarb: null == gainedCarb
          ? _value.gainedCarb
          : gainedCarb // ignore: cast_nullable_to_non_nullable
              as num,
      gainedProtein: null == gainedProtein
          ? _value.gainedProtein
          : gainedProtein // ignore: cast_nullable_to_non_nullable
              as num,
      allPlans: null == allPlans
          ? _value.allPlans
          : allPlans // ignore: cast_nullable_to_non_nullable
              as List<MealPlanModel>,
      errMessage: null == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
      getAllMealsState: null == getAllMealsState
          ? _value.getAllMealsState
          : getAllMealsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getMealDetailsState: null == getMealDetailsState
          ? _value.getMealDetailsState
          : getMealDetailsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getMealPlansState: null == getMealPlansState
          ? _value.getMealPlansState
          : getMealPlansState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ) as $Val);
  }

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchRecipeModelCopyWith<$Res> get searchRecipeModel {
    return $SearchRecipeModelCopyWith<$Res>(_value.searchRecipeModel, (value) {
      return _then(_value.copyWith(searchRecipeModel: value) as $Val);
    });
  }

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res>? get mealDetails {
    if (_value.mealDetails == null) {
      return null;
    }

    return $RecipeCopyWith<$Res>(_value.mealDetails!, (value) {
      return _then(_value.copyWith(mealDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MealsStateImplCopyWith<$Res>
    implements $MealsStateCopyWith<$Res> {
  factory _$$MealsStateImplCopyWith(
          _$MealsStateImpl value, $Res Function(_$MealsStateImpl) then) =
      __$$MealsStateImplCopyWithImpl<$Res>;
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
      RequestState getMealPlansState});

  @override
  $SearchRecipeModelCopyWith<$Res> get searchRecipeModel;
  @override
  $RecipeCopyWith<$Res>? get mealDetails;
}

/// @nodoc
class __$$MealsStateImplCopyWithImpl<$Res>
    extends _$MealsStateCopyWithImpl<$Res, _$MealsStateImpl>
    implements _$$MealsStateImplCopyWith<$Res> {
  __$$MealsStateImplCopyWithImpl(
      _$MealsStateImpl _value, $Res Function(_$MealsStateImpl) _then)
      : super(_value, _then);

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
  }) {
    return _then(_$MealsStateImpl(
      searchRecipeModel: null == searchRecipeModel
          ? _value.searchRecipeModel
          : searchRecipeModel // ignore: cast_nullable_to_non_nullable
              as SearchRecipeModel,
      currentTypeIndex: null == currentTypeIndex
          ? _value.currentTypeIndex
          : currentTypeIndex // ignore: cast_nullable_to_non_nullable
              as int,
      allMeals: null == allMeals
          ? _value._allMeals
          : allMeals // ignore: cast_nullable_to_non_nullable
              as List<MealModel>,
      nutritionData: null == nutritionData
          ? _value._nutritionData
          : nutritionData // ignore: cast_nullable_to_non_nullable
              as List<NutritionData>,
      mealDetails: freezed == mealDetails
          ? _value.mealDetails
          : mealDetails // ignore: cast_nullable_to_non_nullable
              as Recipe?,
      gainedCalories: null == gainedCalories
          ? _value.gainedCalories
          : gainedCalories // ignore: cast_nullable_to_non_nullable
              as num,
      gainedCarb: null == gainedCarb
          ? _value.gainedCarb
          : gainedCarb // ignore: cast_nullable_to_non_nullable
              as num,
      gainedProtein: null == gainedProtein
          ? _value.gainedProtein
          : gainedProtein // ignore: cast_nullable_to_non_nullable
              as num,
      allPlans: null == allPlans
          ? _value._allPlans
          : allPlans // ignore: cast_nullable_to_non_nullable
              as List<MealPlanModel>,
      errMessage: null == errMessage
          ? _value.errMessage
          : errMessage // ignore: cast_nullable_to_non_nullable
              as String,
      getAllMealsState: null == getAllMealsState
          ? _value.getAllMealsState
          : getAllMealsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getMealDetailsState: null == getMealDetailsState
          ? _value.getMealDetailsState
          : getMealDetailsState // ignore: cast_nullable_to_non_nullable
              as RequestState,
      getMealPlansState: null == getMealPlansState
          ? _value.getMealPlansState
          : getMealPlansState // ignore: cast_nullable_to_non_nullable
              as RequestState,
    ));
  }
}

/// @nodoc

class _$MealsStateImpl implements _MealsState {
  const _$MealsStateImpl(
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
      this.getMealPlansState = RequestState.initial})
      : _allMeals = allMeals,
        _nutritionData = nutritionData,
        _allPlans = allPlans;

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

  @override
  String toString() {
    return 'MealsState(searchRecipeModel: $searchRecipeModel, currentTypeIndex: $currentTypeIndex, allMeals: $allMeals, nutritionData: $nutritionData, mealDetails: $mealDetails, gainedCalories: $gainedCalories, gainedCarb: $gainedCarb, gainedProtein: $gainedProtein, allPlans: $allPlans, errMessage: $errMessage, getAllMealsState: $getAllMealsState, getMealDetailsState: $getMealDetailsState, getMealPlansState: $getMealPlansState)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealsStateImpl &&
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
                other.getMealPlansState == getMealPlansState));
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
      getMealPlansState);

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MealsStateImplCopyWith<_$MealsStateImpl> get copyWith =>
      __$$MealsStateImplCopyWithImpl<_$MealsStateImpl>(this, _$identity);
}

abstract class _MealsState implements MealsState {
  const factory _MealsState(
      {required final SearchRecipeModel searchRecipeModel,
      final int currentTypeIndex,
      final List<MealModel> allMeals,
      final List<NutritionData> nutritionData,
      final Recipe? mealDetails,
      final num gainedCalories,
      final num gainedCarb,
      final num gainedProtein,
      final List<MealPlanModel> allPlans,
      final String errMessage,
      final RequestState getAllMealsState,
      final RequestState getMealDetailsState,
      final RequestState getMealPlansState}) = _$MealsStateImpl;

  @override
  SearchRecipeModel get searchRecipeModel;
  @override
  int get currentTypeIndex;
  @override
  List<MealModel> get allMeals;
  @override
  List<NutritionData> get nutritionData;
  @override
  Recipe? get mealDetails;
  @override
  num get gainedCalories;
  @override
  num get gainedCarb;
  @override
  num get gainedProtein;
  @override
  List<MealPlanModel> get allPlans;
  @override
  String get errMessage;
  @override
  RequestState get getAllMealsState;
  @override
  RequestState get getMealDetailsState;
  @override
  RequestState get getMealPlansState;

  /// Create a copy of MealsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MealsStateImplCopyWith<_$MealsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
