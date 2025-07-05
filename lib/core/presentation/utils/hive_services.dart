import 'package:hive_flutter/adapters.dart';

import '../../../modules/meals_module/data/models/cached_nutrition.dart';

class HiveServices {
  // late final HiveCacheStore cacheStore;
  // late final CacheOptions customCacheOptions;
  init() async {
    //   // await Hive.openBox("cache");
    //   // var cacheDir = await getApplicationDocumentsDirectory();
    //   //
    //   //  final secureKey = Hive.generateSecureKey();
    //   //  final cipher = HiveAesCipher(secureKey);
    //   // final cacheStore = HiveCacheStore(null,
    //   //   hiveBoxName: "cache",
    //   //   encryptionCipher: cipher,
    //   //
    //   // );
    //    customCacheOptions = CacheOptions(
    //     store: cacheStore,
    //     policy: CachePolicy.forceCache,
    //     priority: CachePriority.high,
    //     maxStale: const Duration(minutes: 5),
    //     hitCacheOnErrorExcept: [401, 404],
    //     keyBuilder: (request) {
    //       return request.uri.toString();
    //     },
    //     allowPostMethod: false,
    //   );
    //
    await Hive.initFlutter();
    //
  }

  // register() {
  //   Hive.registerAdapter(CacheUserAdapter());
  //   Hive.registerAdapter(CountryCachedAdapter());
  //   Hive.registerAdapter(CityCachedAdapter());
  //   Hive.registerAdapter(GoalCachedAdapter());
  //   Hive.registerAdapter(BodyShapeCachedAdapter());
  //   Hive.registerAdapter(MuscleFocusCachedAdapter());
  //   Hive.registerAdapter(WorkoutTypeCachedAdapter());
  //   Hive.registerAdapter(EquipmentCachedAdapter());
  //   Hive.registerAdapter(DietCachedAdapter());
  //   Hive.registerAdapter(RecipeTypeCachedAdapter());
  //   Hive.registerAdapter(FoodNotLikedCachedAdapter());
  //   Hive.registerAdapter(MealVarietyCachedAdapter());
  //   Hive.registerAdapter(NutritionDataAdapter());

  //   // Hive.registerAdapter(CachedFavoriteAdapter());
  //   // Hive.registerAdapter(DurationAdapter());
  //   // Hive.registerAdapter(CachedVideoAdapter());
  //   // Hive.registerAdapter(CachedCategoryAdapter());
  // }

  openBoxes() async {
    await Hive.openBox<NutritionData>('nutritionDataBox');

    // Hive.openLazyBox("token");
    // Hive.openBox<CacheUser>("user");
  }
}

class DurationAdapter extends TypeAdapter<Duration> {
  @override
  final int typeId = 13; // or whatever free id you have

  @override
  Duration read(BinaryReader reader) {
    return Duration(seconds: reader.read());
  }

  @override
  void write(BinaryWriter writer, Duration obj) {
    writer.write(obj.inSeconds);
  }
}
