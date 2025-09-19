import 'package:flutter/material.dart';

import '../../theme/app_color_config.dart';
import '../../theme/text_config.dart';

class SimpleInputField extends StatefulWidget {
  final TextEditingController controller;
  final String fieldTitle;
  final String hintText;
  final String errorMessage;
  final BorderRadius? borderRadius;
  final TextInputAction? textInputAction;
  final TextInputType? inputType;
  final String? suffixText;
  final bool? needValidation;

  final Color? backgroundColor;
  final bool? viewOnly;
  final bool? needTitle;
  final bool? needLevel;
  final TextAlign? textAlign;
  final TextStyle? hintTextStyle;
  final TextStyle? inputTextStyle;
  final Key? itemKey;
  final Function? onValueChange;
  final TextStyle? titleStyle;
  final Widget? prefixWidget;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  final FormFieldValidator<String>? validatorClass;

  const SimpleInputField({
    super.key,
    this.onValueChange,
    required this.controller,
    required this.hintText,
    required this.errorMessage,
    this.needValidation = false,
    this.needLevel = false,
    this.textInputAction,
    this.inputType,
    this.suffixText,
    this.backgroundColor,
    this.viewOnly,
    required this.fieldTitle,
    this.validatorClass,
    this.needTitle,
    this.textAlign,
    this.prefixIcon,
    this.suffixIcon,
    this.itemKey,
    this.borderRadius,
    this.hintTextStyle,
    this.inputTextStyle,
    this.titleStyle,
    this.prefixWidget,
  });

  @override
  State<SimpleInputField> createState() => _SimpleInputFieldState();
}

class _SimpleInputFieldState extends State<SimpleInputField> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: TextFormField(
        key: widget.itemKey,
        controller: widget.controller,
        keyboardType: widget.inputType ?? TextInputType.text,
        style: widget.inputTextStyle ?? AppText().bodyExtraSmall,
        textAlign: widget.textAlign ?? TextAlign.start,
        readOnly: widget.viewOnly ?? false,
        decoration: InputDecoration(
          isDense: true,
          errorStyle: AppText().bodyLarge.copyWith(fontSize: 11, color: AppColor.red),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          hintText: widget.hintText,
          hintStyle: widget.hintTextStyle ?? AppText().bodyExtraSmall,
          filled: true,
          fillColor: widget.backgroundColor ?? AppColor.bgAuth,
          suffixText: widget.suffixText != null ? widget.suffixText.toString() : "",
          suffixIcon: widget.prefixWidget ?? (widget.suffixIcon != null ? Icon(widget.suffixIcon, size: 20) : null),
          prefixIcon: widget.prefixWidget ?? (widget.prefixIcon != null ? Icon(widget.prefixIcon, size: 20) : null),
          border: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
            borderSide: BorderSide(width: 1, color: AppColor.button.withOpacity(0.4)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
            borderSide: BorderSide(width: 1, color: AppColor.button.withOpacity(0.4)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
            borderSide: BorderSide(width: 1, color: AppColor.button.withOpacity(0.4)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: widget.borderRadius ?? BorderRadius.circular(8),
            borderSide: BorderSide(width: 1, color: AppColor.button.withOpacity(0.4)),
          ),
        ),

        textInputAction: widget.textInputAction ?? TextInputAction.next,
        onFieldSubmitted: (value) {
          widget.controller.text = value;
        },
        onSaved: (value) {
          widget.controller.text = value!;
        },
        onChanged: (value) {
          if (widget.onValueChange != null) {
            widget.onValueChange!(value);
          }
        },
      ),
    );
  }
}
