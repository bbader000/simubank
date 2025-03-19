import 'package:flutter/material.dart';
import 'package:test_app/core/core.dart';

class H1Text extends StatelessWidget {
  const H1Text(
    this.text, {
    this.color,
    this.textAlign,
    super.key,
    this.overflow,
    this.maxLines,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textStyles.h1.copyWith(color: color),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

class H2Text extends StatelessWidget {
  const H2Text(
    this.text, {
    this.color,
    this.textAlign,
    super.key,
    this.overflow,
    this.maxLines,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textStyles.h2.copyWith(color: color),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

class ButtonText extends StatelessWidget {
  const ButtonText(
    this.text, {
    this.color,
    this.textAlign,
    super.key,
    this.overflow,
    this.maxLines,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textStyles.button.copyWith(color: color),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

class ParagraphText extends StatelessWidget {
  const ParagraphText(
    this.text, {
    this.color,
    this.textAlign,
    super.key,
    this.overflow,
    this.maxLines,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textStyles.paragraph.copyWith(color: color),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}

class CaptionText extends StatelessWidget {
  const CaptionText(
    this.text, {
    this.color,
    this.textAlign,
    super.key,
    this.overflow,
    this.maxLines,
  });

  final String text;
  final Color? color;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textStyles.caption.copyWith(color: color),
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
    );
  }
}
