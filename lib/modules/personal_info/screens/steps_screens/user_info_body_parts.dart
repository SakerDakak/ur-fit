import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/data/fakers.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/views/widgets/failure_widget.dart';
import 'package:urfit/modules/personal_info/screens/widgets/body_parts_image_widget.dart';
import 'package:urfit/modules/personal_info/screens/widgets/see_more_sheet.dart';

import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/views/widgets/custom_buttons.dart';
import '../../cubit/setup_personal_info_cubit.dart';
import '../widgets/radio_box_with_img.dart';

class UserInfoBodyParts extends StatefulWidget {
  const UserInfoBodyParts({super.key});

  @override
  State<UserInfoBodyParts> createState() => _UserInfoBodyPartsState();
}

class _UserInfoBodyPartsState extends State<UserInfoBodyParts> {
  late final SetupPersonalInfoCubit cubit;
  @override
  void initState() {
    cubit = context.read<SetupPersonalInfoCubit>();
    cubit.getBodyPartsData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SetupPersonalInfoCubit, SetupPersonalInfoState>(
      buildWhen: (previous, current) => current is MuscleFocusStates,
      builder: (context, state) {
        if (state is! MuscleFocusStates) return const SizedBox.shrink();
        if (state is MuscleFocusError) {
          return FailureWidget(
            message: state.error,
            onRetry: () => cubit.getBodyPartsData(),
          );
        }
        final bodyParts = state is MuscleFocusLoading ? Fakers().bodyPartsModel : state.muscleFocusData;
        final isAllSelected = state.userInfo.bodyPartsIds.length == bodyParts.length;
        return Skeletonizer(
          enabled: state is MuscleFocusLoading,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    spacing: 6,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(L10n.tr().focusedBodyPart, style: TStyle.semiBold_16, textAlign: TextAlign.start),
                      AbsorbPointer(
                        absorbing: state is MuscleFocusLoading,
                        child: GestureDetector(
                          onTap: () async {
                            if (isAllSelected) {
                              cubit.toggleBodyParts('', addSet: {});
                            } else {
                              cubit.toggleBodyParts('', addSet: bodyParts.map((e) => e.key).toSet());
                            }
                          },
                          child: Text(
                            isAllSelected ? L10n.tr().unselectAll : L10n.tr().selectAll,
                            style: TStyle.semiBold_16.copyWith(
                                color: isAllSelected ? Colors.blueGrey : cubit.colorScheme.primary),
                          ),
                        ),
                      ),
                    ],
                  ),
                if(!isAllSelected && bodyParts.length> 4)  AbsorbPointer(
                    absorbing: state is MuscleFocusLoading,
                    child: GestureDetector(
                      onTap: () async {
                        final selected = await showModalBottomSheet<Set<String>>(
                          backgroundColor: Colors.white,
                          context: context,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                          ),
                          builder: (ctx) => SeeMoreSheet<String>(
                            items: state.muscleFocusData.map((e) => (e.key, e.value)).toList(),
                            selected: state.userInfo.bodyPartsIds,
                          ),
                        );
                        if (selected != null) cubit.toggleBodyParts('', addSet: selected);
                      },
                      child: Text(
                        L10n.tr().seeMore,
                        style: TStyle.semiBold_16.copyWith(color: cubit.colorScheme.primary),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),
              Expanded(
                flex: 5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Animate(
                        effects: const [FadeEffect()],
                        child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: isAllSelected ? bodyParts.length : bodyParts.length > 4 ? 4 : bodyParts.length,
                            itemBuilder: (context, index) {
                              final item = bodyParts[index];
                              return RadioBoxWithImage(
                                  shortMode: true,
                                  title: item.value,
                                  imageUrl: item.image,
                                  onTap: () => cubit.toggleBodyParts(item.key),
                                  isSelected: state.userInfo.bodyPartsIds.contains(item.key));
                            }),
                      ),
                    ),
                    const Expanded(
                      child: Skeleton.keep(
                        child: BodyPartsImageWidget(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              // continue button
              CustomElevatedButton(
                text: L10n.tr().continuee,
                padding: EdgeInsets.zero,
                onPressed: state.userInfo.bodyPartsIds.isEmpty
                    ? null
                    : () {
                        cubit.nextPage();
                      },
              ),
              const SizedBox(height: 40)
            ],
          ),
        );
      },
    );
  }
}
