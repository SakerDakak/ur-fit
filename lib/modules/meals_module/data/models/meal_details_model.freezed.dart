// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meal_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Recipe {
  bool get vegetarian;
  bool get vegan;
  bool get glutenFree;
  bool get dairyFree;
  bool get veryHealthy;
  bool get cheap;
  bool get veryPopular;
  bool get sustainable;
  bool get lowFodmap;
  int get weightWatcherSmartPoints;
  String get gaps;
  int? get preparationMinutes;
  int? get cookingMinutes;
  int get aggregateLikes;
  int get healthScore;
  String get creditsText;
  String get sourceName;
  double get pricePerServing;
  List<Ingredient> get extendedIngredients;
  int get id;
  String get title;
  int get readyInMinutes;
  int get servings;
  String get sourceUrl;
  String get image;
  String get imageType;
  NutritionsModel get nutrition;
  String get summary;
  List<String> get cuisines;
  List<String> get dishTypes;
  List<String> get diets;
  List<String> get occasions;
  List<AnalyzedInstruction> get analyzedInstructions;

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<Recipe> get copyWith =>
      _$RecipeCopyWithImpl<Recipe>(this as Recipe, _$identity);

  /// Serializes this Recipe to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Recipe &&
            (identical(other.vegetarian, vegetarian) ||
                other.vegetarian == vegetarian) &&
            (identical(other.vegan, vegan) || other.vegan == vegan) &&
            (identical(other.glutenFree, glutenFree) ||
                other.glutenFree == glutenFree) &&
            (identical(other.dairyFree, dairyFree) ||
                other.dairyFree == dairyFree) &&
            (identical(other.veryHealthy, veryHealthy) ||
                other.veryHealthy == veryHealthy) &&
            (identical(other.cheap, cheap) || other.cheap == cheap) &&
            (identical(other.veryPopular, veryPopular) ||
                other.veryPopular == veryPopular) &&
            (identical(other.sustainable, sustainable) ||
                other.sustainable == sustainable) &&
            (identical(other.lowFodmap, lowFodmap) ||
                other.lowFodmap == lowFodmap) &&
            (identical(
                    other.weightWatcherSmartPoints, weightWatcherSmartPoints) ||
                other.weightWatcherSmartPoints == weightWatcherSmartPoints) &&
            (identical(other.gaps, gaps) || other.gaps == gaps) &&
            (identical(other.preparationMinutes, preparationMinutes) ||
                other.preparationMinutes == preparationMinutes) &&
            (identical(other.cookingMinutes, cookingMinutes) ||
                other.cookingMinutes == cookingMinutes) &&
            (identical(other.aggregateLikes, aggregateLikes) ||
                other.aggregateLikes == aggregateLikes) &&
            (identical(other.healthScore, healthScore) ||
                other.healthScore == healthScore) &&
            (identical(other.creditsText, creditsText) ||
                other.creditsText == creditsText) &&
            (identical(other.sourceName, sourceName) ||
                other.sourceName == sourceName) &&
            (identical(other.pricePerServing, pricePerServing) ||
                other.pricePerServing == pricePerServing) &&
            const DeepCollectionEquality()
                .equals(other.extendedIngredients, extendedIngredients) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.readyInMinutes, readyInMinutes) ||
                other.readyInMinutes == readyInMinutes) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other.cuisines, cuisines) &&
            const DeepCollectionEquality().equals(other.dishTypes, dishTypes) &&
            const DeepCollectionEquality().equals(other.diets, diets) &&
            const DeepCollectionEquality().equals(other.occasions, occasions) &&
            const DeepCollectionEquality()
                .equals(other.analyzedInstructions, analyzedInstructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        vegetarian,
        vegan,
        glutenFree,
        dairyFree,
        veryHealthy,
        cheap,
        veryPopular,
        sustainable,
        lowFodmap,
        weightWatcherSmartPoints,
        gaps,
        preparationMinutes,
        cookingMinutes,
        aggregateLikes,
        healthScore,
        creditsText,
        sourceName,
        pricePerServing,
        const DeepCollectionEquality().hash(extendedIngredients),
        id,
        title,
        readyInMinutes,
        servings,
        sourceUrl,
        image,
        imageType,
        nutrition,
        summary,
        const DeepCollectionEquality().hash(cuisines),
        const DeepCollectionEquality().hash(dishTypes),
        const DeepCollectionEquality().hash(diets),
        const DeepCollectionEquality().hash(occasions),
        const DeepCollectionEquality().hash(analyzedInstructions)
      ]);

  @override
  String toString() {
    return 'Recipe(vegetarian: $vegetarian, vegan: $vegan, glutenFree: $glutenFree, dairyFree: $dairyFree, veryHealthy: $veryHealthy, cheap: $cheap, veryPopular: $veryPopular, sustainable: $sustainable, lowFodmap: $lowFodmap, weightWatcherSmartPoints: $weightWatcherSmartPoints, gaps: $gaps, preparationMinutes: $preparationMinutes, cookingMinutes: $cookingMinutes, aggregateLikes: $aggregateLikes, healthScore: $healthScore, creditsText: $creditsText, sourceName: $sourceName, pricePerServing: $pricePerServing, extendedIngredients: $extendedIngredients, id: $id, title: $title, readyInMinutes: $readyInMinutes, servings: $servings, sourceUrl: $sourceUrl, image: $image, imageType: $imageType, nutrition: $nutrition, summary: $summary, cuisines: $cuisines, dishTypes: $dishTypes, diets: $diets, occasions: $occasions, analyzedInstructions: $analyzedInstructions)';
  }
}

