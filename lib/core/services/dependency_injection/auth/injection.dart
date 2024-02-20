import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:locall_app/core/common/constants.dart';
import 'package:locall_app/core/common/env/environment.dart';
import 'package:locall_app/src/application/auth/bloc/auth_bloc.dart';
import 'package:locall_app/src/application/auth/cubit/auth_mode_cubit.dart';
import 'package:locall_app/src/application/auth/cubit/check_if_taken_cubit.dart';
import 'package:locall_app/src/data/datasources/auth/auth_local_datasrc.dart';
import 'package:locall_app/src/data/datasources/auth/auth_remote_datasrc.dart';
import 'package:locall_app/src/data/repositories/auth/auth_repo_impl.dart';
import 'package:locall_app/src/domain/repositories/auth/auth_repo.dart';
import 'package:locall_app/src/domain/usecases/auth/auth_with_provider_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/check_email_exists_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/check_username_exists_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/forgot_password_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/sign_in_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/sign_up_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/update_password_usecase.dart';
import 'package:locall_app/src/domain/usecases/auth/update_user_usecase.dart';

Future<void> initAuth(GetIt sl) async {
  // App-Logic
  sl
    ..registerFactory(AuthModeCubit.new)
    ..registerFactory(
      () => CheckIfTakenCubit(
        checkEmailExistsUsecase: sl(),
        checkUsernameExistsUsecase: sl(),
      ),
    )
    ..registerFactory(
      () => AuthBloc(
        signInUsecase: sl(),
        signUpUsecase: sl(),
        authWithProviderUsecase: sl(),
        updateUserUsecase: sl(),
        forgotPasswordUsecase: sl(),
        updatePasswordUsecase: sl(),
      ),
    )

    // Usecases
    ..registerLazySingleton(() => CheckEmailExistsUsecase(sl()))
    ..registerLazySingleton(() => CheckUsernameExistsUsecase(sl()))
    ..registerLazySingleton(() => SignInUsecase(sl()))
    ..registerLazySingleton(() => SignUpUsecase(sl()))
    ..registerLazySingleton(() => AuthWithProviderUsecase(sl()))
    ..registerLazySingleton(() => UpdateUserUsecase(sl()))
    ..registerLazySingleton(() => ForgotPasswordUsecase(sl()))
    ..registerLazySingleton(() => UpdatePasswordUsecase(sl()))

    // Repos
    ..registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(remoteDatasrc: sl(), localDatasrc: sl()),
    )

    // Data sources
    ..registerLazySingleton<AuthRemoteDatasrc>(
      () => AuthRemoteDatasrcImpl(sl()),
    )
    ..registerLazySingleton<AuthLocalDatasrc>(() => AuthLocalDatasrcImpl(sl()))

    // External
    ..registerLazySingleton<FlutterSecureStorage>(FlutterSecureStorage.new);

  final token = await sl<FlutterSecureStorage>().read(
    key: kCachedTokenKey,
  );
  final refreshToken = await sl<FlutterSecureStorage>().read(
    key: kCachedRefreshTokenKey,
  );

  sl
    ..registerLazySingleton(() => ValueNotifier<GraphQLClient>(sl()))
    ..registerLazySingleton(() => GraphQLClient(link: sl(), cache: sl()))
    ..registerLazySingleton<Link>(
      () => AuthLink(
        getToken: () async => 'Bearer $token',
      ).concat(
        HttpLink(
          Enviroment.baseUrl,
          defaultHeaders: refreshToken != null
              ? {
                  'permission': Enviroment.permission,
                  'refreshToken': refreshToken,
                }
              : {
                  'permission': Enviroment.permission,
                },
        ),
      ),
    )
    ..registerLazySingleton(() => GraphQLCache(store: sl()))
    ..registerLazySingleton<Store>(HiveStore.new);
}
