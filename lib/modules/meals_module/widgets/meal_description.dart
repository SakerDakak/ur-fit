import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:readmore/readmore.dart';
import 'package:sizer/sizer.dart';

import '../../../core/presentation/assets/assets_manager.dart';
import '../../../core/presentation/style/fonts.dart';
import 'filter_title_widget.dart';

class MealDescription extends StatelessWidget {
  final String description;
  const MealDescription({
    super.key, required this.description,
  });

  @override
  Widget build(BuildContext context) {
    var document = parse(
        description);
    return Column(
      children: [
        FilterTitleWidget(
            icon: AssetsManager.mealCategory, title: 'وصف الوجبة'),
        SizedBox(
          height: 16.px,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.px),
          child: ReadMoreText(
            document.body?.text ?? '',
            trimLines: 2,
            colorClickableText: Theme.of(context).colorScheme.primary,
            trimMode: TrimMode.Line,
            style: CustomTextStyle.regular_16,
            trimCollapsedText: '\nعرض المزيد',
            trimExpandedText: '\nعرض اقل',
            moreStyle: CustomTextStyle.regular_16
                .copyWith(color: Theme.of(context).colorScheme.primary),
          ),
        ),
        SizedBox(
          height: 16.px,
        ),
      ],
    );
  }
}
