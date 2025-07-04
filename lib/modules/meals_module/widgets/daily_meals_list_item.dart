import 'package:flutter/material.dart';

import '../../../core/presentation/style/colors.dart';
import '../../../core/presentation/style/fonts.dart';
import '../../../core/presentation/utils/constants.dart';

class DailyMealsListItem extends StatelessWidget {
  final String title;
  final String img;
  final VoidCallback onTap;
  const DailyMealsListItem({super.key, required this.title, required this.img, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(kBorderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: const Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Stack(
          children: [
            // workout image
            PositionedDirectional(
              top: -10,
              start: -5,
              bottom: -10,
              child: _mealImage(context,img),
            ),

            // workout title and start button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 30,
              ),
              child: Row(
                children: [
                  const SizedBox(width: 88),

                  // meal name
                  Expanded(
                    child: Text(
                      title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyle.bold_16.copyWith(shadows: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        ),
                      ]),
                    ),
                  ),

                  // start button
                  Transform.flip(
                    flipX: true,
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      size: 20,
                      color: AppColors.whiteColor.withOpacity(0.8),
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
Stack _mealImage(BuildContext context , String img) {
  return  Stack(
    alignment: Alignment.center,
    children: [
      const CircleAvatar(
        radius: 60,
        backgroundColor: Color(0xff484848),
      ),
      const CircleAvatar(
        radius: 45,
        backgroundColor: Color(0xff575757),
      ),
      CircleAvatar(
        radius: 35,
        backgroundColor: Theme.of(context).colorScheme.primary,
        backgroundImage:  AssetImage(img),
      ),
    ],
  );
}
