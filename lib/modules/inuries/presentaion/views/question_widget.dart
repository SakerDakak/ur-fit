import 'package:flutter/material.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/modules/inuries/data/question_model.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget(
      {super.key,
      required this.question,
      required this.onToggle,
      required this.isYes});
  final QuestionModel question;
  final Function(int questionId, bool isYes) onToggle;
  final bool? isYes;
  @override
  Widget build(BuildContext context) {
    if (question.question.trim().isEmpty) {
      return const SizedBox.shrink();
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          spacing: 6,
          children: [
            const CircleAvatar(radius: 5),
            Text(
              question.question,
              style: TStyle.bold_16.copyWith(),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox.shrink(),
            InkWell(
              onTap: () {
                onToggle(question.id, true);
              },
              child: ColoredBox(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AbsorbPointer(
                        child: Radio(
                            value: true,
                            groupValue: isYes,
                            onChanged: (value) {}),
                      ),
                      Text(L10n.tr().yes,
                          style: TStyle.bold_14.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          )),
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                onToggle(question.id, false);
              },
              child: ColoredBox(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AbsorbPointer(
                        child: Radio(
                            value: false,
                            groupValue: isYes,
                            onChanged: (value) {}),
                      ),
                      Text(L10n.tr().no,
                          style: TStyle.bold_14.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
