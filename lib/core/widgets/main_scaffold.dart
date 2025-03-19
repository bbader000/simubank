import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

class MainScaffold extends StatelessWidget {
  const MainScaffold({required this.body, super.key, this.appBar});
  final Widget body;
  final PreferredSizeWidget? appBar;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Scaffold(
      backgroundColor: colors.background,
      appBar: appBar,
      body: body,
    );
  }
}
