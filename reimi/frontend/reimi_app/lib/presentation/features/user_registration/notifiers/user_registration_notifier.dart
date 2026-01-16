import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/domain/params/create_user_params.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/presentation/features/user_registration/states/user_registration_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_registration_notifier.g.dart';

@riverpod
class UserRegistrationNotifier extends _$UserRegistrationNotifier {
  @override
  UserRegistrationState build() {
    return const UserRegistrationState();
  }

  void nextPage() {
    if (state.currentPage < state.totalPages) {
      state = state.copyWith(currentPage: state.currentPage + 1);
    }
  }

  void previousPage() {
    if (state.currentPage > 1) {
      state = state.copyWith(currentPage: state.currentPage - 1);
    }
  }

  void updateEmail(String email) {
    state = state.copyWith(email: email);
  }

  void updateGender(Gender gender) {
    state = state.copyWith(gender: gender);
  }

  void updateBirthDate(DateTime birthDate) {
    state = state.copyWith(birthDate: birthDate);
  }

  void updateAddress(Address address) {
    state = state.copyWith(address: address);
  }

  void updateName(String name) {
    state = state.copyWith(name: name);
  }

  void updateIntroduction(String introduction) {
    state = state.copyWith(introduction: introduction);
  }

  void updateMainImage(String mainPhoto) {
    state = state.copyWith(mainPhoto: mainPhoto);
  }

  Future<void> submit() async {
    final s = state;

    if (!s.canSubmit) {
      state = state.copyWith(
        status: UserRegistrationStatus.failure,
        errorMessage: '入力内容に不備があります',
      );
      return;
    }

    state = state.copyWith(
      status: UserRegistrationStatus.submitting,
      errorMessage: null,
    );

    try {
      final params = CreateUserParams(
        name: s.name!,
        email: s.email!,
        gender: s.gender!,
        birthDate: s.birthDate!,
        address: s.address!,
        introduction: s.introduction!,
        mainPhoto: s.mainPhoto!,
      );
      await ref.read(registerUserUseCaseProvider).call(params);

      state = state.copyWith(
        status: UserRegistrationStatus.success,
      );
    } on ApiException catch (e) {
      state = state.copyWith(
        status: UserRegistrationStatus.failure,
        errorMessage: e.message,
      );
    } catch (_) {
      state = state.copyWith(
        status: UserRegistrationStatus.failure,
        errorMessage: '登録に失敗しました',
      );
    }
  }
}
