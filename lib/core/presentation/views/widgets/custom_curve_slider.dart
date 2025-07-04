import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:urfit/core/presentation/assets/const.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class CustomCurveSlider extends StatefulWidget {
  final double minValue;
  final double maxValue;
  final double? initialValue;
  final String minIconSvgPath;
  final Color minIconColor;
  final Size minIconSize;
  final String maxIconSvgPath;
  final Color maxIconColor;
  final Size maxIconSize;
  final int displayedValueFractionDigits;
  final bool roundValueToInt;
  final void Function(dynamic value)? onValueChanged;
  final void Function(dynamic value)? onDragEnd;

  const CustomCurveSlider({
    super.key,
    required this.minIconSvgPath,
    required this.maxIconSvgPath,
    this.onValueChanged,
    this.displayedValueFractionDigits = 1,
    this.minIconColor = AppColors.whiteColor,
    this.minIconSize = const Size(22, 22),
    this.maxIconColor = AppColors.whiteColor,
    this.maxIconSize = const Size(22, 22),
    required this.minValue,
    required this.maxValue,
    this.initialValue,
    this.roundValueToInt = false,
    this.onDragEnd,
  }) : assert(
          maxValue > minValue &&
              (initialValue != null
                  ? initialValue >= minValue && initialValue <= maxValue
                  : true),
        );

  @override
  State<CustomCurveSlider> createState() => _CustomCurveSliderState();
}

class _CustomCurveSliderState extends State<CustomCurveSlider> {
  late double _valuePercent;
  final double _curveWidth = 50.0;
  late double? _displayedValue;

  @override
  void initState() {
    _displayedValue = widget.initialValue;

    if (widget.roundValueToInt) {
      _displayedValue?.round();
    }

    _valuePercent =
        ((widget.initialValue ?? widget.minValue) - widget.minValue) /
            (widget.maxValue - widget.minValue);
    super.initState();
  }

  _returnDisplayedValue() {
    return widget.roundValueToInt
        ? _displayedValue!.round()
        : double.parse(
            _displayedValue!
                .toStringAsFixed(widget.displayedValueFractionDigits),
          );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        double minCurvePosition = widget.minIconSize.width;
        double maxCurvePosition =
            c.maxWidth - widget.maxIconSize.width - _curveWidth;

        return GestureDetector(
          onHorizontalDragEnd: (details) =>
              widget.onDragEnd?.call(_returnDisplayedValue()),
          onHorizontalDragUpdate: (details) {
            setState(
              () {
                // Determine the change in the position
                double dx = details.delta.dx;

                // Update the value based on the change in position
                // Scaling it to fit the 0 to 1 range
                _valuePercent += (dx / maxCurvePosition);

                // Clamp the value between 0 and 1
                _valuePercent = _valuePercent.clamp(0.0, 1.0);

                // get the displayed value from the new value percent
                _displayedValue = widget.minValue +
                    (_valuePercent * (widget.maxValue - widget.minValue));

                // pass the value to the on value changed fn
                widget.onValueChanged?.call(_returnDisplayedValue());
              },
            );
          },
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: Stack(
              children: [
                // slider paint
                CustomPaint(
                  size: const Size(double.infinity, 50),
                  painter: CurveSliderPainter(
                    curvePosition: minCurvePosition +
                        (_valuePercent * (maxCurvePosition - minCurvePosition)),
                    curveWidth: _curveWidth,
                    displayedValue: _displayedValue,
                    roundValueToInt: widget.roundValueToInt,
                    displayedValueFractionDigits:
                        widget.displayedValueFractionDigits,
                  ),
                ),

                // min and max icons
                Positioned(
                  bottom: 2,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      // min icon
                      SvgPicture.asset(
                        widget.minIconSvgPath,
                        width: widget.minIconSize.width,
                        height: widget.minIconSize.height,
                        colorFilter: ColorFilter.mode(
                          widget.minIconColor,
                          BlendMode.srcIn,
                        ),
                      ),

                      // max icon
                      SvgPicture.asset(
                        widget.maxIconSvgPath,
                        width: widget.maxIconSize.width,
                        height: widget.maxIconSize.height,
                        colorFilter: ColorFilter.mode(
                          widget.maxIconColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class CurveSliderPainter extends CustomPainter {
  final double curvePosition;
  final double curveWidth;
  final double? displayedValue;
  final int displayedValueFractionDigits;
  final bool roundValueToInt;

  const CurveSliderPainter({
    required this.curvePosition,
    required this.curveWidth,
    required this.displayedValue,
    required this.displayedValueFractionDigits,
    required this.roundValueToInt,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint sliderPaint = Paint()
      ..color = AppColors.strockColor
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;

    TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: displayedValue == null
            ? '-'
            : roundValueToInt
                ? displayedValue!.round().toString()
                : displayedValue!.toStringAsFixed(displayedValueFractionDigits),
        style: CustomTextStyle.bold_16,
      ),
      textDirection: TextDirection.ltr,
    );

    textPainter.layout();

    Path path = Path();

    // value container size
    const valueContainerHeight = 24.0;
    const valueContainerPadding = 8;
    double valueContainerWidth = textPainter.size.width + valueContainerPadding;

    final h = size.height;
    final w = size.width;

    path.moveTo(0, h);
    path.lineTo(curvePosition, h);

    path.quadraticBezierTo(
      (curveWidth / 2) + curvePosition, // control point x-axis
      20, // control point y-axis
      curveWidth + curvePosition, // end point x-axis
      h, // end point y-axis
    );

    path.lineTo(w, h);

    canvas.drawPath(path, sliderPaint);

    // the circle under the curve
    final controlCirclePaint = Paint()..color = Theme.of(rootScaffoldKey.currentContext!).colorScheme.primary;
    canvas.drawCircle(
      Offset((curveWidth / 2) + curvePosition, h - 4),
      4,
      controlCirclePaint,
    );

    // selected value container
    final valueContainerPaint = Paint()..color = AppColors.strockColor;
    Rect rect = Rect.fromLTWH(
      ((curveWidth) / 2) - (valueContainerWidth / 2) + curvePosition,
      0,
      valueContainerWidth,
      valueContainerHeight,
    );

    RRect rRect = RRect.fromRectAndRadius(rect, const Radius.circular(4));
    canvas.drawRRect(rRect, valueContainerPaint);

    // paint the text
    double textX = ((curveWidth) / 2) -
        (valueContainerWidth / 2) +
        (valueContainerPadding / 2) +
        curvePosition;
    double textY = (valueContainerHeight - textPainter.size.height) / 2;

    textPainter.paint(canvas, Offset(textX, textY));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