/// @nodoc
abstract mixin class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) _then) =
      _$RecipeCopyWithImpl;
  @useResult
  $Res call(
      {bool vegetarian,
      bool vegan,
      bool glutenFree,
      bool dairyFree,
      bool veryHealthy,
      bool cheap,
      bool veryPopular,
      bool sustainable,
      bool lowFodmap,
      int weightWatcherSmartPoints,
      String gaps,
      int? preparationMinutes,
      int? cookingMinutes,
      int aggregateLikes,
      int healthScore,
      String creditsText,
      String sourceName,
      double pricePerServing,
      List<Ingredient> extendedIngredients,
      int id,
      String title,
      int readyInMinutes,
      int servings,
      String sourceUrl,
      String image,
      String imageType,
      NutritionsModel nutrition,
      String summary,
      List<String> cuisines,
      List<String> dishTypes,
      List<String> diets,
      List<String> occasions,
      List<AnalyzedInstruction> analyzedInstructions});

  $NutritionsModelCopyWith<$Res> get nutrition;
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res> implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._self, this._then);

  final Recipe _self;
  final $Res Function(Recipe) _then;

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vegetarian = null,
    Object? vegan = null,
    Object? glutenFree = null,
    Object? dairyFree = null,
    Object? veryHealthy = null,
    Object? cheap = null,
    Object? veryPopular = null,
    Object? sustainable = null,
    Object? lowFodmap = null,
    Object? weightWatcherSmartPoints = null,
    Object? gaps = null,
    Object? preparationMinutes = freezed,
    Object? cookingMinutes = freezed,
    Object? aggregateLikes = null,
    Object? healthScore = null,
    Object? creditsText = null,
    Object? sourceName = null,
    Object? pricePerServing = null,
    Object? extendedIngredients = null,
    Object? id = null,
    Object? title = null,
    Object? readyInMinutes = null,
    Object? servings = null,
    Object? sourceUrl = null,
    Object? image = null,
    Object? imageType = null,
    Object? nutrition = null,
    Object? summary = null,
    Object? cuisines = null,
    Object? dishTypes = null,
    Object? diets = null,
    Object? occasions = null,
    Object? analyzedInstructions = null,
  }) {
    return _then(_self.copyWith(
      vegetarian: null == vegetarian
          ? _self.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      vegan: null == vegan
          ? _self.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool,
      glutenFree: null == glutenFree
          ? _self.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool,
      dairyFree: null == dairyFree
          ? _self.dairyFree
          : dairyFree // ignore: cast_nullable_to_non_nullable
              as bool,
      veryHealthy: null == veryHealthy
          ? _self.veryHealthy
          : veryHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      cheap: null == cheap
          ? _self.cheap
          : cheap // ignore: cast_nullable_to_non_nullable
              as bool,
      veryPopular: null == veryPopular
          ? _self.veryPopular
          : veryPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      sustainable: null == sustainable
          ? _self.sustainable
          : sustainable // ignore: cast_nullable_to_non_nullable
              as bool,
      lowFodmap: null == lowFodmap
          ? _self.lowFodmap
          : lowFodmap // ignore: cast_nullable_to_non_nullable
              as bool,
      weightWatcherSmartPoints: null == weightWatcherSmartPoints
          ? _self.weightWatcherSmartPoints
          : weightWatcherSmartPoints // ignore: cast_nullable_to_non_nullable
              as int,
      gaps: null == gaps
          ? _self.gaps
          : gaps // ignore: cast_nullable_to_non_nullable
              as String,
      preparationMinutes: freezed == preparationMinutes
          ? _self.preparationMinutes
          : preparationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      cookingMinutes: freezed == cookingMinutes
          ? _self.cookingMinutes
          : cookingMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      aggregateLikes: null == aggregateLikes
          ? _self.aggregateLikes
          : aggregateLikes // ignore: cast_nullable_to_non_nullable
              as int,
      healthScore: null == healthScore
          ? _self.healthScore
          : healthScore // ignore: cast_nullable_to_non_nullable
              as int,
      creditsText: null == creditsText
          ? _self.creditsText
          : creditsText // ignore: cast_nullable_to_non_nullable
              as String,
      sourceName: null == sourceName
          ? _self.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerServing: null == pricePerServing
          ? _self.pricePerServing
          : pricePerServing // ignore: cast_nullable_to_non_nullable
              as double,
      extendedIngredients: null == extendedIngredients
          ? _self.extendedIngredients
          : extendedIngredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: null == imageType
          ? _self.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _self.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionsModel,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      cuisines: null == cuisines
          ? _self.cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dishTypes: null == dishTypes
          ? _self.dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      diets: null == diets
          ? _self.diets
          : diets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      occasions: null == occasions
          ? _self.occasions
          : occasions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      analyzedInstructions: null == analyzedInstructions
          ? _self.analyzedInstructions
          : analyzedInstructions // ignore: cast_nullable_to_non_nullable
              as List<AnalyzedInstruction>,
    ));
  }

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutritionsModelCopyWith<$Res> get nutrition {
    return $NutritionsModelCopyWith<$Res>(_self.nutrition, (value) {
      return _then(_self.copyWith(nutrition: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Recipe].
extension RecipePatterns on Recipe {
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
    TResult Function(_Recipe value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Recipe() when $default != null:
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
    TResult Function(_Recipe value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Recipe():
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
    TResult? Function(_Recipe value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Recipe() when $default != null:
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
            bool vegetarian,
            bool vegan,
            bool glutenFree,
            bool dairyFree,
            bool veryHealthy,
            bool cheap,
            bool veryPopular,
            bool sustainable,
            bool lowFodmap,
            int weightWatcherSmartPoints,
            String gaps,
            int? preparationMinutes,
            int? cookingMinutes,
            int aggregateLikes,
            int healthScore,
            String creditsText,
            String sourceName,
            double pricePerServing,
            List<Ingredient> extendedIngredients,
            int id,
            String title,
            int readyInMinutes,
            int servings,
            String sourceUrl,
            String image,
            String imageType,
            NutritionsModel nutrition,
            String summary,
            List<String> cuisines,
            List<String> dishTypes,
            List<String> diets,
            List<String> occasions,
            List<AnalyzedInstruction> analyzedInstructions)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Recipe() when $default != null:
        return $default(
            _that.vegetarian,
            _that.vegan,
            _that.glutenFree,
            _that.dairyFree,
            _that.veryHealthy,
            _that.cheap,
            _that.veryPopular,
            _that.sustainable,
            _that.lowFodmap,
            _that.weightWatcherSmartPoints,
            _that.gaps,
            _that.preparationMinutes,
            _that.cookingMinutes,
            _that.aggregateLikes,
            _that.healthScore,
            _that.creditsText,
            _that.sourceName,
            _that.pricePerServing,
            _that.extendedIngredients,
            _that.id,
            _that.title,
            _that.readyInMinutes,
            _that.servings,
            _that.sourceUrl,
            _that.image,
            _that.imageType,
            _that.nutrition,
            _that.summary,
            _that.cuisines,
            _that.dishTypes,
            _that.diets,
            _that.occasions,
            _that.analyzedInstructions);
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
            bool vegetarian,
            bool vegan,
            bool glutenFree,
            bool dairyFree,
            bool veryHealthy,
            bool cheap,
            bool veryPopular,
            bool sustainable,
            bool lowFodmap,
            int weightWatcherSmartPoints,
            String gaps,
            int? preparationMinutes,
            int? cookingMinutes,
            int aggregateLikes,
            int healthScore,
            String creditsText,
            String sourceName,
            double pricePerServing,
            List<Ingredient> extendedIngredients,
            int id,
            String title,
            int readyInMinutes,
            int servings,
            String sourceUrl,
            String image,
            String imageType,
            NutritionsModel nutrition,
            String summary,
            List<String> cuisines,
            List<String> dishTypes,
            List<String> diets,
            List<String> occasions,
            List<AnalyzedInstruction> analyzedInstructions)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Recipe():
        return $default(
            _that.vegetarian,
            _that.vegan,
            _that.glutenFree,
            _that.dairyFree,
            _that.veryHealthy,
            _that.cheap,
            _that.veryPopular,
            _that.sustainable,
            _that.lowFodmap,
            _that.weightWatcherSmartPoints,
            _that.gaps,
            _that.preparationMinutes,
            _that.cookingMinutes,
            _that.aggregateLikes,
            _that.healthScore,
            _that.creditsText,
            _that.sourceName,
            _that.pricePerServing,
            _that.extendedIngredients,
            _that.id,
            _that.title,
            _that.readyInMinutes,
            _that.servings,
            _that.sourceUrl,
            _that.image,
            _that.imageType,
            _that.nutrition,
            _that.summary,
            _that.cuisines,
            _that.dishTypes,
            _that.diets,
            _that.occasions,
            _that.analyzedInstructions);
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
            bool vegetarian,
            bool vegan,
            bool glutenFree,
            bool dairyFree,
            bool veryHealthy,
            bool cheap,
            bool veryPopular,
            bool sustainable,
            bool lowFodmap,
            int weightWatcherSmartPoints,
            String gaps,
            int? preparationMinutes,
            int? cookingMinutes,
            int aggregateLikes,
            int healthScore,
            String creditsText,
            String sourceName,
            double pricePerServing,
            List<Ingredient> extendedIngredients,
            int id,
            String title,
            int readyInMinutes,
            int servings,
            String sourceUrl,
            String image,
            String imageType,
            NutritionsModel nutrition,
            String summary,
            List<String> cuisines,
            List<String> dishTypes,
            List<String> diets,
            List<String> occasions,
            List<AnalyzedInstruction> analyzedInstructions)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Recipe() when $default != null:
        return $default(
            _that.vegetarian,
            _that.vegan,
            _that.glutenFree,
            _that.dairyFree,
            _that.veryHealthy,
            _that.cheap,
            _that.veryPopular,
            _that.sustainable,
            _that.lowFodmap,
            _that.weightWatcherSmartPoints,
            _that.gaps,
            _that.preparationMinutes,
            _that.cookingMinutes,
            _that.aggregateLikes,
            _that.healthScore,
            _that.creditsText,
            _that.sourceName,
            _that.pricePerServing,
            _that.extendedIngredients,
            _that.id,
            _that.title,
            _that.readyInMinutes,
            _that.servings,
            _that.sourceUrl,
            _that.image,
            _that.imageType,
            _that.nutrition,
            _that.summary,
            _that.cuisines,
            _that.dishTypes,
            _that.diets,
            _that.occasions,
            _that.analyzedInstructions);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Recipe implements Recipe {
  const _Recipe(
      {required this.vegetarian,
      required this.vegan,
      required this.glutenFree,
      required this.dairyFree,
      required this.veryHealthy,
      required this.cheap,
      required this.veryPopular,
      required this.sustainable,
      required this.lowFodmap,
      required this.weightWatcherSmartPoints,
      required this.gaps,
      this.preparationMinutes,
      this.cookingMinutes,
      required this.aggregateLikes,
      required this.healthScore,
      required this.creditsText,
      required this.sourceName,
      required this.pricePerServing,
      required final List<Ingredient> extendedIngredients,
      required this.id,
      required this.title,
      required this.readyInMinutes,
      required this.servings,
      required this.sourceUrl,
      required this.image,
      required this.imageType,
      required this.nutrition,
      required this.summary,
      required final List<String> cuisines,
      required final List<String> dishTypes,
      required final List<String> diets,
      required final List<String> occasions,
      required final List<AnalyzedInstruction> analyzedInstructions})
      : _extendedIngredients = extendedIngredients,
        _cuisines = cuisines,
        _dishTypes = dishTypes,
        _diets = diets,
        _occasions = occasions,
        _analyzedInstructions = analyzedInstructions;
  factory _Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  @override
  final bool vegetarian;
  @override
  final bool vegan;
  @override
  final bool glutenFree;
  @override
  final bool dairyFree;
  @override
  final bool veryHealthy;
  @override
  final bool cheap;
  @override
  final bool veryPopular;
  @override
  final bool sustainable;
  @override
  final bool lowFodmap;
  @override
  final int weightWatcherSmartPoints;
  @override
  final String gaps;
  @override
  final int? preparationMinutes;
  @override
  final int? cookingMinutes;
  @override
  final int aggregateLikes;
  @override
  final int healthScore;
  @override
  final String creditsText;
  @override
  final String sourceName;
  @override
  final double pricePerServing;
  final List<Ingredient> _extendedIngredients;
  @override
  List<Ingredient> get extendedIngredients {
    if (_extendedIngredients is EqualUnmodifiableListView)
      return _extendedIngredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extendedIngredients);
  }

  @override
  final int id;
  @override
  final String title;
  @override
  final int readyInMinutes;
  @override
  final int servings;
  @override
  final String sourceUrl;
  @override
  final String image;
  @override
  final String imageType;
  @override
  final NutritionsModel nutrition;
  @override
  final String summary;
  final List<String> _cuisines;
  @override
  List<String> get cuisines {
    if (_cuisines is EqualUnmodifiableListView) return _cuisines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cuisines);
  }

  final List<String> _dishTypes;
  @override
  List<String> get dishTypes {
    if (_dishTypes is EqualUnmodifiableListView) return _dishTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dishTypes);
  }

  final List<String> _diets;
  @override
  List<String> get diets {
    if (_diets is EqualUnmodifiableListView) return _diets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_diets);
  }

  final List<String> _occasions;
  @override
  List<String> get occasions {
    if (_occasions is EqualUnmodifiableListView) return _occasions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_occasions);
  }

  final List<AnalyzedInstruction> _analyzedInstructions;
  @override
  List<AnalyzedInstruction> get analyzedInstructions {
    if (_analyzedInstructions is EqualUnmodifiableListView)
      return _analyzedInstructions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_analyzedInstructions);
  }

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RecipeCopyWith<_Recipe> get copyWith =>
      __$RecipeCopyWithImpl<_Recipe>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RecipeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Recipe &&
            (identical(other.vegetarian, vegetarian) ||
                other.vegetarian == vegetarian) &&
            (identical(other.vegan, vegan) || other.vegan == vegan) &&
            (identical(other.glutenFree, glutenFree) ||
                other.glutenFree == glutenFree) &&
            (identical(other.dairyFree, dairyFree) ||
                other.dairyFree == dairyFree) &&
            (identical(other.veryHealthy, veryHealthy) ||
                other.veryHealthy == veryHealthy) &&
            (identical(other.cheap, cheap) || other.cheap == cheap) &&
            (identical(other.veryPopular, veryPopular) ||
                other.veryPopular == veryPopular) &&
            (identical(other.sustainable, sustainable) ||
                other.sustainable == sustainable) &&
            (identical(other.lowFodmap, lowFodmap) ||
                other.lowFodmap == lowFodmap) &&
            (identical(
                    other.weightWatcherSmartPoints, weightWatcherSmartPoints) ||
                other.weightWatcherSmartPoints == weightWatcherSmartPoints) &&
            (identical(other.gaps, gaps) || other.gaps == gaps) &&
            (identical(other.preparationMinutes, preparationMinutes) ||
                other.preparationMinutes == preparationMinutes) &&
            (identical(other.cookingMinutes, cookingMinutes) ||
                other.cookingMinutes == cookingMinutes) &&
            (identical(other.aggregateLikes, aggregateLikes) ||
                other.aggregateLikes == aggregateLikes) &&
            (identical(other.healthScore, healthScore) ||
                other.healthScore == healthScore) &&
            (identical(other.creditsText, creditsText) ||
                other.creditsText == creditsText) &&
            (identical(other.sourceName, sourceName) ||
                other.sourceName == sourceName) &&
            (identical(other.pricePerServing, pricePerServing) ||
                other.pricePerServing == pricePerServing) &&
            const DeepCollectionEquality()
                .equals(other._extendedIngredients, _extendedIngredients) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.readyInMinutes, readyInMinutes) ||
                other.readyInMinutes == readyInMinutes) &&
            (identical(other.servings, servings) ||
                other.servings == servings) &&
            (identical(other.sourceUrl, sourceUrl) ||
                other.sourceUrl == sourceUrl) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.imageType, imageType) ||
                other.imageType == imageType) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality().equals(other._cuisines, _cuisines) &&
            const DeepCollectionEquality()
                .equals(other._dishTypes, _dishTypes) &&
            const DeepCollectionEquality().equals(other._diets, _diets) &&
            const DeepCollectionEquality()
                .equals(other._occasions, _occasions) &&
            const DeepCollectionEquality()
                .equals(other._analyzedInstructions, _analyzedInstructions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        vegetarian,
        vegan,
        glutenFree,
        dairyFree,
        veryHealthy,
        cheap,
        veryPopular,
        sustainable,
        lowFodmap,
        weightWatcherSmartPoints,
        gaps,
        preparationMinutes,
        cookingMinutes,
        aggregateLikes,
        healthScore,
        creditsText,
        sourceName,
        pricePerServing,
        const DeepCollectionEquality().hash(_extendedIngredients),
        id,
        title,
        readyInMinutes,
        servings,
        sourceUrl,
        image,
        imageType,
        nutrition,
        summary,
        const DeepCollectionEquality().hash(_cuisines),
        const DeepCollectionEquality().hash(_dishTypes),
        const DeepCollectionEquality().hash(_diets),
        const DeepCollectionEquality().hash(_occasions),
        const DeepCollectionEquality().hash(_analyzedInstructions)
      ]);

  @override
  String toString() {
    return 'Recipe(vegetarian: $vegetarian, vegan: $vegan, glutenFree: $glutenFree, dairyFree: $dairyFree, veryHealthy: $veryHealthy, cheap: $cheap, veryPopular: $veryPopular, sustainable: $sustainable, lowFodmap: $lowFodmap, weightWatcherSmartPoints: $weightWatcherSmartPoints, gaps: $gaps, preparationMinutes: $preparationMinutes, cookingMinutes: $cookingMinutes, aggregateLikes: $aggregateLikes, healthScore: $healthScore, creditsText: $creditsText, sourceName: $sourceName, pricePerServing: $pricePerServing, extendedIngredients: $extendedIngredients, id: $id, title: $title, readyInMinutes: $readyInMinutes, servings: $servings, sourceUrl: $sourceUrl, image: $image, imageType: $imageType, nutrition: $nutrition, summary: $summary, cuisines: $cuisines, dishTypes: $dishTypes, diets: $diets, occasions: $occasions, analyzedInstructions: $analyzedInstructions)';
  }
}

