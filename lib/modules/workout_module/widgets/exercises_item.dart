import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/assets_manager.dart';
import 'package:urfit/modules/workout_module/today_workout_screen.dart';

import '../../../core/shared/widgets/custom_image_view.dart';
import '../../../core/style/colors.dart';
import '../../../core/style/fonts.dart';
import '../../../core/utils/constants.dart';
import '../data/model/workout_model.dart';

class ExercisesItem extends StatelessWidget {
  final List<Exercise> exercises;
  const ExercisesItem({super.key, required this.exercises});

  @override
  Widget build(BuildContext context) {

    print("fix image : ${exercises.first.gifUrl}");
    return Container(
      clipBehavior: Clip.antiAlias,
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
          Positioned(
            top: -10,
            bottom: -10,
            child: workoutImage(context,imageUrl: exercises.first.gifUrl),
          ),

          // workout title and start button
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 35,
            ),
            child: Row(
              children: [
                const SizedBox(width: 88),

                // workout title
                Expanded(
                  child: Text(
                    exercises.first.bodyPart,
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
                GestureDetector(
                  onTap: (){
                    context.pushNamed(TodayWorkoutScreen.routeWzExtra,extra: exercises);
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(kBorderRadius),
                    ),
                    child: Text(
                      'ابدا',
                      style: CustomTextStyle.bold_14,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
Stack workoutImage(BuildContext context , {String? imageUrl}) {
  return  Stack(
    alignment: Alignment.center,
    children: [
      const CircleAvatar(
        radius: 55,
        backgroundColor: Color(0xff484848),
      ),
      const CircleAvatar(
        radius: 45,
        backgroundColor: Color(0xff575757),
      ),
      CircleAvatar(
        radius: 35,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child:  Image(
          errorBuilder: (context, error, stackTrace) {
            return  SvgPicture.asset(AssetsManager.workout);
          },
          image: customImageView(imageUrl ?? 'https://s3-alpha-sig.figma.com/img/f06c/51a6/6c6ee43165334dccd6f0dff1e2a5500d?Expires=1734307200&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=NtqQfNCZBntSo4cFjzuL~ildCNgKeBQkV2KDClLYuEv-uZJ1DAGeFVlo92fN~ek3q16harFjkgRFAZpCs7FGrEali9gxGAiBNNb~tpvsTHp5Zw94GuIR9MkzsAwFYD3LIA~SASV9POMyM~xBIVaWQQcUfR~-YcvcXHYBtaHTPCFiac64fKrNg3vU-psF9MufTjIhdAaqib-n5qp2Qg4JW43~AqR2arjrm0lWoTcJA27-6wqumuTpm8GNYV4PbeAg6iHX-RPmg82rq56qsSXnCJPO4ctDXDwOrBfTdArulUTtS5FmR7aOl3swRyd36SAMyhFUV2iBGYl68oJXTB4Etg__',


          ),
        )
      ),
    ],
  );
}
