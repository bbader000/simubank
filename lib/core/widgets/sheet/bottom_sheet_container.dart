import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/gen/assets.gen.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({
    required this.title,
    required this.content,
    super.key,
  });

  final String title;
  final Widget content;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      decoration: BoxDecoration(
        color: colors.mainWhite,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      width: double.infinity,
      child: Padding(
        padding: UIConstants.paddingHorizontal32,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Gap(16),
            const Align(child: _HandleDecorator()),
            const Gap(5),
            TappableView(
              onTap: () => context.maybePop(),
              child: Align(
                alignment: Alignment.centerRight,
                child: Assets.icons.xMark.image(color: colors.mainBlue),
              ),
            ),
            const Gap(10),
            Center(
              child: H1Text(
                title,
                textAlign: TextAlign.center,
                color: colors.mainBlue,
              ),
            ),
            const Gap(24),
            content,
            Gap(context.bottomPadding),
          ],
        ),
      ),
    );
  }
}

class _HandleDecorator extends StatelessWidget {
  const _HandleDecorator();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      width: 40,
      height: 5,
      decoration: BoxDecoration(
        color: colors.mainGrey,
        borderRadius: const BorderRadius.all(Radius.circular(2.5)),
      ),
    );
  }
}
