
import 'package:flutter/material.dart';
import 'package:r_icon_pro/r_icon_pro.dart';

import '../../constant/validator.dart';
import '../../theme/app_color_config.dart';
import '../../theme/text_config.dart';

class PasswordInputFieldSingle extends StatefulWidget {
  final TextEditingController password;
  final TextEditingController? passwordMatch;
  final String fieldTitle;
  final String hintText;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final TextInputAction? textInputAction;
  final IconData? prefixIcon;
  final Widget? prefixWidget;

  const PasswordInputFieldSingle({
    super.key,
    required this.password,
    this.prefixIcon,
    required this.fieldTitle,
    required this.hintText,
    this.textInputAction,
    this.backgroundColor,
    this.borderRadius,
    this.prefixWidget,
    this.passwordMatch,
  });

  @override
  State<PasswordInputFieldSingle> createState() => _PasswordInputFieldSingleState();
}

class _PasswordInputFieldSingleState extends State<PasswordInputFieldSingle> {
  bool hidePassword = true;
  bool hasSomePassword = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: TextFormField(
        obscureText: hidePassword,
        controller: widget.password,
        style: AppText().bodyExtraSmall,
        onSaved: (value) {
          widget.password.text = value!;
        },
        onChanged: (value) {
          if (widget.password.text.isNotEmpty) {
            setState(() {
              hasSomePassword = true;
            });
          } else {
            setState(() {
              hasSomePassword = false;
            });
          }
        },
        textInputAction: widget.textInputAction ?? TextInputAction.done,
        validator: widget.passwordMatch == null
            ? Validator().validatePassword
            : (value) {
                if (widget.passwordMatch!.text.compareTo(widget.password.text) != 0) {
                  return "Password doesn't match, Please try again";
                }
                return null;
              },
        decoration: InputDecoration(
          isDense: true,
          focusColor: AppColor.scaffoldColor,
          labelStyle: AppText().bodyExtraSmall,
          filled: true,
          fillColor: widget.backgroundColor ?? AppColor.bgAuth,
          errorStyle: AppText().bodyMediumBold.copyWith(fontSize: 11, color: AppColor.red),
          prefixIcon: widget.prefixWidget ?? (widget.prefixIcon != null ? Icon(widget.prefixIcon, size: 16) : null),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                hidePassword = !hidePassword;
              });
            },
            icon: hidePassword ? const Icon(Icons.visibility_off,color: AppColor.button,) : const Icon(RIcon.Eye),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          hintText: widget.hintText,
          hintStyle: AppText().bodyExtraSmall,
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
      ),
    );
  }
}
