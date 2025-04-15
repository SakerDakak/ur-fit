import 'package:freezed_annotation/freezed_annotation.dart';

part 'body_parts_model.freezed.dart';
part 'body_parts_model.g.dart';

@freezed
class BodyPartsModel with _$BodyPartsModel {
  const factory BodyPartsModel({
    required String key,
    required String value,

  }) = _BodyPartsModel;

  factory BodyPartsModel.fromJson(Map<String, dynamic> json) =>
      _$BodyPartsModelFromJson(json);
}