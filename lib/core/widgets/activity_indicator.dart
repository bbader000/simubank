import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

Widget activityIndicatorBuilder(BuildContext _) => const ActivityIndicator();

class ActivityIndicator extends StatelessWidget {
  const ActivityIndicator({
    super.key,
    this.strokeWidth = 4.0,
    this.verticalPadding = 0,
    this.color,
  });

  final double strokeWidth;
  final double verticalPadding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return CupertinoTheme(
      data: const CupertinoThemeData(brightness: Brightness.light),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: verticalPadding),
          child:
              Platform.isIOS
                  ? CupertinoActivityIndicator(color: color ?? colors.mainWhite)
                  : CircularProgressIndicator(
                    strokeWidth: strokeWidth,
                    valueColor: AlwaysStoppedAnimation(
                      color ?? colors.mainWhite,
                    ),
                  ),
        ),
      ),
    );
  }
}
