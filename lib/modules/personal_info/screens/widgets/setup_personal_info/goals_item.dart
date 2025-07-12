import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/core/presentation/views/widgets/custom_image_view.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';

class GoalItem extends StatelessWidget {
  const GoalItem({
    super.key,
    required this.goal,
    required this.isSelected,
    required this.onTap,
  });

  final UserGoalsModel goal;
  final bool isSelected;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Co.cardColor,
        borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
        border: Border.all(color: Co.strockColor),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: const Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // workout image
            CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xff484848),
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Color(0xff575757),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  backgroundImage: customImageView(goal.imageUrl),
                  onBackgroundImageError: (exception, stackTrace) {},
                ),
              ),
            ),

            // workout title and start button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // meal name
                  Text(
                    goal.name,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TStyle.bold_16.copyWith(shadows: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                    ]),
                  ),
            
                  // radio button
                  Skeleton.shade(
                    child: Radio(
                      toggleable: true,
                      value: isSelected,
                      groupValue: true,
                      onChanged: (value) {
                        onTap();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
