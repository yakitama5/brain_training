import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../application/usecase/user/state/auth_status_provider.dart';
import 'home_branch.dart';
import 'routes.dart';

part 'router_notifier.g.dart';

@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? _routerListener;
  // ignore: avoid_public_notifier_properties
  List<RouteBase> get routes => $appRoutes;

  @override
  Future<void> build() async {
    ref.listenSelf((previous, next) {
      if (state.isLoading) {
        return;
      }

      _routerListener?.call();
    });
  }

  Future<String?> redirect(
    _,
    GoRouterState routeState,
  ) async {
    if (state.isLoading || state.hasError) {
      return null;
    }
    final location = routeState.fullPath ?? '';
    final isSplash = location == const RootRouteData().location;
    final isNotAuthLocations =
        location.startsWith(const OnboardRouteData().location);

    // 認証判定
    final authUser = await ref.watch(authStatusProvider.future);
    if (authUser == null && (isSplash || !isNotAuthLocations)) {
      // オンボーディングへ
      return const OnboardRouteData().location;
    } else if (authUser != null && (isSplash || isNotAuthLocations)) {
      return const HomeRouteData().location;
    }

    return null;
  }

  @override
  void addListener(VoidCallback listener) {
    _routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    _routerListener = null;
  }
}
