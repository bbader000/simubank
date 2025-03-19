import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/gen/locale_keys.g.dart';

class Toast extends StatelessWidget {
  const Toast({required this.text, required this.backgroundColor, super.key});

  factory Toast.error({required String text, required Color backgroundColor}) {
    return Toast(text: text, backgroundColor: backgroundColor);
  }

  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: backgroundColor),
      child: Row(
        children: [
          Expanded(child: ParagraphText(text, color: colors.mainWhite)),
          const Gap(5),
          TappableView(
            onTap: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
            child: ParagraphText(
              LocaleKeys.general_ok.tr(),
              color: colors.mainWhite,
            ),
          ),
        ],
      ),
    );
  }
}
