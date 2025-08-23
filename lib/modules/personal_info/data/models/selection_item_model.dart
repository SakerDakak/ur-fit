import 'package:freezed_annotation/freezed_annotation.dart';

part 'selection_item_model.freezed.dart';
part 'selection_item_model.g.dart';

@freezed
abstract class SelectionItemModel with _$SelectionItemModel {
  const factory SelectionItemModel({
    required int id,
    required String name,
    required String? image,

  }) = _SelectionItemModel;

  factory SelectionItemModel.fromJson(Map<String, dynamic> json) =>
      _$SelectionItemModelFromJson(json);
}