/// @nodoc
abstract mixin class _$RecipeCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$RecipeCopyWith(_Recipe value, $Res Function(_Recipe) _then) =
      __$RecipeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool vegetarian,
      bool vegan,
      bool glutenFree,
      bool dairyFree,
      bool veryHealthy,
      bool cheap,
      bool veryPopular,
      bool sustainable,
      bool lowFodmap,
      int weightWatcherSmartPoints,
      String gaps,
      int? preparationMinutes,
      int? cookingMinutes,
      int aggregateLikes,
      int healthScore,
      String creditsText,
      String sourceName,
      double pricePerServing,
      List<Ingredient> extendedIngredients,
      int id,
      String title,
      int readyInMinutes,
      int servings,
      String sourceUrl,
      String image,
      String imageType,
      NutritionsModel nutrition,
      String summary,
      List<String> cuisines,
      List<String> dishTypes,
      List<String> diets,
      List<String> occasions,
      List<AnalyzedInstruction> analyzedInstructions});

  @override
  $NutritionsModelCopyWith<$Res> get nutrition;
}

/// @nodoc
class __$RecipeCopyWithImpl<$Res> implements _$RecipeCopyWith<$Res> {
  __$RecipeCopyWithImpl(this._self, this._then);

  final _Recipe _self;
  final $Res Function(_Recipe) _then;

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? vegetarian = null,
    Object? vegan = null,
    Object? glutenFree = null,
    Object? dairyFree = null,
    Object? veryHealthy = null,
    Object? cheap = null,
    Object? veryPopular = null,
    Object? sustainable = null,
    Object? lowFodmap = null,
    Object? weightWatcherSmartPoints = null,
    Object? gaps = null,
    Object? preparationMinutes = freezed,
    Object? cookingMinutes = freezed,
    Object? aggregateLikes = null,
    Object? healthScore = null,
    Object? creditsText = null,
    Object? sourceName = null,
    Object? pricePerServing = null,
    Object? extendedIngredients = null,
    Object? id = null,
    Object? title = null,
    Object? readyInMinutes = null,
    Object? servings = null,
    Object? sourceUrl = null,
    Object? image = null,
    Object? imageType = null,
    Object? nutrition = null,
    Object? summary = null,
    Object? cuisines = null,
    Object? dishTypes = null,
    Object? diets = null,
    Object? occasions = null,
    Object? analyzedInstructions = null,
  }) {
    return _then(_Recipe(
      vegetarian: null == vegetarian
          ? _self.vegetarian
          : vegetarian // ignore: cast_nullable_to_non_nullable
              as bool,
      vegan: null == vegan
          ? _self.vegan
          : vegan // ignore: cast_nullable_to_non_nullable
              as bool,
      glutenFree: null == glutenFree
          ? _self.glutenFree
          : glutenFree // ignore: cast_nullable_to_non_nullable
              as bool,
      dairyFree: null == dairyFree
          ? _self.dairyFree
          : dairyFree // ignore: cast_nullable_to_non_nullable
              as bool,
      veryHealthy: null == veryHealthy
          ? _self.veryHealthy
          : veryHealthy // ignore: cast_nullable_to_non_nullable
              as bool,
      cheap: null == cheap
          ? _self.cheap
          : cheap // ignore: cast_nullable_to_non_nullable
              as bool,
      veryPopular: null == veryPopular
          ? _self.veryPopular
          : veryPopular // ignore: cast_nullable_to_non_nullable
              as bool,
      sustainable: null == sustainable
          ? _self.sustainable
          : sustainable // ignore: cast_nullable_to_non_nullable
              as bool,
      lowFodmap: null == lowFodmap
          ? _self.lowFodmap
          : lowFodmap // ignore: cast_nullable_to_non_nullable
              as bool,
      weightWatcherSmartPoints: null == weightWatcherSmartPoints
          ? _self.weightWatcherSmartPoints
          : weightWatcherSmartPoints // ignore: cast_nullable_to_non_nullable
              as int,
      gaps: null == gaps
          ? _self.gaps
          : gaps // ignore: cast_nullable_to_non_nullable
              as String,
      preparationMinutes: freezed == preparationMinutes
          ? _self.preparationMinutes
          : preparationMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      cookingMinutes: freezed == cookingMinutes
          ? _self.cookingMinutes
          : cookingMinutes // ignore: cast_nullable_to_non_nullable
              as int?,
      aggregateLikes: null == aggregateLikes
          ? _self.aggregateLikes
          : aggregateLikes // ignore: cast_nullable_to_non_nullable
              as int,
      healthScore: null == healthScore
          ? _self.healthScore
          : healthScore // ignore: cast_nullable_to_non_nullable
              as int,
      creditsText: null == creditsText
          ? _self.creditsText
          : creditsText // ignore: cast_nullable_to_non_nullable
              as String,
      sourceName: null == sourceName
          ? _self.sourceName
          : sourceName // ignore: cast_nullable_to_non_nullable
              as String,
      pricePerServing: null == pricePerServing
          ? _self.pricePerServing
          : pricePerServing // ignore: cast_nullable_to_non_nullable
              as double,
      extendedIngredients: null == extendedIngredients
          ? _self._extendedIngredients
          : extendedIngredients // ignore: cast_nullable_to_non_nullable
              as List<Ingredient>,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      imageType: null == imageType
          ? _self.imageType
          : imageType // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _self.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as NutritionsModel,
      summary: null == summary
          ? _self.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      cuisines: null == cuisines
          ? _self._cuisines
          : cuisines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      dishTypes: null == dishTypes
          ? _self._dishTypes
          : dishTypes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      diets: null == diets
          ? _self._diets
          : diets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      occasions: null == occasions
          ? _self._occasions
          : occasions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      analyzedInstructions: null == analyzedInstructions
          ? _self._analyzedInstructions
          : analyzedInstructions // ignore: cast_nullable_to_non_nullable
              as List<AnalyzedInstruction>,
    ));
  }

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NutritionsModelCopyWith<$Res> get nutrition {
    return $NutritionsModelCopyWith<$Res>(_self.nutrition, (value) {
      return _then(_self.copyWith(nutrition: value));
    });
  }
}

