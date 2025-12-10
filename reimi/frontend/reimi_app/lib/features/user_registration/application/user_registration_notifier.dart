import 'package:reimi_app/domain/values/address.dart';
import 'package:reimi_app/domain/values/gender.dart';
import 'package:reimi_app/features/user_registration/application/user_registration_state.dart';
import 'package:reimi_app/features/user_registration/domain/entities/user_registration_model.dart';
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

  void updateGender(Gender gender) {
    state = state.copyWith(data: state.data!.copyWith(gender: gender));
  }

  void updateBirthDate(DateTime birthDate) {
    state = state.copyWith(data: state.data!.copyWith(birthDate: birthDate));
  }

  void updateAddress(Address address) {
    state = state.copyWith(data: state.data!.copyWith(address: address));
  }

  void updateName(String name) {
    state = state.copyWith(data: state.data!.copyWith(name: name));
  }

  void updateIntroduction(String introduction) {
    state = state.copyWith(
      data: state.data!.copyWith(introduction: introduction),
    );
  }

  void updateMainImage(String mainPhotoUrl) {
    state = state.copyWith(
      data: state.data!.copyWith(mainPhotoUrl: mainPhotoUrl),
    );
  }

  Future<void> submit() async {
    // 送信処理
  }
}
