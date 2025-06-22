import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/utils/app_assets.dart';

import '../../../../../../../core/shared/widgets/custom_buttons.dart';
import '../../../../../../../core/style/fonts.dart';
import '../../../../../../../core/utils/enums.dart';
import '../../../../../../../generated/locale_keys.g.dart';
import '../../../../../bloc/authentication_bloc.dart';
import '../../../../controller/cubit/setup_personal_info_cubit.dart';
import '../../../equipment_item.dart';
import '../../../shimmer_widgets/equipment_shimmer.dart';
import '../../../shimmer_widgets/values_gridview_shimmer.dart';
import '../../animated_value_container.dart';
import '../../values_gridview.dart';

class FinalStepNotPreferredMeals extends StatelessWidget {
  const FinalStepNotPreferredMeals({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SetupPersonalInfoCubit>();
    cubit.getNotLikedMealsOptions();
    final user = context.read<AuthenticationBloc>().currentUser;

    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (previous, current) => previous.userInfo.notLikedMealsIds != current.userInfo.notLikedMealsIds ,
      builder: (context, state) {
        bool canProssed = state.userInfo.notLikedMealsIds.isNotEmpty;
        print("canProssed: ${state.userInfo.notLikedMealsIds}");
        return SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width  - 32,
                  child: Row(
                    children: [
                      Text(
                        LocaleKeys.mealsNotLiked.tr(),
                        style: CustomTextStyle.semiBold_16,
                        textAlign: TextAlign.start,
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          print("showBottomSheet ${state.mealsNotLiked}");
          
                          showBottomSheet(
                            backgroundColor: Colors.white,
                            context: context,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                            ),
                            builder: (ctx) {
                              final user = context.read<AuthenticationBloc>().currentUser;
          
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      height: 40,
                                      child: Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional.center,
                                            child: Center(
                                              child: Container(
                                                width: 62,
                                                height: 4,
                                                decoration: BoxDecoration(
                                                  color: AppColors.backGround,
                                                  borderRadius: BorderRadius.circular(16),
                                                ),
                                              )
                                            ),
                                          ),
          
                                          Align(
                                            alignment: AlignmentDirectional.centerEnd,
                                              child: Container(
                                                height: 30,
                                                width: 30,
                                                decoration: BoxDecoration(shape: BoxShape.circle,border: Border.all(color: AppColors.greyColor)),
                                                  child: FittedBox(child: CloseButton(color: Colors.black,)))),
          
                                        ],
                                      ),
                                    ),
                                    Center(
                                      child: SvgPicture.asset(AppAssets.iconsMeals,colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),height: 32,),
                                    ),
                                    SizedBox(height: 12,),
                                    Text(
                                      LocaleKeys.mealsNotLiked.tr(),
                                      style: CustomTextStyle.semiBold_16.copyWith(color: Theme.of(context).colorScheme.primary),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 16,),
          
                               BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
                                buildWhen: (p, c) =>
                                p.userInfo.notLikedMealsIds != c.userInfo.notLikedMealsIds ||
                                    p.getNotLikedMealsState != c.getNotLikedMealsState,
                                builder: (context, state) {
                                  print("state liked meals ${state.userInfo.likedMealsIds}");
                                  if (state.getNotLikedMealsState == RequestState.loading ||
                                      state.getNotLikedMealsState == RequestState.failure) {
                                    return const ValuesGridviewShimmer();
                                  } else {
                                    return ValuesGridView(
                                      itemCount: state.mealsNotLiked.length,
                                      itemBuilder: (_, index) => ValueContainer(
                                        value: state.mealsNotLiked[index].name,
                                        onTap: () {
                                          cubit.updateSelectedNotLikedMeals(state.mealsNotLiked[index].id);
                                        },
                                        isSelected: state.userInfo.notLikedMealsIds.contains(
                                          state.mealsNotLiked[index].id,
                                        ) ,
                                      ),
                                    );
                                  }
                                },
                              ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                    CustomElevatedButton(
                                      text: LocaleKeys.confirm.tr(),
                                      padding: EdgeInsets.zero,
                                      onPressed: canProssed
                                          ? () {
                                        context.pop();
                                      }
                                          : null,
                                    ),
                                    SizedBox(
                                      height: 16,
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          LocaleKeys.seeMore.tr(),
                          style: CustomTextStyle.semiBold_16.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          
              const SizedBox(height: 16),
              BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
                buildWhen: (p, c) =>
                    (p.userInfo.notLikedMealsIds != c.userInfo.notLikedMealsIds) ||
                    (p.getNotLikedMealsState != c.getNotLikedMealsState),
                builder: (context, state) {
                  if (state.getNotLikedMealsState == RequestState.loading ||
                      state.getNotLikedMealsState == RequestState.failure) {
                    return const EquipmentShimmer();
                  } else {
                    return Animate(
                      effects: const [FadeEffect()],
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.mealsNotLiked.length > 4 ? 4 : state.mealsNotLiked.length,
                        itemBuilder: (context, index) => EquipmentItem(
                          title: state.mealsNotLiked[index].name,
                          imageUrl: state.mealsNotLiked[index].image ?? "",
                          onTap: () => cubit.updateSelectedNotLikedMeals(state.mealsNotLiked[index].id),
                          isSelected: state.userInfo.notLikedMealsIds.contains(
                                state.mealsNotLiked[index].id,
                              )
                        ),
                      ),
                    );
                  }
                },
              ),
              // continue button
              CustomElevatedButton(
                text: LocaleKeys.continuee.tr(),
                padding: EdgeInsets.zero,
                onPressed: canProssed
                    ? () {
                        cubit.goToNextIndexFinalStep();
                      }
                    : null,
              ),
            ],
          ),
        );
      },
    );
  }
}