/// @nodoc
mixin _$Ingredient {
  int get id;
  String get aisle;
  String? get image;
  String get consistency;
  String get name;
  String? get nameClean;
  String get original;
  String get originalName;
  double get amount;
  String get unit;
  List<String> get meta;
  Measures get measures;

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IngredientCopyWith<Ingredient> get copyWith =>
      _$IngredientCopyWithImpl<Ingredient>(this as Ingredient, _$identity);

  /// Serializes this Ingredient to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Ingredient &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.aisle, aisle) || other.aisle == aisle) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.consistency, consistency) ||
                other.consistency == consistency) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameClean, nameClean) ||
                other.nameClean == nameClean) &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            (identical(other.measures, measures) ||
                other.measures == measures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      aisle,
      image,
      consistency,
      name,
      nameClean,
      original,
      originalName,
      amount,
      unit,
      const DeepCollectionEquality().hash(meta),
      measures);

  @override
  String toString() {
    return 'Ingredient(id: $id, aisle: $aisle, image: $image, consistency: $consistency, name: $name, nameClean: $nameClean, original: $original, originalName: $originalName, amount: $amount, unit: $unit, meta: $meta, measures: $measures)';
  }
}

/// @nodoc
abstract mixin class $IngredientCopyWith<$Res> {
  factory $IngredientCopyWith(
          Ingredient value, $Res Function(Ingredient) _then) =
      _$IngredientCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String aisle,
      String? image,
      String consistency,
      String name,
      String? nameClean,
      String original,
      String originalName,
      double amount,
      String unit,
      List<String> meta,
      Measures measures});

  $MeasuresCopyWith<$Res> get measures;
}

/// @nodoc
class _$IngredientCopyWithImpl<$Res> implements $IngredientCopyWith<$Res> {
  _$IngredientCopyWithImpl(this._self, this._then);

