import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/data/fakers.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/modules/personal_info/screens/widgets/see_more_sheet.dart';

import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../cubit/setup_personal_info_cubit.dart';
import '../widgets/radio_box_with_img.dart';

class UserInfoWorkTypesOrLocation extends StatelessWidget {
  const UserInfoWorkTypesOrLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();
    cubit.getWorkoutTypes();

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (p, c) => c is WorkoutTypesStates,
      builder: (context, state) {
        if (state is! WorkoutTypesStates) return const SizedBox.shrink();
        if (state is WorkoutTypesError) {
          return FailureWidget(
            message: state.error,
            onRetry: () => cubit.getWorkoutTypes(),
          );
        }
        final tools = state is WorkoutTypesLoaded ? state.workoutTypes : Fakers().selectionModels;
        return Skeletonizer(
          enabled: state is! WorkoutTypesLoaded,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 32,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        L10n.tr().excerciseLocation,
                        style: TStyle.semiBold_16,
                        textAlign: TextAlign.start,
                      ),
                      if (tools.length > 4)
                        GestureDetector(
                          onTap: () async {
                            final res = await showModalBottomSheet(
                              backgroundColor: Colors.white,
                              context: context,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              ),
                              builder: (ctx) => SeeMoreSheet(
                                items: tools.map((e) => (e.id, e.name)).toList(),
                                selected: state.userInfo.workoutTypesIds,
                              ),
                            );
                            if (res != null) cubit.toggleWorkoutType(0, addSet: res);
                          },
                          child: Text(
                            L10n.tr().seeMore,
                            style: TStyle.semiBold_16.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),
                Animate(
                  effects: const [FadeEffect()],
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: tools.length > 4 ? 4 : tools.length,
                    itemBuilder: (context, index) => RadioBoxWithImage(
                        title: tools[index].name,
                        imageUrl: tools[index].image ?? "",
                        onTap: () => cubit.toggleWorkoutType(tools[index].id),
                        isSelected: state.userInfo.workoutTypesIds.contains(
                          tools[index].id,
                        )),
                  ),
                ),

                // }

                // continue button
                CustomElevatedButton(
                  text: L10n.tr().continuee,
                  padding: EdgeInsets.zero,
                  onPressed: state.userInfo.workoutTypesIds.isNotEmpty
                      ? () async {
                          cubit.nextPage();
                        }
                      : null,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
