import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:test_app/core/core.dart';

class TransactionShimmer extends StatelessWidget {
  const TransactionShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Column(
      children: List.generate(
        10,
        (_) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: colors.mainGrey)),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _ShimmerItem(width: 100, height: 16),
                  Gap(5),
                  _ShimmerItem(width: 60, height: 16),
                ],
              ),
              _ShimmerItem(width: 100, height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class _ShimmerItem extends StatelessWidget {
  const _ShimmerItem({required this.width, required this.height});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: colors.mainGrey,
        borderRadius: BorderRadius.circular(8),
      ),
    ).animate(onComplete: (controller) => controller.forward()).shimmer();
  }
}
