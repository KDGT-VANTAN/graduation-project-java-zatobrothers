import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reimi_app/core/di/data_providers.dart';
import 'package:reimi_app/domain/usecases/sign_in_with_provider_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'domain_providers.g.dart';

@riverpod
SignInWithProviderUseCase signInWithProviderUseCase(Ref ref) {
  return SignInWithProviderUseCase(ref.watch(authRepositoryProvider));
}
