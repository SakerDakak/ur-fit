import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../style/colors.dart';
import '../../style/fonts.dart';

class CompactTextFormField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Widget? prefixIcon;
  final Iterable<String>? autoFillHints;
  final String? initialValue;
  final String? title;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? contentPadding;
  final int? maxLines;
  final TextStyle? style;
  final Color? borderColor;
  final TextStyle? titleStyle;

  const CompactTextFormField({
    super.key,
    this.controller,
    required this.hintText,
    this.obscureText = false,
    this.validator,
    this.onChanged,
    this.prefixIcon,
    this.autoFillHints,
    this.initialValue,
    this.title,
    this.padding,
    this.maxLines,
    this.contentPadding,
    this.style,
    this.borderColor,
    this.titleStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.symmetric(horizontal: 16.px),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null)
            Text(
              title!,
              style: titleStyle ?? TStyle.regular_16,
            ),
          if (title != null)
            SizedBox(
              height: 8.px,
            ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUnfocus,
            keyboardType: TextInputType.emailAddress,
            validator: validator,
            controller: controller,
            obscureText: obscureText,
            autofillHints: autoFillHints,
            initialValue: initialValue,
            maxLines: maxLines,
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              filled: true,
              prefixIcon: prefixIcon,
              hintText: hintText,
              hintStyle: TStyle.regular_14.copyWith(
                color: Co.greyColor,
              ),
              contentPadding: contentPadding ??
                  EdgeInsets.symmetric(
                    vertical: 1.5.px,
                    horizontal: 15.0,
                  ), // Reduced padding
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  width: 1,
                  color: borderColor ?? const Color(0xffE8EEF0),
                ),
              ),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 1,
                    color: borderColor ?? const Color(0xffE8EEF0),
                  ),
                  borderRadius: BorderRadius.circular(8)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 1,
                  color: borderColor ?? const Color(0xffE8EEF0),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onChanged: onChanged,
            style: style ?? const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}

class CompactPasswordTextFormField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final Widget? prefixIcon;
  final Iterable<String>? autoFillHints;
  final String? initialValue;
  final String? title;
  final TextStyle? style;
  final Color? borderColor;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? padding;

  const CompactPasswordTextFormField({
    super.key,
    this.controller,
    required this.hintText,
    this.validator,
    this.onChanged,
    this.prefixIcon,
    this.autoFillHints,
    this.initialValue,
    this.title,
    this.style,
    this.borderColor,
    this.titleStyle,
    this.padding,
  });

  @override
  _CompactPasswordTextFormFieldState createState() => _CompactPasswordTextFormFieldState();
}

class _CompactPasswordTextFormFieldState extends State<CompactPasswordTextFormField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.symmetric(horizontal: 16.px),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.title != null)
            Text(
              widget.title!,
              style: widget.titleStyle ?? TStyle.regular_16,
            ),
          if (widget.title != null)
            SizedBox(
              height: 8.px,
            ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUnfocus,
            controller: widget.controller,
            obscureText: _obscureText,
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
            validator: widget.validator,
            onChanged: widget.onChanged,
            initialValue: widget.initialValue,
            autofillHints: widget.autoFillHints,
            decoration: InputDecoration(
              fillColor: Colors.transparent,
              filled: true,
              prefixIcon: widget.prefixIcon,
              hintText: widget.hintText,
              hintStyle: TStyle.regular_14.copyWith(
                color: Co.greyColor,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 1.5.px,
                horizontal: 15.0,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  width: 1,
                  color: widget.borderColor ?? const Color(0xffE8EEF0),
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(
                  width: 1,
                  color: widget.borderColor ?? const Color(0xffE8EEF0),
                ),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
