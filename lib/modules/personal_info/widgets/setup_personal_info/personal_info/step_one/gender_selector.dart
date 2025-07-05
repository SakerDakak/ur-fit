import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/domain/error/session.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';

import '../../../../../../core/presentation/assets/assets_manager.dart';
import '../../../../../../core/presentation/style/colors.dart';
import '../../../../../../core/presentation/style/fonts.dart';
import '../../../../../../core/presentation/utils/constants.dart';
import '../../../../../../core/presentation/utils/enums.dart';
import '../../../../../../core/presentation/views/widgets/custom_image_view.dart';

class GenderSelector extends StatefulWidget {
  final void Function(GenderEnum gender) onChanged;
  final bool justRegistered;

  const GenderSelector({super.key, required this.onChanged, required this.justRegistered});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  int? _selectedIndex;
  @override
  void initState() {
    super.initState();
    _selectedIndex = Session().currentUser?.gender?.index ?? 0;

    widget.onChanged(GenderEnum.values[_selectedIndex!]);

    print("selected index : ${Session().currentUser?.gender?.index}");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          GenderEnum.values.length,
          (i) => GestureDetector(
            onTap: () {
              if (_selectedIndex != i) {
                setState(() {
                  _selectedIndex = i;
                });
                widget.onChanged(GenderEnum.values[i]);
              }
            },
            child: Container(
              height: 116,
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: Co.cardColor,
                borderRadius: BorderRadius.circular(AppConst.kBorderRadius),
                border: Border.all(color: Co.strockColor),
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
                    top: -40,
                    start: -10,
                    bottom: 5,
                    child: _genderImage(context),
                  ),
                  PositionedDirectional(
                      start: 0,
                      child: Image(
                        image: customImageView(
                          GenderEnum.values[i] == GenderEnum.male
                              ? AssetsManager.maleGender
                              : AssetsManager.femaleGender,
                        ),
                        height: 115,
                        width: GenderEnum.values[i] == GenderEnum.male ? 180 : 200,
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.topCenter,
                      )),

                  // workout title and start button
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 20,
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          const SizedBox(width: 220),

                          // meal name
                          Expanded(
                            child: Text(
                              GenderEnum.values[i] == GenderEnum.male ? L10n.tr().male : L10n.tr().female,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TStyle.bold_16.copyWith(shadows: [
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
                              value: i == _selectedIndex,
                              groupValue: true,
                              onChanged: (value) {
                                if (_selectedIndex != i) {
                                  setState(() {
                                    _selectedIndex = i;
                                  });
                                  widget.onChanged(GenderEnum.values[i]);
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Stack _genderImage(BuildContext context) {
  return Stack(
    alignment: Alignment.center,
    children: [
      const CircleAvatar(
        radius: 69,
        backgroundColor: Color(0xff484848),
      ),
      const CircleAvatar(
        radius: 50,
        backgroundColor: Color(0xff575757),
      ),
    ],
  );
}