  final Ingredient _self;
  final $Res Function(Ingredient) _then;

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? aisle = null,
    Object? image = freezed,
    Object? consistency = null,
    Object? name = null,
    Object? nameClean = freezed,
    Object? original = null,
    Object? originalName = null,
    Object? amount = null,
    Object? unit = null,
    Object? meta = null,
    Object? measures = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      aisle: null == aisle
          ? _self.aisle
          : aisle // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      consistency: null == consistency
          ? _self.consistency
          : consistency // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameClean: freezed == nameClean
          ? _self.nameClean
          : nameClean // ignore: cast_nullable_to_non_nullable
              as String?,
      original: null == original
          ? _self.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _self.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _self.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<String>,
      measures: null == measures
          ? _self.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as Measures,
    ));
  }

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeasuresCopyWith<$Res> get measures {
    return $MeasuresCopyWith<$Res>(_self.measures, (value) {
      return _then(_self.copyWith(measures: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Ingredient].
extension IngredientPatterns on Ingredient {
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
    TResult Function(_Ingredient value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Ingredient() when $default != null:
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
    TResult Function(_Ingredient value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ingredient():
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
    TResult? Function(_Ingredient value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ingredient() when $default != null:
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
            String aisle,
            String? image,
            String consistency,
            String name,
            String? nameClean,
            String original,
            String originalName,
            double amount,
            String unit,
            List<String> meta,
            Measures measures)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Ingredient() when $default != null:
        return $default(
            _that.id,
            _that.aisle,
            _that.image,
            _that.consistency,
            _that.name,
            _that.nameClean,
            _that.original,
            _that.originalName,
            _that.amount,
            _that.unit,
            _that.meta,
            _that.measures);
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
            String aisle,
            String? image,
            String consistency,
            String name,
            String? nameClean,
            String original,
            String originalName,
            double amount,
            String unit,
            List<String> meta,
            Measures measures)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ingredient():
        return $default(
            _that.id,
            _that.aisle,
            _that.image,
            _that.consistency,
            _that.name,
            _that.nameClean,
            _that.original,
            _that.originalName,
            _that.amount,
            _that.unit,
            _that.meta,
            _that.measures);
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
            String aisle,
            String? image,
            String consistency,
            String name,
            String? nameClean,
            String original,
            String originalName,
            double amount,
            String unit,
            List<String> meta,
            Measures measures)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Ingredient() when $default != null:
        return $default(
            _that.id,
            _that.aisle,
            _that.image,
            _that.consistency,
            _that.name,
            _that.nameClean,
            _that.original,
            _that.originalName,
            _that.amount,
            _that.unit,
            _that.meta,
            _that.measures);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Ingredient implements Ingredient {
  const _Ingredient(
      {required this.id,
      required this.aisle,
      required this.image,
      required this.consistency,
      required this.name,
      required this.nameClean,
      required this.original,
      required this.originalName,
      required this.amount,
      required this.unit,
      required final List<String> meta,
      required this.measures})
      : _meta = meta;
  factory _Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  @override
  final int id;
  @override
  final String aisle;
  @override
  final String? image;
  @override
  final String consistency;
  @override
  final String name;
  @override
  final String? nameClean;
  @override
  final String original;
  @override
  final String originalName;
  @override
  final double amount;
  @override
  final String unit;
  final List<String> _meta;
  @override
  List<String> get meta {
    if (_meta is EqualUnmodifiableListView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meta);
  }

  @override
  final Measures measures;

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IngredientCopyWith<_Ingredient> get copyWith =>
      __$IngredientCopyWithImpl<_Ingredient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IngredientToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Ingredient &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.aisle, aisle) || other.aisle == aisle) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.consistency, consistency) ||
                other.consistency == consistency) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameClean, nameClean) ||
                other.nameClean == nameClean) &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            const DeepCollectionEquality().equals(other._meta, _meta) &&
            (identical(other.measures, measures) ||
                other.measures == measures));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      aisle,
      image,
      consistency,
      name,
      nameClean,
      original,
      originalName,
      amount,
      unit,
      const DeepCollectionEquality().hash(_meta),
      measures);

  @override
  String toString() {
    return 'Ingredient(id: $id, aisle: $aisle, image: $image, consistency: $consistency, name: $name, nameClean: $nameClean, original: $original, originalName: $originalName, amount: $amount, unit: $unit, meta: $meta, measures: $measures)';
  }
}

/// @nodoc
abstract mixin class _$IngredientCopyWith<$Res>
    implements $IngredientCopyWith<$Res> {
  factory _$IngredientCopyWith(
          _Ingredient value, $Res Function(_Ingredient) _then) =
      __$IngredientCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String aisle,
      String? image,
      String consistency,
      String name,
      String? nameClean,
      String original,
      String originalName,
      double amount,
      String unit,
      List<String> meta,
      Measures measures});

  @override
  $MeasuresCopyWith<$Res> get measures;
}

/// @nodoc
class __$IngredientCopyWithImpl<$Res> implements _$IngredientCopyWith<$Res> {
  __$IngredientCopyWithImpl(this._self, this._then);

  final _Ingredient _self;
  final $Res Function(_Ingredient) _then;

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? aisle = null,
    Object? image = freezed,
    Object? consistency = null,
    Object? name = null,
    Object? nameClean = freezed,
    Object? original = null,
    Object? originalName = null,
    Object? amount = null,
    Object? unit = null,
    Object? meta = null,
    Object? measures = null,
  }) {
    return _then(_Ingredient(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      aisle: null == aisle
          ? _self.aisle
          : aisle // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      consistency: null == consistency
          ? _self.consistency
          : consistency // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameClean: freezed == nameClean
          ? _self.nameClean
          : nameClean // ignore: cast_nullable_to_non_nullable
              as String?,
      original: null == original
          ? _self.original
          : original // ignore: cast_nullable_to_non_nullable
              as String,
      originalName: null == originalName
          ? _self.originalName
          : originalName // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      meta: null == meta
          ? _self._meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<String>,
      measures: null == measures
          ? _self.measures
          : measures // ignore: cast_nullable_to_non_nullable
              as Measures,
    ));
  }

  /// Create a copy of Ingredient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeasuresCopyWith<$Res> get measures {
    return $MeasuresCopyWith<$Res>(_self.measures, (value) {
      return _then(_self.copyWith(measures: value));
    });
  }
}

/// @nodoc
mixin _$Measures {
  Measure get us;
  Measure get metric;

  /// Create a copy of Measures
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeasuresCopyWith<Measures> get copyWith =>
      _$MeasuresCopyWithImpl<Measures>(this as Measures, _$identity);

  /// Serializes this Measures to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Measures &&
            (identical(other.us, us) || other.us == us) &&
            (identical(other.metric, metric) || other.metric == metric));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, us, metric);

  @override
  String toString() {
    return 'Measures(us: $us, metric: $metric)';
  }
}

/// @nodoc
abstract mixin class $MeasuresCopyWith<$Res> {
  factory $MeasuresCopyWith(Measures value, $Res Function(Measures) _then) =
      _$MeasuresCopyWithImpl;
  @useResult
  $Res call({Measure us, Measure metric});

  $MeasureCopyWith<$Res> get us;
  $MeasureCopyWith<$Res> get metric;
}

/// @nodoc
class _$MeasuresCopyWithImpl<$Res> implements $MeasuresCopyWith<$Res> {
  _$MeasuresCopyWithImpl(this._self, this._then);

  final Measures _self;
  final $Res Function(Measures) _then;

  /// Create a copy of Measures
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? us = null,
    Object? metric = null,
  }) {
    return _then(_self.copyWith(
      us: null == us
          ? _self.us
          : us // ignore: cast_nullable_to_non_nullable
              as Measure,
      metric: null == metric
          ? _self.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as Measure,
    ));
  }

  /// Create a copy of Measures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeasureCopyWith<$Res> get us {
    return $MeasureCopyWith<$Res>(_self.us, (value) {
      return _then(_self.copyWith(us: value));
    });
  }

  /// Create a copy of Measures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeasureCopyWith<$Res> get metric {
    return $MeasureCopyWith<$Res>(_self.metric, (value) {
      return _then(_self.copyWith(metric: value));
    });
  }
}

/// Adds pattern-matching-related methods to [Measures].
extension MeasuresPatterns on Measures {
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
    TResult Function(_Measures value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Measures() when $default != null:
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
    TResult Function(_Measures value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Measures():
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
    TResult? Function(_Measures value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Measures() when $default != null:
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
    TResult Function(Measure us, Measure metric)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Measures() when $default != null:
        return $default(_that.us, _that.metric);
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
    TResult Function(Measure us, Measure metric) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Measures():
        return $default(_that.us, _that.metric);
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
    TResult? Function(Measure us, Measure metric)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Measures() when $default != null:
        return $default(_that.us, _that.metric);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Measures implements Measures {
  const _Measures({required this.us, required this.metric});
  factory _Measures.fromJson(Map<String, dynamic> json) =>
      _$MeasuresFromJson(json);

  @override
  final Measure us;
  @override
  final Measure metric;

  /// Create a copy of Measures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MeasuresCopyWith<_Measures> get copyWith =>
      __$MeasuresCopyWithImpl<_Measures>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MeasuresToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Measures &&
            (identical(other.us, us) || other.us == us) &&
            (identical(other.metric, metric) || other.metric == metric));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, us, metric);

  @override
  String toString() {
    return 'Measures(us: $us, metric: $metric)';
  }
}

/// @nodoc
abstract mixin class _$MeasuresCopyWith<$Res>
    implements $MeasuresCopyWith<$Res> {
  factory _$MeasuresCopyWith(_Measures value, $Res Function(_Measures) _then) =
      __$MeasuresCopyWithImpl;
  @override
  @useResult
  $Res call({Measure us, Measure metric});

  @override
  $MeasureCopyWith<$Res> get us;
  @override
  $MeasureCopyWith<$Res> get metric;
}

/// @nodoc
class __$MeasuresCopyWithImpl<$Res> implements _$MeasuresCopyWith<$Res> {
  __$MeasuresCopyWithImpl(this._self, this._then);

  final _Measures _self;
  final $Res Function(_Measures) _then;

  /// Create a copy of Measures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? us = null,
    Object? metric = null,
  }) {
    return _then(_Measures(
      us: null == us
          ? _self.us
          : us // ignore: cast_nullable_to_non_nullable
              as Measure,
      metric: null == metric
          ? _self.metric
          : metric // ignore: cast_nullable_to_non_nullable
              as Measure,
    ));
  }

