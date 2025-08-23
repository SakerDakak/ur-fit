
import 'package:freezed_annotation/freezed_annotation.dart';

part 'static_page_model.freezed.dart';
part 'static_page_model.g.dart';

@freezed
abstract class StaticPageModel with _$StaticPageModel {
  const factory StaticPageModel({
    required int id,
    required String title,
    required String content,
    required String key,
  }) = _StaticPageModel;

  factory StaticPageModel.fromJson(Map<String, dynamic> json) => _$StaticPageModelFromJson(json);
}