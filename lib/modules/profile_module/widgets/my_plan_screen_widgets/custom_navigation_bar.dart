import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urfit/core/presentation/utils/constants.dart';
import 'package:urfit/modules/profile_module/cubit/update_user_info_cubit.dart';
import 'package:urfit/modules/profile_module/cubit/update_user_info_state.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
    required this.tabs,
    required this.onTap,
  });

  final List<Widget> tabs;
  final void Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateUserInfoCubit, UpdateUserInfoState>(
        buildWhen: (p, c) => p.currentPageIndex != c.currentPageIndex,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppConst.kHorizontalPadding),
            child: Column(
              children: [
                LayoutBuilder(builder: (context, c) {
                  // each tab width = (max width available(c.maxWidth) / tabs num
                  final tabWidth = c.maxWidth / tabs.length;

                  final currentIndex =
                      state.currentPageIndex.clamp(0, tabs.length - 1);

                  // indicator x-axis alignment
                  // x =x0 + (i * (xf-x0)/n)  ==> equation
                  // where
                  // x  => the point we need on the x-axis
                  // x0 => starting point in this case it is -1 (Alignment class range is [-1,1])
                  // xf => ending point in the range in this case it is 1
                  // i  => current part index [currentIndex]
                  // n  => total points needed (One less than the number of tabs) [widget.tabs.length - 1]
                  final indicatorAlignment = tabs.length < 2
                      ? 0.0
                      : -1 + (currentIndex * 2 / (tabs.length - 1));

                  return Column(
                    children: [
                      const SizedBox(height: 2),

                      // toggle buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < tabs.length; i++)
                            Row(
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius:
                                        BorderRadius.circular(AppConst.kBorderRadius),
                                    onTap: () {
                                      onTap(i);
                                    },
                                    child: Ink(
                                      height: 50,
                                      width: tabWidth,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 4),
                                        child: FittedBox(
                                          fit: BoxFit.scaleDown,
                                          child: tabs[i],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        ],
                      ),
                      const SizedBox(height: 3),

                      // indicator
                      Stack(
                        children: [
                          // background
                          Container(
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.circular(AppConst.kBorderRadius),
                            ),
                          ),

                          // animated indicator
                          AnimatedAlign(
                            alignment:
                                AlignmentDirectional(indicatorAlignment, 0.0),
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                            child: Container(
                              height: 2,
                              width: tabWidth,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                borderRadius:
                                    BorderRadius.circular(AppConst.kBorderRadius),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
              ],
            ),
          );
        });
  }
}
