import 'package:brain_training/i18n/strings.g.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

class NavigatorPage extends HookWidget {
  const NavigatorPage({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: StyleProvider(
        style: _Style(),
        child: ConvexAppBar(
          style: TabStyle.fixedCircle,
          height: 80,
          backgroundColor: colorScheme.surfaceContainer,
          color: colorScheme.onSurfaceVariant,
          activeColor: colorScheme.onSurfaceVariant,
          items: [
            TabItem(
              activeIcon: Icons.home,
              icon: Icons.home_outlined,
              title: i18n.common.navigationDestination.home,
            ),
            TabItem(
              activeIcon: Icons.analytics,
              icon: Icons.analytics_outlined,
              title: i18n.common.navigationDestination.analytics,
            ),
            const TabItem(
              activeIcon: _ConvexTabItem(active: true),
              icon: _ConvexTabItem(),
              isIconBlend: false,
            ),
            TabItem(
              activeIcon: Icons.coffee,
              icon: Icons.coffee_outlined,
              title: i18n.common.navigationDestination.coffeBreak,
            ),
            TabItem(
              activeIcon: Icons.settings,
              icon: Icons.settings_outlined,
              title: i18n.common.navigationDestination.settings,
            ),
          ],
          onTap: (index) {
            navigationShell.goBranch(
              index,
              initialLocation: index == navigationShell.currentIndex,
            );
          },
        ),
      ),
    );
  }
}

class _ConvexTabItem extends StatelessWidget {
  const _ConvexTabItem({this.active = false});

  final bool active;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: colorScheme.onPrimary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            active ? Icons.school : Icons.school_outlined,
            color: colorScheme.primary,
            size: 40,
          ),
          Text(
            i18n.common.navigationDestination.training,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class _Style extends StyleHook {
  @override
  double get activeIconSize => 24;

  @override
  double get activeIconMargin => 0;

  @override
  double get iconSize => 24;

  @override
  TextStyle textStyle(Color color, String? fontFamily) =>
      TextStyle(fontSize: 12, color: color);
}
