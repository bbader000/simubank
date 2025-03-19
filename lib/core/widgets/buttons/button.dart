import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

class Button extends StatelessWidget {
  const Button({
    required this.title,
    required this.textColor,
    required this.fillColor,
    required this.highlightFillColor,
    required this.disabledFillColor,
    super.key,
    this.icon,
    this.onTap,
    this.isLoading = false,
    this.highlightTextColor,
    this.disabledTextColor,
    this.splashColor,
    this.width,
  });

  final String title;
  final Widget? icon;
  final VoidCallback? onTap;
  final bool isLoading;
  final Color textColor;
  final Color? highlightTextColor;
  final Color? disabledTextColor;
  final Color fillColor;
  final Color highlightFillColor;
  final Color disabledFillColor;
  final Color? splashColor;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final isIos = defaultTargetPlatform == TargetPlatform.iOS;
    final isDisabled = onTap == null;

    final text = ButtonText(title, color: textColor);
    return RawMaterialButton(
      shape: const RoundedRectangleBorder(
        borderRadius: UIConstants.borderRadiusAll8,
      ),
      padding: UIConstants.paddingAll12,
      constraints: BoxConstraints(minHeight: 60, minWidth: width ?? 0),
      elevation: 0,
      fillColor: isDisabled ? disabledFillColor : fillColor,
      highlightColor: highlightFillColor,
      highlightElevation: isIos ? 0 : 8,
      splashColor: isIos ? Colors.transparent : splashColor,
      onPressed: onTap,
      child:
          isLoading
              ? ActivityIndicator(color: context.colors.mainWhite)
              : icon == null
              ? text
              : Row(spacing: 12, children: [if (icon != null) icon!, text]),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.title,
    super.key,
    this.isLoading = false,
    this.onTap,
    this.width,
  });

  factory PrimaryButton.loading() =>
      PrimaryButton(title: '', isLoading: true, onTap: () {});

  final String title;
  final bool isLoading;
  final VoidCallback? onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Button(
      title: title,
      onTap: onTap,
      isLoading: isLoading,
      textColor: colors.mainWhite,
      fillColor: colors.mainBlue,
      highlightFillColor: colors.mainGrey,
      disabledFillColor: colors.mainGrey,
      splashColor: colors.mainWhite,
      width: width,
    );
  }
}