  /// Create a copy of Measures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeasureCopyWith<$Res> get us {
    return $MeasureCopyWith<$Res>(_self.us, (value) {
      return _then(_self.copyWith(us: value));
    });
  }

  /// Create a copy of Measures
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MeasureCopyWith<$Res> get metric {
    return $MeasureCopyWith<$Res>(_self.metric, (value) {
      return _then(_self.copyWith(metric: value));
    });
  }
}

/// @nodoc
mixin _$Measure {
  double get amount;
  String get unitShort;
  String get unitLong;

  /// Create a copy of Measure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MeasureCopyWith<Measure> get copyWith =>
      _$MeasureCopyWithImpl<Measure>(this as Measure, _$identity);

  /// Serializes this Measure to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Measure &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unitShort, unitShort) ||
                other.unitShort == unitShort) &&
            (identical(other.unitLong, unitLong) ||
                other.unitLong == unitLong));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, unitShort, unitLong);

  @override
  String toString() {
    return 'Measure(amount: $amount, unitShort: $unitShort, unitLong: $unitLong)';
  }
}

/// @nodoc
abstract mixin class $MeasureCopyWith<$Res> {
  factory $MeasureCopyWith(Measure value, $Res Function(Measure) _then) =
      _$MeasureCopyWithImpl;
  @useResult
  $Res call({double amount, String unitShort, String unitLong});
}

/// @nodoc
class _$MeasureCopyWithImpl<$Res> implements $MeasureCopyWith<$Res> {
  _$MeasureCopyWithImpl(this._self, this._then);

  final Measure _self;
  final $Res Function(Measure) _then;

  /// Create a copy of Measure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? unitShort = null,
    Object? unitLong = null,
  }) {
    return _then(_self.copyWith(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unitShort: null == unitShort
          ? _self.unitShort
          : unitShort // ignore: cast_nullable_to_non_nullable
              as String,
      unitLong: null == unitLong
          ? _self.unitLong
          : unitLong // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Measure].
extension MeasurePatterns on Measure {
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
    TResult Function(_Measure value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Measure() when $default != null:
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
    TResult Function(_Measure value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Measure():
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
    TResult? Function(_Measure value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Measure() when $default != null:
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
    TResult Function(double amount, String unitShort, String unitLong)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Measure() when $default != null:
        return $default(_that.amount, _that.unitShort, _that.unitLong);
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
    TResult Function(double amount, String unitShort, String unitLong) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Measure():
        return $default(_that.amount, _that.unitShort, _that.unitLong);
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
    TResult? Function(double amount, String unitShort, String unitLong)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Measure() when $default != null:
        return $default(_that.amount, _that.unitShort, _that.unitLong);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Measure implements Measure {
  const _Measure(
      {required this.amount, required this.unitShort, required this.unitLong});
  factory _Measure.fromJson(Map<String, dynamic> json) =>
      _$MeasureFromJson(json);

  @override
  final double amount;
  @override
  final String unitShort;
  @override
  final String unitLong;

  /// Create a copy of Measure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MeasureCopyWith<_Measure> get copyWith =>
      __$MeasureCopyWithImpl<_Measure>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MeasureToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Measure &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.unitShort, unitShort) ||
                other.unitShort == unitShort) &&
            (identical(other.unitLong, unitLong) ||
                other.unitLong == unitLong));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, amount, unitShort, unitLong);

  @override
  String toString() {
    return 'Measure(amount: $amount, unitShort: $unitShort, unitLong: $unitLong)';
  }
}

/// @nodoc
abstract mixin class _$MeasureCopyWith<$Res> implements $MeasureCopyWith<$Res> {
  factory _$MeasureCopyWith(_Measure value, $Res Function(_Measure) _then) =
      __$MeasureCopyWithImpl;
  @override
  @useResult
  $Res call({double amount, String unitShort, String unitLong});
}

/// @nodoc
class __$MeasureCopyWithImpl<$Res> implements _$MeasureCopyWith<$Res> {
  __$MeasureCopyWithImpl(this._self, this._then);

  final _Measure _self;
  final $Res Function(_Measure) _then;

  /// Create a copy of Measure
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? amount = null,
    Object? unitShort = null,
    Object? unitLong = null,
  }) {
    return _then(_Measure(
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      unitShort: null == unitShort
          ? _self.unitShort
          : unitShort // ignore: cast_nullable_to_non_nullable
              as String,
      unitLong: null == unitLong
          ? _self.unitLong
          : unitLong // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$AnalyzedInstruction {
  String get name;
  List<InstructionStep> get steps;

  /// Create a copy of AnalyzedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AnalyzedInstructionCopyWith<AnalyzedInstruction> get copyWith =>
      _$AnalyzedInstructionCopyWithImpl<AnalyzedInstruction>(
          this as AnalyzedInstruction, _$identity);

  /// Serializes this AnalyzedInstruction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AnalyzedInstruction &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.steps, steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(steps));

  @override
  String toString() {
    return 'AnalyzedInstruction(name: $name, steps: $steps)';
  }
}

/// @nodoc
abstract mixin class $AnalyzedInstructionCopyWith<$Res> {
  factory $AnalyzedInstructionCopyWith(
          AnalyzedInstruction value, $Res Function(AnalyzedInstruction) _then) =
      _$AnalyzedInstructionCopyWithImpl;
  @useResult
  $Res call({String name, List<InstructionStep> steps});
}

/// @nodoc
class _$AnalyzedInstructionCopyWithImpl<$Res>
    implements $AnalyzedInstructionCopyWith<$Res> {
  _$AnalyzedInstructionCopyWithImpl(this._self, this._then);

  final AnalyzedInstruction _self;
  final $Res Function(AnalyzedInstruction) _then;

  /// Create a copy of AnalyzedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? steps = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _self.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<InstructionStep>,
    ));
  }
}

/// Adds pattern-matching-related methods to [AnalyzedInstruction].
extension AnalyzedInstructionPatterns on AnalyzedInstruction {
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
    TResult Function(_AnalyzedInstruction value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AnalyzedInstruction() when $default != null:
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
    TResult Function(_AnalyzedInstruction value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnalyzedInstruction():
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
    TResult? Function(_AnalyzedInstruction value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnalyzedInstruction() when $default != null:
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
    TResult Function(String name, List<InstructionStep> steps)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AnalyzedInstruction() when $default != null:
        return $default(_that.name, _that.steps);
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
    TResult Function(String name, List<InstructionStep> steps) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnalyzedInstruction():
        return $default(_that.name, _that.steps);
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
    TResult? Function(String name, List<InstructionStep> steps)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AnalyzedInstruction() when $default != null:
        return $default(_that.name, _that.steps);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AnalyzedInstruction implements AnalyzedInstruction {
  const _AnalyzedInstruction(
      {required this.name, required final List<InstructionStep> steps})
      : _steps = steps;
  factory _AnalyzedInstruction.fromJson(Map<String, dynamic> json) =>
      _$AnalyzedInstructionFromJson(json);

  @override
  final String name;
  final List<InstructionStep> _steps;
  @override
  List<InstructionStep> get steps {
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_steps);
  }

  /// Create a copy of AnalyzedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AnalyzedInstructionCopyWith<_AnalyzedInstruction> get copyWith =>
      __$AnalyzedInstructionCopyWithImpl<_AnalyzedInstruction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AnalyzedInstructionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnalyzedInstruction &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_steps));

  @override
  String toString() {
    return 'AnalyzedInstruction(name: $name, steps: $steps)';
  }
}

/// @nodoc
abstract mixin class _$AnalyzedInstructionCopyWith<$Res>
    implements $AnalyzedInstructionCopyWith<$Res> {
  factory _$AnalyzedInstructionCopyWith(_AnalyzedInstruction value,
          $Res Function(_AnalyzedInstruction) _then) =
      __$AnalyzedInstructionCopyWithImpl;
  @override
  @useResult
  $Res call({String name, List<InstructionStep> steps});
}

/// @nodoc
class __$AnalyzedInstructionCopyWithImpl<$Res>
    implements _$AnalyzedInstructionCopyWith<$Res> {
  __$AnalyzedInstructionCopyWithImpl(this._self, this._then);

  final _AnalyzedInstruction _self;
  final $Res Function(_AnalyzedInstruction) _then;

  /// Create a copy of AnalyzedInstruction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? steps = null,
  }) {
    return _then(_AnalyzedInstruction(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      steps: null == steps
          ? _self._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<InstructionStep>,
    ));
  }
}

