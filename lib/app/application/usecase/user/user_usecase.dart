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

@Riverpod(keepAlive: true)
UserUsecase userUsecase(UserUsecaseRef ref) => UserUsecase(ref);

/// ユーザーに関するユースケース
class UserUsecase with RunUsecaseMixin {
  const UserUsecase(this.ref);

  final Ref ref;

  UserRepository get _userRepository => ref.read(userRepositoryProvider);
  Future<User?> get _authUser => ref.read(authUserProvider.future);
  Future<String?> get _authUserId => _authUser.then((data) => data?.id);

  /// 認証状態の取得
  Stream<AuthStatus?> fetchAuthStatus() => _userRepository.fetchAuthStatus();

  /// ユーザーの取得
  Stream<User?> fetch({required String userId}) =>
      _userRepository.fetch(userId: userId);

  /// ユーザーの登録
  Future<void> signUp() async {
    await execute(
      ref,
      action: () async {
        // 登録
        await _userRepository.signUp();
      },
    );
  }

  /// Apple認証
  Future<void> signInWithApple() async {
    await execute(
      ref,
      action: () async {
        // サインイン
        await _userRepository.signInWithApple();
      },
    );
  }

  /// Google認証
  Future<void> signInWithGoogle() async {
    await execute(
      ref,
      action: () async {
        // サインイン
        await _userRepository.signInWithGoogle();
      },
    );
  }

  /// サインアウト
  Future<void> signOut() async {
    await execute(
      ref,
      action: () async {
        // サインアウト
        await _userRepository.signOut();
      },
    );
  }

  /// ユーザー情報 および アカウントの削除
  Future<void> delete() async {
    await execute(
      ref,
      action: () async {
        // ユーザー情報 および アカウントの削除
        final userId = await _authUserId;
        if (userId == null) {
          throw UpdateTargetNotFoundException();
        }
        await _userRepository.delete(userId: userId);
      },
    );
  }

  /// Googleアカウント連携を解除する
  Future<void> unlinkWithGoogle() => execute(
        ref,
        action: () => _userRepository.unlinkWithGoogle(),
      );

  /// Appleアカウント連携を解除する
  Future<void> unlinkWithApple() => execute(
        ref,
        action: () => _userRepository.unlinkWithApple(),
      );
}
