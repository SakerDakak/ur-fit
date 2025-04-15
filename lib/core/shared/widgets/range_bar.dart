import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:sizer/sizer.dart';
import 'package:urfit/core/style/colors.dart';
import 'package:urfit/core/style/fonts.dart';

class RangeBar extends StatefulWidget {
  final String title;
  final double maxRange;
  final double minRange;
  final List<double> initialValues;
  final bool? isSingle;
  final bool alwaysShowTooltip;
  final EdgeInsetsGeometry? padding;
  final Function(
    int handlerIndex,
    dynamic lowerValue,
    dynamic upperValue,
  ) onChanged;

  const RangeBar({
    super.key,
    required this.maxRange,
    required this.initialValues,
    required this.onChanged,
    required this.minRange,
    this.isSingle,
    required this.title,
    this.alwaysShowTooltip = true,
    this.padding,
  });

  @override
  State<RangeBar> createState() => _RangeBarState();
}

class _RangeBarState extends State<RangeBar> {
  List<double>? _currentRangeValues;
  bool currentlyDragging = false;

  @override
  void initState() {
    super.initState();
    _currentRangeValues = widget.initialValues;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.symmetric(horizontal: 12.px),
      child: Stack(
        // alignment: Alignment.center,
        children: [
          FlutterSlider(
            trackBar: FlutterSliderTrackBar(
              activeTrackBarHeight: 2.px,
              inactiveTrackBarHeight: 2.px,
              activeTrackBar:  BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
              ),
              inactiveTrackBar: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            rangeSlider: widget.isSingle == null ? true : widget.isSingle!,
            values: _currentRangeValues!,
            rtl: true,
            max: widget.maxRange,
            min: widget.minRange,
            handlerHeight: 30.px,
            handlerWidth: 10.px,
            rightHandler: FlutterSliderHandler(
              child: Container(
                decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            handler: FlutterSliderHandler(
              child: Container(
                decoration:  BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            tooltip: FlutterSliderTooltip(
              textStyle: CustomTextStyle.semiBold_10,
              positionOffset: FlutterSliderTooltipPositionOffset(top: -10),
              alwaysShowTooltip: widget.alwaysShowTooltip,
              custom: (value) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.px),
                      color: Theme.of(context).colorScheme.primary),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.px, vertical: 4.px),
                    child: Text(
                      "${widget.title} ${(value as double).toStringAsFixed(0)}",
                      style: CustomTextStyle.semiBold_14
                          .copyWith(color: Colors.black),
                    ),
                  ),
                );
              },
            ),
            onDragCompleted: (
              int handlerIndex,
              dynamic lowerValue,
              dynamic upperValue,
            ) {
              widget.onChanged(handlerIndex, lowerValue, upperValue);
              setState(() {
                currentlyDragging = false;
              });
            },
            onDragging:
                (int handlerIndex, dynamic lowerValue, dynamic upperValue) {
              setState(() {
                _currentRangeValues = [lowerValue, upperValue];
                currentlyDragging = true;
              });
            },
          ),
          if (!currentlyDragging)
            Positioned.fill(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 6.px, horizontal: 6.px),
                  child: Text(
                    "${widget.minRange} ${widget.title}",
                    style: CustomTextStyle.semiBold_14,
                  ),
                ),
              ),
            ),
          if (!currentlyDragging)
            Positioned.fill(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 6.px, horizontal: 6.px),
                  child: Text(
                    "${widget.maxRange} ${widget.title}",
                    style: CustomTextStyle.semiBold_14,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
