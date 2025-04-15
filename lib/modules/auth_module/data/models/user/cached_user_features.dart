import 'package:hive/hive.dart';
import 'package:urfit/modules/auth_module/data/models/user/user_features_model.dart';

part 'cached_user_features.g.dart';

@HiveType(typeId: 2)
class CachedUserFeature extends HiveObject {
  @HiveField(0)
  final bool? search_results_table;
  @HiveField(1)
  final bool? recently_opened_files;
  @HiveField(2)
  final bool? search_history;
  @HiveField(3)
  final bool? highlights_and_notes;
  @HiveField(4)
  final bool? gpt;
  @HiveField(5)
  final bool? my_folders;
  @HiveField(6)
  final bool? contracts;

  CachedUserFeature({
    required this.search_results_table,
    required this.recently_opened_files,
    required this.search_history,
    required this.highlights_and_notes,
    required this.gpt,
    required this.my_folders,
    required this.contracts,
  });

  factory CachedUserFeature.fromUserFeaturesModel(
          UserFeaturesModel userFeaturesModel) =>
      CachedUserFeature(
          search_results_table: userFeaturesModel.search_results_table,
          recently_opened_files: userFeaturesModel.recently_opened_files,
          search_history: userFeaturesModel.search_history,
          highlights_and_notes: userFeaturesModel.highlights_and_notes,
          gpt: userFeaturesModel.gpt,
          my_folders: userFeaturesModel.my_folders,
          contracts: userFeaturesModel.contracts);

  UserFeaturesModel toUserFeaturesModel() => UserFeaturesModel(
      search_results_table: search_results_table,
      recently_opened_files: recently_opened_files,
      search_history: search_history,
      highlights_and_notes: highlights_and_notes,
      gpt: gpt,
      my_folders: my_folders,
      contracts: contracts);
}
