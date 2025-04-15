import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:urfit/core/style/colors.dart';

class OtpFormFields extends StatefulWidget {
  const OtpFormFields({
    super.key,
    required this.fieldsCount,
    required this.onCompleted,
    this.borderType = BorderTypeEnum.outLineBorder,
    this.outlineBorderRadius = 8.0,
  });

  final int fieldsCount;
  final BorderTypeEnum borderType;
  final double outlineBorderRadius;
  final void Function(String) onCompleted;

  @override
  State<OtpFormFields> createState() => _OtpFormFieldsState();
}

class _OtpFormFieldsState extends State<OtpFormFields> {
  late List<TextEditingController> controllers;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // generate the otp controllers list
    controllers = List.generate(
      widget.fieldsCount,
      (index) => TextEditingController(),
    );

    super.initState();
  }

  @override
  void dispose() {
    for (int i = 0; i < controllers.length; i++) {
      controllers[i].dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Form(
        key: formKey,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (int i = 0; i < controllers.length; i++)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: SizedBox(
                    width: 48.0,
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      controller: controllers[i],
                      keyboardType: TextInputType.number,
                      autovalidateMode: AutovalidateMode.always,

                      // filter the input to accept only degits and only 1 number
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1),
                      ],

                      // validator
                      validator: (val) {
                        if (val!.isEmpty) {
                          return '';
                        } else {
                          return null;
                        }
                      },

                      // on changing the field value
                      onChanged: (val) {
                        if (val.length == 1 && i < widget.fieldsCount - 1) {
                          FocusScope.of(context).nextFocus();
                        } else if (val.isEmpty && i > 0) {
                          FocusScope.of(context).previousFocus();
                        }
                        if (formKey.currentState!.validate()) {
                          String otpCode =
                              controllers.map((e) => e.text).join();
                          widget.onCompleted(otpCode);
                        }
                      },

                      // fields decoration
                      decoration: InputDecoration(
                        hintText: '0',
                        isDense:
                            widget.borderType == BorderTypeEnum.outLineBorder
                                ? true
                                : false,
                        border: _buildBorder(),
                        errorBorder: _buildBorder(),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  InputBorder _buildBorder() {
    return widget.borderType == BorderTypeEnum.outLineBorder
        ? OutlineInputBorder(
            borderSide: const BorderSide(
              color: AppColors.strockColor,
            ),
            borderRadius: BorderRadius.circular(
              widget.outlineBorderRadius,
            ),
          )
        : const UnderlineInputBorder();
  }
}

enum BorderTypeEnum {
  underLineBorder,
  outLineBorder,
}