/// @nodoc
mixin _$InstructionStep {
  int get number;
  String get step;
  List<IngredientStep> get ingredients;
  List<Equipment> get equipment;
  Length? get length;

  /// Create a copy of InstructionStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $InstructionStepCopyWith<InstructionStep> get copyWith =>
      _$InstructionStepCopyWithImpl<InstructionStep>(
          this as InstructionStep, _$identity);

  /// Serializes this InstructionStep to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InstructionStep &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.step, step) || other.step == step) &&
            const DeepCollectionEquality()
                .equals(other.ingredients, ingredients) &&
            const DeepCollectionEquality().equals(other.equipment, equipment) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      step,
      const DeepCollectionEquality().hash(ingredients),
      const DeepCollectionEquality().hash(equipment),
      length);

  @override
  String toString() {
    return 'InstructionStep(number: $number, step: $step, ingredients: $ingredients, equipment: $equipment, length: $length)';
  }
}

/// @nodoc
abstract mixin class $InstructionStepCopyWith<$Res> {
  factory $InstructionStepCopyWith(
          InstructionStep value, $Res Function(InstructionStep) _then) =
      _$InstructionStepCopyWithImpl;
  @useResult
  $Res call(
      {int number,
      String step,
      List<IngredientStep> ingredients,
      List<Equipment> equipment,
      Length? length});

  $LengthCopyWith<$Res>? get length;
}

/// @nodoc
class _$InstructionStepCopyWithImpl<$Res>
    implements $InstructionStepCopyWith<$Res> {
  _$InstructionStepCopyWithImpl(this._self, this._then);

  final InstructionStep _self;
  final $Res Function(InstructionStep) _then;

  /// Create a copy of InstructionStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? step = null,
    Object? ingredients = null,
    Object? equipment = null,
    Object? length = freezed,
  }) {
    return _then(_self.copyWith(
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      step: null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _self.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientStep>,
      equipment: null == equipment
          ? _self.equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
      length: freezed == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as Length?,
    ));
  }

  /// Create a copy of InstructionStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LengthCopyWith<$Res>? get length {
    if (_self.length == null) {
      return null;
    }

    return $LengthCopyWith<$Res>(_self.length!, (value) {
      return _then(_self.copyWith(length: value));
    });
  }
}

/// Adds pattern-matching-related methods to [InstructionStep].
extension InstructionStepPatterns on InstructionStep {
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
    TResult Function(_InstructionStep value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InstructionStep() when $default != null:
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
    TResult Function(_InstructionStep value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InstructionStep():
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
    TResult? Function(_InstructionStep value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InstructionStep() when $default != null:
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
    TResult Function(int number, String step, List<IngredientStep> ingredients,
            List<Equipment> equipment, Length? length)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _InstructionStep() when $default != null:
        return $default(_that.number, _that.step, _that.ingredients,
            _that.equipment, _that.length);
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
    TResult Function(int number, String step, List<IngredientStep> ingredients,
            List<Equipment> equipment, Length? length)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InstructionStep():
        return $default(_that.number, _that.step, _that.ingredients,
            _that.equipment, _that.length);
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
    TResult? Function(int number, String step, List<IngredientStep> ingredients,
            List<Equipment> equipment, Length? length)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _InstructionStep() when $default != null:
        return $default(_that.number, _that.step, _that.ingredients,
            _that.equipment, _that.length);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _InstructionStep implements InstructionStep {
  const _InstructionStep(
      {required this.number,
      required this.step,
      required final List<IngredientStep> ingredients,
      required final List<Equipment> equipment,
      this.length})
      : _ingredients = ingredients,
        _equipment = equipment;
  factory _InstructionStep.fromJson(Map<String, dynamic> json) =>
      _$InstructionStepFromJson(json);

  @override
  final int number;
  @override
  final String step;
  final List<IngredientStep> _ingredients;
  @override
  List<IngredientStep> get ingredients {
    if (_ingredients is EqualUnmodifiableListView) return _ingredients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredients);
  }

  final List<Equipment> _equipment;
  @override
  List<Equipment> get equipment {
    if (_equipment is EqualUnmodifiableListView) return _equipment;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_equipment);
  }

  @override
  final Length? length;

  /// Create a copy of InstructionStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InstructionStepCopyWith<_InstructionStep> get copyWith =>
      __$InstructionStepCopyWithImpl<_InstructionStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$InstructionStepToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InstructionStep &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.step, step) || other.step == step) &&
            const DeepCollectionEquality()
                .equals(other._ingredients, _ingredients) &&
            const DeepCollectionEquality()
                .equals(other._equipment, _equipment) &&
            (identical(other.length, length) || other.length == length));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      step,
      const DeepCollectionEquality().hash(_ingredients),
      const DeepCollectionEquality().hash(_equipment),
      length);

  @override
  String toString() {
    return 'InstructionStep(number: $number, step: $step, ingredients: $ingredients, equipment: $equipment, length: $length)';
  }
}

/// @nodoc
abstract mixin class _$InstructionStepCopyWith<$Res>
    implements $InstructionStepCopyWith<$Res> {
  factory _$InstructionStepCopyWith(
          _InstructionStep value, $Res Function(_InstructionStep) _then) =
      __$InstructionStepCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int number,
      String step,
      List<IngredientStep> ingredients,
      List<Equipment> equipment,
      Length? length});

  @override
  $LengthCopyWith<$Res>? get length;
}

/// @nodoc
class __$InstructionStepCopyWithImpl<$Res>
    implements _$InstructionStepCopyWith<$Res> {
  __$InstructionStepCopyWithImpl(this._self, this._then);

  final _InstructionStep _self;
  final $Res Function(_InstructionStep) _then;

  /// Create a copy of InstructionStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? number = null,
    Object? step = null,
    Object? ingredients = null,
    Object? equipment = null,
    Object? length = freezed,
  }) {
    return _then(_InstructionStep(
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      step: null == step
          ? _self.step
          : step // ignore: cast_nullable_to_non_nullable
              as String,
      ingredients: null == ingredients
          ? _self._ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as List<IngredientStep>,
      equipment: null == equipment
          ? _self._equipment
          : equipment // ignore: cast_nullable_to_non_nullable
              as List<Equipment>,
      length: freezed == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as Length?,
    ));
  }

  /// Create a copy of InstructionStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LengthCopyWith<$Res>? get length {
    if (_self.length == null) {
      return null;
    }

    return $LengthCopyWith<$Res>(_self.length!, (value) {
      return _then(_self.copyWith(length: value));
    });
  }
}

/// @nodoc
mixin _$IngredientStep {
  int get id;
  String get name;
  String get localizedName;
  String? get image;

  /// Create a copy of IngredientStep
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $IngredientStepCopyWith<IngredientStep> get copyWith =>
      _$IngredientStepCopyWithImpl<IngredientStep>(
          this as IngredientStep, _$identity);

  /// Serializes this IngredientStep to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is IngredientStep &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, localizedName, image);

  @override
  String toString() {
    return 'IngredientStep(id: $id, name: $name, localizedName: $localizedName, image: $image)';
  }
}

/// @nodoc
abstract mixin class $IngredientStepCopyWith<$Res> {
  factory $IngredientStepCopyWith(
          IngredientStep value, $Res Function(IngredientStep) _then) =
      _$IngredientStepCopyWithImpl;
  @useResult
  $Res call({int id, String name, String localizedName, String? image});
}

