import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/core/presentation/assets/app_assets.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/modules/personal_info/screens/widgets/setup_personal_info/animated_value_container.dart';
import 'package:urfit/modules/personal_info/screens/widgets/setup_personal_info/values_gridview.dart';

import '../../../../../../core/presentation/style/fonts.dart';
import '../../../../../../core/presentation/views/widgets/custom_buttons.dart';

class SeeMoreSheet<T> extends StatefulWidget {
  const SeeMoreSheet({super.key, required this.items, this.selected});
  final List<(T, String)> items;
  final Set<T>? selected;

  @override
  State<SeeMoreSheet> createState() => _SeeMoreSheetState();
}

class _SeeMoreSheetState<T> extends State<SeeMoreSheet<T>> {
  late final Set<T> selected;

  @override
  void initState() {
    selected = widget.selected ?? {};
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 30),
                Container(
                  width: 62,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Co.backGround,
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Co.greyColor)),
                    child: const FittedBox(child: CloseButton(color: Colors.black))),
              ],
            ),
          ),
          Center(
              child: SvgPicture.asset(Assets.iconsMeals,
                  colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn), height: 32)),
          const SizedBox(height: 12),
          Text(
            L10n.tr().focusedBodyPart,
            style: TStyle.semiBold_16.copyWith(color: Theme.of(context).colorScheme.primary),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          ValuesGridView(
            itemCount: widget.items.length,
            itemBuilder: (_, index) {
              final item = widget.items[index];
              return ValueContainer(
                  value: item.$2,
                  onTap: () {
                    setState(() {
                      selected.contains(item.$1) ? selected.remove(item.$1) : selected.add(item.$1);
                    });
                    print("selected body parts: $selected");
                  },
                  isSelected: selected.contains(item.$1));
            },
            // }
          ),
          const SizedBox(height: 16),
          CustomElevatedButton(
              text: L10n.tr().confirm,
              padding: EdgeInsets.zero,
              onPressed: () {
                print("selected body parts: $selected");
                context.pop(selected.toSet());
              }),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
    ;
  }
}
