import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../daily_meals_list_item.dart';

class MealsListShimmer extends StatelessWidget {
  const MealsListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4, itemBuilder: (BuildContext context, int index) {
        return  DailyMealsListItem(title: '',img: "",onTap: (){},);
      },),
    );
  }
}
