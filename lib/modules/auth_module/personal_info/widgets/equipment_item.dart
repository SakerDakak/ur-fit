import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';
import 'package:urfit/core/utils/constants.dart';

class EquipmentItem extends StatelessWidget {
  const EquipmentItem({
    super.key,
    required this.isSelected,
    required this.onTap,
    required this.title,
    required this.imageUrl,
    this.shortMode = false,
  });
  final bool shortMode;
  final String title;
  final String imageUrl;
  final bool isSelected;
  final void Function() onTap;

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
          border: Border.all(color: AppColors.strockColor),
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
            if(!shortMode)
            PositionedDirectional(
              top: -10,
              start: -5,
              bottom: -10,
              child: _equipmentImage(context),
            ),

            // workout title and start button
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 20,
              ),
              child: Row(
                children: [
                   SizedBox(width:shortMode ? 0: 88),

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

  Stack _equipmentImage(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const CircleAvatar(
          radius: 50,
          backgroundColor: Color(0xff484848),
        ),
        const CircleAvatar(
          radius: 35,
          backgroundColor: Color(0xff575757),
        ),
        CircleAvatar(
          radius: 25,
          backgroundColor: Theme.of(context).colorScheme.primary,
          backgroundImage: CachedNetworkImageProvider(imageUrl),
        ),
      ],
    );
  }
}
