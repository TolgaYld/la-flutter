import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:locall_app/core/common/env/environment.dart';

class FingerprintManager {
  FingerprintManager._();
  static Future<Map<String, String>> generateFingerprint() async {
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    final nonce = UniqueKey().toString();
    final secretKey = Enviroment.secretKey;

    final dataString = '$timestamp|$nonce|$secretKey';
    final bytes = utf8.encode(dataString);
    final digest = sha256.convert(bytes);

    return {
      'fingerprint': digest.toString(),
      'timestamp': timestamp,
      'nonce': nonce,
    };
  }
}
