import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../core/presentation/style/colors.dart';
import '../../../core/presentation/style/fonts.dart';

class MealsToggleButtons extends StatefulWidget {
  final List<String> items;
  final int initialIndex;

  final bool canSelectMultiple;
  final Function(List<bool> selected) onSelected;

  const MealsToggleButtons(
      {super.key,
      required this.items,
      required this.initialIndex,
      required this.canSelectMultiple,
      required this.onSelected});

  @override
  State<MealsToggleButtons> createState() => _MealsToggleButtonsState();
}

class _MealsToggleButtonsState extends State<MealsToggleButtons> {
  late List<bool> isSelected;

  @override
  void initState() {
    super.initState();
    isSelected = List.generate(
        3, (index) => index == widget.initialIndex ? true : false);
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
                decoration: BoxDecoration(
                    color: isSelected[index]
                        ? Theme.of(context).colorScheme.primary
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(8.px),
                    border: Border.all(color: Co.strockColor)),
                child: Center(
                    child: Text(
                  e,
                  style: TStyle.bold_16.copyWith(
                      color: isSelected[index]
                          ? Co.blackColor
                          : Colors.white),
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

  const MealComponentsGrid({
    super.key,
    required this.items,
    required this.onSelected,
  });

  @override
  State<MealComponentsGrid> createState() => _MealComponentsGridState();
}

class _MealComponentsGridState extends State<MealComponentsGrid> {
  List<String> selected = [];

  @override
  void initState() {
    super.initState();
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
                  child: Text(
                widget.items[index],
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
