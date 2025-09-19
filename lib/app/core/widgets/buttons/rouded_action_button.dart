import 'package:flutter/material.dart';

import '../../theme/app_color_config.dart';
import '../../theme/text_config.dart';

class RoundedActionButton extends StatefulWidget {
  final Function onClick;
  final String label;
  final Color? forGroundColor;
  final double? height;
  final double? width;
  final double? radius;
  final bool? isFilled;
  final bool? isSelected;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final double? fontSize;
  final TextStyle? textStyle;

  const RoundedActionButton({
    super.key,
    required this.onClick,
    required this.label,
    this.forGroundColor,
    this.backgroundColor,
    this.height,
    this.width,
    this.fontSize,
    this.radius,
    this.borderRadius,
    this.textStyle,
    this.isFilled,
    this.isSelected,
    this.padding,
  });

  @override
  State<RoundedActionButton> createState() => _RoundedActionButtonState();
}

class _RoundedActionButtonState extends State<RoundedActionButton> {
  bool get isSelected => widget.isSelected ?? widget.isFilled ?? true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height ?? 35,
      width: widget.width,
      child: Material(
        borderRadius: widget.borderRadius ?? BorderRadius.circular(widget.radius ?? 10),
        clipBehavior: Clip.hardEdge,
        color: isSelected
            ? widget.backgroundColor ?? AppColor.button
            : Colors.transparent,
        child: InkWell(
          onTap: () {
            widget.onClick();
          },
          child: Container(
            padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
            decoration: BoxDecoration(
              borderRadius: widget.borderRadius ?? BorderRadius.circular(widget.radius ?? 10),
              border: Border.all(
                width: isSelected ? 0 : 1,
                color: isSelected
                    ? Colors.transparent
                    : widget.forGroundColor ?? AppColor.button,
              ),
            ),
            child: Center(
              child: Text(
                widget.label,
                textAlign: TextAlign.center,
                style: widget.textStyle ??
                    AppText().bodyExtraSmall.copyWith(
                      color: isSelected
                          ? widget.forGroundColor ?? AppColor.bgAuth
                          : widget.forGroundColor ?? AppColor.button,
                      fontSize: widget.fontSize ?? 14,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}