/// @nodoc
class _$IngredientStepCopyWithImpl<$Res>
    implements $IngredientStepCopyWith<$Res> {
  _$IngredientStepCopyWithImpl(this._self, this._then);

  final IngredientStep _self;
  final $Res Function(IngredientStep) _then;

  /// Create a copy of IngredientStep
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? localizedName = null,
    Object? image = freezed,
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
      localizedName: null == localizedName
          ? _self.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [IngredientStep].
extension IngredientStepPatterns on IngredientStep {
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
    TResult Function(_IngredientStep value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IngredientStep() when $default != null:
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
    TResult Function(_IngredientStep value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IngredientStep():
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
    TResult? Function(_IngredientStep value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IngredientStep() when $default != null:
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
    TResult Function(int id, String name, String localizedName, String? image)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _IngredientStep() when $default != null:
        return $default(_that.id, _that.name, _that.localizedName, _that.image);
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
    TResult Function(int id, String name, String localizedName, String? image)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IngredientStep():
        return $default(_that.id, _that.name, _that.localizedName, _that.image);
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
    TResult? Function(int id, String name, String localizedName, String? image)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _IngredientStep() when $default != null:
        return $default(_that.id, _that.name, _that.localizedName, _that.image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _IngredientStep implements IngredientStep {
  const _IngredientStep(
      {required this.id,
      required this.name,
      required this.localizedName,
      required this.image});
  factory _IngredientStep.fromJson(Map<String, dynamic> json) =>
      _$IngredientStepFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String localizedName;
  @override
  final String? image;

  /// Create a copy of IngredientStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$IngredientStepCopyWith<_IngredientStep> get copyWith =>
      __$IngredientStepCopyWithImpl<_IngredientStep>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$IngredientStepToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IngredientStep &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, localizedName, image);

  @override
  String toString() {
    return 'IngredientStep(id: $id, name: $name, localizedName: $localizedName, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$IngredientStepCopyWith<$Res>
    implements $IngredientStepCopyWith<$Res> {
  factory _$IngredientStepCopyWith(
          _IngredientStep value, $Res Function(_IngredientStep) _then) =
      __$IngredientStepCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name, String localizedName, String? image});
}

/// @nodoc
class __$IngredientStepCopyWithImpl<$Res>
    implements _$IngredientStepCopyWith<$Res> {
  __$IngredientStepCopyWithImpl(this._self, this._then);

  final _IngredientStep _self;
  final $Res Function(_IngredientStep) _then;

  /// Create a copy of IngredientStep
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? localizedName = null,
    Object? image = freezed,
  }) {
    return _then(_IngredientStep(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      localizedName: null == localizedName
          ? _self.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$Equipment {
  int get id;
  String get name;
  String get localizedName;
  String get image;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EquipmentCopyWith<Equipment> get copyWith =>
      _$EquipmentCopyWithImpl<Equipment>(this as Equipment, _$identity);

  /// Serializes this Equipment to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Equipment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, localizedName, image);

  @override
  String toString() {
    return 'Equipment(id: $id, name: $name, localizedName: $localizedName, image: $image)';
  }
}

/// @nodoc
abstract mixin class $EquipmentCopyWith<$Res> {
  factory $EquipmentCopyWith(Equipment value, $Res Function(Equipment) _then) =
      _$EquipmentCopyWithImpl;
  @useResult
  $Res call({int id, String name, String localizedName, String image});
}

/// @nodoc
class _$EquipmentCopyWithImpl<$Res> implements $EquipmentCopyWith<$Res> {
  _$EquipmentCopyWithImpl(this._self, this._then);

  final Equipment _self;
  final $Res Function(Equipment) _then;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? localizedName = null,
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
      localizedName: null == localizedName
          ? _self.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Equipment].
extension EquipmentPatterns on Equipment {
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
    TResult Function(_Equipment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Equipment() when $default != null:
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
    TResult Function(_Equipment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Equipment():
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
    TResult? Function(_Equipment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Equipment() when $default != null:
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
    TResult Function(int id, String name, String localizedName, String image)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Equipment() when $default != null:
        return $default(_that.id, _that.name, _that.localizedName, _that.image);
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
    TResult Function(int id, String name, String localizedName, String image)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Equipment():
        return $default(_that.id, _that.name, _that.localizedName, _that.image);
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
    TResult? Function(int id, String name, String localizedName, String image)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Equipment() when $default != null:
        return $default(_that.id, _that.name, _that.localizedName, _that.image);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Equipment implements Equipment {
  const _Equipment(
      {required this.id,
      required this.name,
      required this.localizedName,
      required this.image});
  factory _Equipment.fromJson(Map<String, dynamic> json) =>
      _$EquipmentFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String localizedName;
  @override
  final String image;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EquipmentCopyWith<_Equipment> get copyWith =>
      __$EquipmentCopyWithImpl<_Equipment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EquipmentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Equipment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.localizedName, localizedName) ||
                other.localizedName == localizedName) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, localizedName, image);

  @override
  String toString() {
    return 'Equipment(id: $id, name: $name, localizedName: $localizedName, image: $image)';
  }
}

/// @nodoc
abstract mixin class _$EquipmentCopyWith<$Res>
    implements $EquipmentCopyWith<$Res> {
  factory _$EquipmentCopyWith(
          _Equipment value, $Res Function(_Equipment) _then) =
      __$EquipmentCopyWithImpl;
  @override
  @useResult
  $Res call({int id, String name, String localizedName, String image});
}

/// @nodoc
class __$EquipmentCopyWithImpl<$Res> implements _$EquipmentCopyWith<$Res> {
  __$EquipmentCopyWithImpl(this._self, this._then);

  final _Equipment _self;
  final $Res Function(_Equipment) _then;

  /// Create a copy of Equipment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? localizedName = null,
    Object? image = null,
  }) {
    return _then(_Equipment(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      localizedName: null == localizedName
          ? _self.localizedName
          : localizedName // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Length {
  int get number;
  String get unit;

  /// Create a copy of Length
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LengthCopyWith<Length> get copyWith =>
      _$LengthCopyWithImpl<Length>(this as Length, _$identity);

  /// Serializes this Length to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Length &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, unit);

  @override
  String toString() {
    return 'Length(number: $number, unit: $unit)';
  }
}

/// @nodoc
abstract mixin class $LengthCopyWith<$Res> {
  factory $LengthCopyWith(Length value, $Res Function(Length) _then) =
      _$LengthCopyWithImpl;
  @useResult
  $Res call({int number, String unit});
}

/// @nodoc
class _$LengthCopyWithImpl<$Res> implements $LengthCopyWith<$Res> {
  _$LengthCopyWithImpl(this._self, this._then);

  final Length _self;
  final $Res Function(Length) _then;

  /// Create a copy of Length
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? unit = null,
  }) {
    return _then(_self.copyWith(
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [Length].
extension LengthPatterns on Length {
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
    TResult Function(_Length value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Length() when $default != null:
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
    TResult Function(_Length value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Length():
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
    TResult? Function(_Length value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Length() when $default != null:
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
    TResult Function(int number, String unit)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Length() when $default != null:
        return $default(_that.number, _that.unit);
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
    TResult Function(int number, String unit) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Length():
        return $default(_that.number, _that.unit);
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
    TResult? Function(int number, String unit)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Length() when $default != null:
        return $default(_that.number, _that.unit);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _Length implements Length {
  const _Length({required this.number, required this.unit});
  factory _Length.fromJson(Map<String, dynamic> json) => _$LengthFromJson(json);

  @override
  final int number;
  @override
  final String unit;

  /// Create a copy of Length
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LengthCopyWith<_Length> get copyWith =>
      __$LengthCopyWithImpl<_Length>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LengthToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Length &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, unit);

  @override
  String toString() {
    return 'Length(number: $number, unit: $unit)';
  }
}

/// @nodoc
abstract mixin class _$LengthCopyWith<$Res> implements $LengthCopyWith<$Res> {
  factory _$LengthCopyWith(_Length value, $Res Function(_Length) _then) =
      __$LengthCopyWithImpl;
  @override
  @useResult
  $Res call({int number, String unit});
}

/// @nodoc
class __$LengthCopyWithImpl<$Res> implements _$LengthCopyWith<$Res> {
  __$LengthCopyWithImpl(this._self, this._then);

  final _Length _self;
  final $Res Function(_Length) _then;

  /// Create a copy of Length
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? number = null,
    Object? unit = null,
  }) {
    return _then(_Length(
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      unit: null == unit
          ? _self.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
