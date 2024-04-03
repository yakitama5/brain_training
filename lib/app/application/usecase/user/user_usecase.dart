import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/exception/exceptions.dart';
import '../../../domain/user/entity/auth_status.dart';
import '../../../domain/user/entity/user.dart';
import '../../../domain/user/interface/user_repository.dart';
import '../run_usecase_mixin.dart';
import 'state/auth_user_provider.dart';

part 'user_usecase.g.dart';

@riverpod
UserUsecase userUsecase(UserUsecaseRef ref) => UserUsecase(ref);

/// ユーザーに関するユースケース
class UserUsecase with RunUsecaseMixin {
  const UserUsecase(this.ref);

  final Ref ref;

  /// 認証状態の取得
  Stream<AuthStatus?> fetchAuthStatus() =>
      ref.read(userRepositoryProvider).fetchAuthStatus();

  /// ユーザーの取得
  Stream<User?> fetch({required String userId}) =>
      ref.read(userRepositoryProvider).fetch(userId: userId);

  /// ユーザーの登録
  Future<void> signUp() async {
    await execute(
      ref,
      action: () async {
        // 登録
        await ref.read(userRepositoryProvider).signUp();
      },
    );
  }

  /// Apple認証
  Future<void> signInWithApple() async {
    await execute(
      ref,
      action: () async {
        // サインイン
        await ref.read(userRepositoryProvider).signInWithApple();
      },
    );
  }

  /// Google認証
  Future<void> signInWithGoogle() async {
    await execute(
      ref,
      action: () async {
        // サインイン
        await ref.read(userRepositoryProvider).signInWithGoogle();
      },
    );
  }

  /// サインアウト
  Future<void> signOut() async {
    await execute(
      ref,
      action: () async {
        // サインアウト
        await ref.read(userRepositoryProvider).signOut();
      },
    );
  }

  /// ユーザー情報 および アカウントの削除
  Future<void> delete() async {
    await execute(
      ref,
      action: () async {
        // ユーザー情報 および アカウントの削除
        final userId =
            await ref.read(authUserProvider.selectAsync((data) => data?.id));
        if (userId == null) {
          throw UpdateTargetNotFoundException();
        }
        await ref.read(userRepositoryProvider).delete(userId: userId);
      },
    );
  }

  /// Googleアカウント連携を解除する
  Future<void> unlinkWithGoogle() => execute(
        ref,
        action: () => ref.read(userRepositoryProvider).unlinkWithGoogle(),
      );

  /// Appleアカウント連携を解除する
  Future<void> unlinkWithApple() => execute(
        ref,
        action: () => ref.read(userRepositoryProvider).unlinkWithApple(),
      );
}
