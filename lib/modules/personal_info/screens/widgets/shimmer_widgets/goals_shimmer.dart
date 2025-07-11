import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/modules/personal_info/data/models/user_goals_model.dart';
import 'package:urfit/modules/personal_info/screens/widgets/setup_personal_info/goals_item.dart';

class GoalsShimmer extends StatelessWidget {
  const GoalsShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, __) => GoalItem(
          goal: const UserGoalsModel(
            id: -1,
            name: "the goal name",
            imageUrl:
                "https://avatars.mds.yandex.net/i?id=314a10df53c7d3092d5ae36d85872ee92d6f465f-9181363-images-thumbs&n=13",
          ),
          isSelected: false,
          onTap: () {},
        ),
      ),
    );
  }
}
