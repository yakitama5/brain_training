import 'package:brain_training/app/presentation/components/src/google_icon_image.dart';
import 'package:brain_training/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../gen/assets.gen.dart';
import '../../../application/usecase/user/user_usecase.dart';
import '../../components/importer.dart';
import '../presentation_mixin.dart';

class OnboardPage extends StatelessWidget {
  const OnboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 16, left: 16, top: 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _WelcomeImage(),
                Gap(16),
                _StartButton(),
                Gap(40),
                _SignInWithGoogleButton(),
                Gap(16),
                _SignInWithAppleButton(),
                Gap(16),
                _Links(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _WelcomeImage extends StatelessWidget {
  const _WelcomeImage();

  static const List<Color> _svgReplaceColors = [
    Color(0xff21005D),
    Color(0xff6C63FF),
  ];

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;

    return ImageAspectRatio(
      child: SvgAssetImage(
        path: Assets.images.welcomeCats,
        replaceColors: _svgReplaceColors.map((c) => (c, cs.primary)).toList(),
      ),
    );
  }
}

class _StartButton extends ConsumerWidget with PresentationMixin {
  const _StartButton();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final cs = theme.colorScheme;
    final tt = theme.textTheme;

    return Column(
      children: [
        WidthFillBox(
          child: FilledButton(
            onPressed: () => execute(
              context,
              action: () async => ref.read(userUsecaseProvider).signUp(),
            ),
            child: Text(i18n.introduction.start),
          ),
        ),
        Text(
          i18n.introduction.forFirstUser,
          style: tt.labelMedium?.copyWith(color: cs.onSurfaceVariant),
        ),
      ],
    );
  }
}

class _SignInWithGoogleButton extends ConsumerWidget with PresentationMixin {
  const _SignInWithGoogleButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WidthFillBox(
      child: OutlinedButton.icon(
        onPressed: () {
          // TODO(yakitama5): 未着手
          MaintenanceSnackbar.showByContext(context);
        },
        label: Text(i18n.introduction.signInWithGoogle),
        icon: const GoogleIcon(),
      ),
    );
  }
}

class _SignInWithAppleButton extends ConsumerWidget with PresentationMixin {
  const _SignInWithAppleButton();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cs = Theme.of(context).colorScheme;

    return WidthFillBox(
      child: OutlinedButton.icon(
        onPressed: () {
          // TODO(yakitama5): 未着手
          MaintenanceSnackbar.showByContext(context);
        },
        label: Text(i18n.introduction.signInWithApple),
        icon: Icon(
          MdiIcons.apple,
          color: cs.onSurface,
        ),
      ),
    );
  }
}

class _Links extends HookWidget {
  const _Links();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TODO(yakitama5): URLを後から定義
        UrlLink(
          url: '',
          label: i18n.settings.list.help.howToUse,
          onTap: () => MaintenanceSnackbar.showByContext(context),
        ),
        const Gap(32),
        WidthFillBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child:
                    // TODO(yakitama5): URLを後から定義
                    UrlLink(
                  url: '',
                  label: i18n.settings.list.help.contactUs,
                  onTap: () => MaintenanceSnackbar.showByContext(context),
                ),
              ),
              Flexible(
                child: UrlLink(
                  // TODO(yakitama5): URLを後から定義
                  url: '',
                  label: i18n.settings.list.help.privacyPollicy,
                  onTap: () => MaintenanceSnackbar.showByContext(context),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
