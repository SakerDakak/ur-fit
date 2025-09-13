import 'package:urfit/core/presentation/utils/enums.dart';

class QuestionModel {
  int id;
  String question;
  BodyParts key;

  QuestionModel({required this.id, required this.question, required this.key});

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
      id: json['id'],
      question: json['question'],
      key: BodyParts.fromValue(json['body_part']['key']),
    );
  }
}
