import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:locall_app/core/types/auth_with_provider.dart';

part 'auth_with_provider_params.freezed.dart';

@freezed
class AuthWithProviderParams with _$AuthWithProviderParams {
  const factory AuthWithProviderParams({
    required AuthWithProvider provider,
    required String email,
    required String providerId,
    required List<double> coordinates,
  }) = _AuthWithProviderParams;

  factory AuthWithProviderParams.empty() => const AuthWithProviderParams(
        provider: AuthWithProvider.google,
        email: 'empty',
        providerId: 'empty',
        coordinates: [3.69, 3.69],
      );
}
