import 'package:reimi_app/core/di/domain_providers.dart';
import 'package:reimi_app/data/models/user_registration_model.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/presentation/features/user_registration/user_registration_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_registration_notifier.g.dart';

@riverpod
class UserRegistrationNotifier extends _$UserRegistrationNotifier {
  @override
  UserRegistrationState build() {
    return const UserRegistrationState(
      data: UserRegistrationModel(),
    );
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
    _updateUserInfo((data) => data.copyWith(email: email));
  }

  void updateGender(Gender gender) {
    _updateUserInfo((data) => data.copyWith(gender: gender));
  }

  void updateBirthDate(DateTime birthDate) {
    _updateUserInfo((data) => data.copyWith(birthDate: birthDate));
  }

  void updateAddress(Address address) {
    _updateUserInfo((data) => data.copyWith(address: address));
  }

  void updateName(String name) {
    _updateUserInfo((data) => data.copyWith(name: name));
  }

  void updateIntroduction(String introduction) {
    _updateUserInfo((data) => data.copyWith(introduction: introduction));
  }

  void updateMainImage(String mainPhotoUrl) {
    _updateUserInfo((data) => data.copyWith(mainPhotoUrl: mainPhotoUrl));
  }

  void _updateUserInfo(
    UserRegistrationModel Function(UserRegistrationModel data) updater,
  ) {
    final current = state.data;
    if (current == null) return;

    state = state.copyWith(
      data: updater(current),
    );
  }

  Future<bool> submit() async {
    final user = state.data;
    if (user == null) return false;
    final result = await ref.read(registerUserUseCaseProvider).call(user);
    return result;
  }
}
