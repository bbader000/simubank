import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/features/features.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Gap(100),
          PrimaryButton(
            onTap: () => context.read<AuthCubit>().logout(),
            title: 'asd',
          ),
        ],
      ),
    );
  }
}
