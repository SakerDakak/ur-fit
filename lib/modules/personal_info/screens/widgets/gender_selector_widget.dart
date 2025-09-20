import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';

import '../../../../core/presentation/assets/assets_manager.dart';
import '../../../../core/presentation/style/colors.dart';
import '../../../../core/presentation/style/fonts.dart';
import '../../../../core/presentation/utils/constants.dart';
import '../../../../core/presentation/utils/enums.dart';
import '../../../../core/presentation/views/widgets/custom_image_view.dart';

class GenderSelectorWidget extends StatefulWidget {
  final void Function(GenderEnum gender) onChanged;
  final GenderEnum? initial;
  const GenderSelectorWidget(
      {super.key, required this.onChanged, this.initial});

  @override
  State<GenderSelectorWidget> createState() => _GenderSelectorWidgetState();
}

class _GenderSelectorWidgetState extends State<GenderSelectorWidget> {
  GenderEnum? _selectedIndex;
  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initial;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        GenderEnum.values.length,
        (i) {
          final gender = GenderEnum.values[i];
          return GestureDetector(
            onTap: () {
              if (_selectedIndex != gender) {
                setState(() {
                  _selectedIndex = gender;
                });
                widget.onChanged(gender);
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
                    color: Colors.black.withValues(alpha: 0.2),
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                    spreadRadius: 0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        // workout image
                        const PositionedDirectional(
                          top: 5,
                          start: -10,
                          bottom: -40,
                          child: CircleAvatar(
                            radius: 69,
                            backgroundColor: Color(0xff484848),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundColor: Color(0xff575757),
                            ),
                          ),
                        ),
                        PositionedDirectional(
                            start: 6,
                            bottom: -24,
                            child: Image(
                              image: customImageView(
                                GenderEnum.values[i] == GenderEnum.male
                                    ? AssetsManager.maleGender
                                    : AssetsManager.femaleGender,
                              ),
                              height: 115,
                              width: 100,
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                            )),

                        // workout title and start button
                      ],
                    ),
                  ),
                  Text(
                    GenderEnum.values[i] == GenderEnum.male
                        ? L10n.tr().male
                        : L10n.tr().female,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TStyle.bold_16.copyWith(shadows: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.2),
                        offset: const Offset(0, 4),
                        blurRadius: 4,
                        spreadRadius: 0,
                      ),
                    ]),
                  ),
                  Skeleton.shade(
                    child: AbsorbPointer(
                      child: Radio(
                        toggleable: true,
                        value: gender,
                        groupValue: _selectedIndex,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
