import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/presentation/style/colors.dart';
import '../../../core/presentation/style/fonts.dart';

class MealsToggleButtons extends StatefulWidget {
  final List<String> items;
  final int initialIndex;
  final bool canSelectMultiple;
  final Function(List<bool> selected) onSelected;
  final List<String>? initialSelectedItems;

  const MealsToggleButtons(
      {super.key,
      required this.items,
      required this.initialIndex,
      required this.canSelectMultiple,
      required this.onSelected,
      this.initialSelectedItems});

  @override
  State<MealsToggleButtons> createState() => _MealsToggleButtonsState();
}

class _MealsToggleButtonsState extends State<MealsToggleButtons> {
  late List<bool> isSelected;

  @override
  void initState() {
    super.initState();
    if (widget.canSelectMultiple && widget.initialSelectedItems != null) {
      // للتحديد المتعدد، استخدم initialSelectedItems
      isSelected = List.generate(widget.items.length, (index) {
        return widget.initialSelectedItems!.contains(widget.items[index]);
      });
    } else {
      // للتحديد الواحد، استخدم initialIndex
      isSelected = List.generate(widget.items.length,
          (index) => index == widget.initialIndex ? true : false);
    }
  }

  @override
  void didUpdateWidget(MealsToggleButtons oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.canSelectMultiple) {
      // للتحديد المتعدد
      if (oldWidget.initialSelectedItems != widget.initialSelectedItems) {
        if (widget.initialSelectedItems != null) {
          isSelected = List.generate(widget.items.length, (index) {
            return widget.initialSelectedItems!.contains(widget.items[index]);
          });
        } else {
          isSelected = List.generate(widget.items.length, (index) => false);
        }
      }
    } else {
      // للتحديد الواحد
      if (oldWidget.initialIndex != widget.initialIndex) {
        isSelected = List.generate(widget.items.length,
            (index) => index == widget.initialIndex ? true : false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.px),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...widget.items.map((e) {
            final index = widget.items.indexOf(e);
            return GestureDetector(
              onTap: () {
                if (widget.canSelectMultiple) {
                  setState(() {
                    isSelected[index] = !isSelected[index];
                  });
                } else {
                  setState(() {
                    for (int buttonIndex = 0;
                        buttonIndex < isSelected.length;
                        buttonIndex++) {
                      if (buttonIndex == index) {
                        isSelected[buttonIndex] = true;
                      } else {
                        isSelected[buttonIndex] = false;
                      }
                    }
                  });
                }
                widget.onSelected(isSelected);
              },
              child: Container(
                height: 40.px,
                width: 110.px,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                    color: isSelected[index]
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8.px),
                    border: Border.all(color: Co.strockColor)),
                child: Center(
                    child: AutoSizeText(
                  e,
                  maxLines: 2,
                  minFontSize: 10,
                  textAlign: TextAlign.center,
                  style: TStyle.bold_14.copyWith(
                      color: isSelected[index] ? Co.blackColor : Colors.white),
                )),
              ),
            );
          })
        ],
      ),
    );
  }
}

class MealComponentsGrid extends StatefulWidget {
  final List<String> items;
  final Function(List<String> selected) onSelected;
  final List<String>? initialSelected;

  const MealComponentsGrid({
    super.key,
    required this.items,
    required this.onSelected,
    this.initialSelected,
  });

  @override
  State<MealComponentsGrid> createState() => _MealComponentsGridState();
}

class _MealComponentsGridState extends State<MealComponentsGrid> {
  List<String> selected = [];

  @override
  void initState() {
    super.initState();
    // استخدام التحديدات الأولية إذا كانت متوفرة
    if (widget.initialSelected != null) {
      selected = List.from(widget.initialSelected!);
    }
  }

  @override
  void didUpdateWidget(MealComponentsGrid oldWidget) {
    super.didUpdateWidget(oldWidget);
    // تحديث التحديدات عند تغيير initialSelected
    if (oldWidget.initialSelected != widget.initialSelected) {
      if (widget.initialSelected != null) {
        selected = List.from(widget.initialSelected!);
      } else {
        selected = [];
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.px),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: widget.items.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 105.px / 27.px,
            mainAxisSpacing: 8.px,
            crossAxisSpacing: 8.px),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                if (selected.contains(widget.items[index])) {
                  selected.remove(widget.items[index]);
                } else {
                  selected.add(widget.items[index]);
                }
              });
              widget.onSelected(selected);
            },
            child: Container(
              height: 40.px,
              width: 110.px,
              decoration: BoxDecoration(
                  color: selected.contains(widget.items[index])
                      ? Theme.of(context).colorScheme.primary
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(8.px),
                  border: Border.all(color: Co.strockColor)),
              child: Center(
                  child: AutoSizeText(
                widget.items[index],
                maxLines: 1,
                minFontSize: 10,
                style: TStyle.bold_16.copyWith(
                    color: selected.contains(widget.items[index])
                        ? Co.blackColor
                        : Colors.white),
              )),
            ),
          );
        },
      ),
    );
  }
}
