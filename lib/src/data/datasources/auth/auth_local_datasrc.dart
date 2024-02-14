import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:locall_app/core/common/constants.dart';
import 'package:locall_app/core/errors/exceptions.dart';

// ignore: one_member_abstracts
abstract class AuthLocalDatasrc {
  Future<void> setTokens({required String token, required String refreshToken});
}

class AuthLocalDatasrcImpl implements AuthLocalDatasrc {
  const AuthLocalDatasrcImpl(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> setTokens({
    required String token,
    required String refreshToken,
  }) async {
    try {
      await _secureStorage.write(
        key: kCachedTokenKey,
        value: token,
      );
      await _secureStorage.write(
        key: kCachedRefreshTokenKey,
        value: refreshToken,
      );
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
