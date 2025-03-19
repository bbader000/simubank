import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:gap/gap.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:test_app/core/core.dart';
import 'package:test_app/features/features.dart';
import 'package:test_app/gen/assets.gen.dart';
import 'package:test_app/gen/locale_keys.g.dart';

const _kEmailExample = 'example@example.ch';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return SafeArea(
      child: SingleChildScrollView(
        padding: UIConstants.paddingHorizontal32,
        child: FormBuilder(
          key: _formKey,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: MediaQuery.of(context).size.width,
              minHeight:
                  MediaQuery.of(context).size.height -
                  (context.topPadding + context.bottomPadding),
            ),
            child: IntrinsicHeight(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Gap(10),
                  const _Logo(),
                  const Gap(40),
                  H1Text(LocaleKeys.auth_login.tr(), color: colors.mainBlue),
                  const Gap(20),
                  const _Form(),
                  const Gap(20),
                  _Buttons(_formKey),
                  const Spacer(),
                  const _Version(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(flex: 2, child: Assets.images.logo.image(height: 100)),
        const Gap(10),
        Expanded(
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H1Text(LocaleKeys.general_simuBank.tr()),
              H2Text(
                LocaleKeys.auth_digitalBanking.tr(),
                color: colors.textColorSecondary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Form extends StatelessWidget {
  const _Form();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BasicTextField(
          name: 'email',
          hintText: _kEmailExample,
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
            FormBuilderValidators.email(),
          ]),
        ),
        const Gap(30),
        BasicTextField(
          name: 'password',
          secret: true,
          textInputAction: TextInputAction.done,
          hintText: LocaleKeys.auth_password.tr(),
          validator: FormBuilderValidators.compose([
            FormBuilderValidators.required(),
          ]),
        ),
      ],
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons(this.formKey);
  final GlobalKey<FormBuilderState> formKey;

  Future<void> _login(BuildContext context) async {
    try {
      final isStateValid = formKey.currentState!.saveAndValidate();
      if (!isStateValid) return;
      final fields = formKey.currentState!.fields;
      final email = fields['email']!.value as String;
      final password = fields['password']!.value as String;
      await context.read<AuthCubit>().loginWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on PlatformException catch (e) {
      if (context.mounted) {
        context.showErrorSnackBar(
          AuthExceptionMapper.toMessageFromException(e.code),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final authState = context.watch<AuthCubit>().state;
    return Column(
      children: [
        PrimaryButton(
          isLoading: authState.isLoading,
          width: double.infinity,
          title: LocaleKeys.auth_login.tr().toUpperCase(),
          onTap: () => _login(context),
        ),
        const Gap(20),
        TappableView(
          onTap: () {
            //TODO: Implement
          },
          child: ParagraphText(
            LocaleKeys.auth_noAccountYet.tr(),
            color: colors.mainDarkGrey,
          ),
        ),
        const Gap(50),
        PrimaryButton(
          //onTap:  //TODO: Implement,
          width: double.infinity,
          title: LocaleKeys.auth_registration.tr().toUpperCase(),
        ),
      ],
    );
  }
}

class _Version extends StatefulWidget {
  const _Version();

  @override
  State<_Version> createState() => _VersionState();
}

class _VersionState extends State<_Version> {
  String? version;
  @override
  void initState() {
    getVersion();
    super.initState();
  }

  Future<void> getVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      version = '${packageInfo.version}-${packageInfo.buildNumber}';
    });
  }

  @override
  Widget build(BuildContext context) {
    if (version == null) return const SizedBox();
    final colors = context.colors;
    final currentYear = DateTime.now().year;
    final appTitle = LocaleKeys.general_simuBank.tr();
    return Center(
      child: ParagraphText(
        '© $currentYear $appTitle - Ver. ${version!}',
        color: colors.mainDarkGrey.withValues(alpha: .3),
      ),
    );
  }
}
