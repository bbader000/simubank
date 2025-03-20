import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/gen/assets.gen.dart';

const _kMinHeight = 40.0;

class BasicTextField extends StatefulWidget {
  const BasicTextField({
    required this.name,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.onChanged,
    this.inputType = TextInputType.text,
    this.value,
    this.secret = false,
    this.enabled = true,
    this.hintText,

    this.validator,
    super.key,
    this.controller,
    this.textInputAction,
  });

  final String name;
  final String? hintText;
  final String? value;
  final void Function(String?)? onChanged;
  final bool secret;
  final TextInputType inputType;
  final bool enabled;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final AutovalidateMode autoValidateMode;
  final TextEditingController? controller;

  @override
  BasicTextFieldState createState() => BasicTextFieldState();
}

class BasicTextFieldState extends State<BasicTextField> {
  var _textController = TextEditingController();
  bool isVisible = true;

  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      _textController = widget.controller!;
    }
    _textController.text = widget.value ?? '';
    isVisible = !widget.secret;
  }

  OutlineInputBorder _getBorder(Color color) {
    return const OutlineInputBorder(
      borderRadius: UIConstants.borderRadiusAll12,
    );
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final textStyles = context.textStyles;
    final hintStyle = textStyles.paragraph.copyWith(
      color: colors.textColorSecondary,
    );
    const icons = Assets.icons;
    return FormBuilderTextField(
      name: widget.name,
      enabled: widget.enabled,
      controller: _textController,
      obscureText: !isVisible,
      onChanged: widget.onChanged,
      autovalidateMode: widget.autoValidateMode,
      validator: widget.validator,
      textInputAction: widget.textInputAction ?? TextInputAction.next,
      cursorColor: colors.mainBlack,

      decoration: InputDecoration(
        hintText: widget.hintText,
        constraints: const BoxConstraints(minHeight: _kMinHeight),
        isCollapsed: false,
        isDense: false,
        fillColor: colors.background,
        contentPadding: UIConstants.paddingAll16,
        enabledBorder: _getBorder(colors.mainGrey),
        focusedBorder: _getBorder(colors.mainGrey),
        errorBorder: _getBorder(colors.mainRed),
        focusedErrorBorder: _getBorder(colors.mainDarkGrey),
        disabledBorder: _getBorder(colors.mainGrey),
        hintStyle: hintStyle,
        suffixIcon:
            widget.secret
                ? TappableView(
                  child: isVisible ? icons.eye.image() : icons.eyeHide.image(),
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                )
                : null,
      ),
    );
  }

  @override
  void dispose() {
    widget.controller?.dispose();
    _textController.dispose();
    super.dispose();
  }
}
