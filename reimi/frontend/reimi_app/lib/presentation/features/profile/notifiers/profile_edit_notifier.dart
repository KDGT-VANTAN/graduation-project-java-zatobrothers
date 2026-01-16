import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/core/error/api_exception.dart';
import 'package:reimi_app/domain/params/update_profile_params.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/alcohol.dart';
import 'package:reimi_app/domain/value_objects/annual_income.dart';
import 'package:reimi_app/domain/value_objects/blood_type.dart';
import 'package:reimi_app/domain/value_objects/body_shape.dart';
import 'package:reimi_app/domain/value_objects/communication_style.dart';
import 'package:reimi_app/domain/value_objects/education.dart';
import 'package:reimi_app/domain/value_objects/gender.dart';
import 'package:reimi_app/domain/value_objects/height.dart';
import 'package:reimi_app/domain/value_objects/holiday.dart';
import 'package:reimi_app/domain/value_objects/occupation.dart';
import 'package:reimi_app/domain/value_objects/smoking.dart';
import 'package:reimi_app/presentation/features/profile/states/profile_edit_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_edit_notifier.g.dart';

@riverpod
class ProfileEditNotifier extends _$ProfileEditNotifier {
  @override
  ProfileEditState build() {
    return const ProfileEditState();
  }

  Future<void> init() async {
    if (state.isInitialized) return;
    await loadUserProfile();
  }

  Future<void> loadUserProfile() async {
    state = state.copyWith(isLoading: true, errorMessage: null);
    try {
      final user = await ref.read(getCurrentUserUseCaseProvider).call();
      final profile =
          await ref.read(getUserProfileUseCaseProvider).call(user.id);
      state = state.copyWith(
        id: profile.id,
        name: profile.name,
        gender: profile.gender,
        birthDate: profile.birthDate,
        address: profile.address,
        mainPhotoUrl: profile.mainPhotoUrl,
        introduction: profile.introduction,
        height: profile.height,
        bodyShape: profile.bodyShape,
        annualIncome: profile.annualIncome,
        bloodType: profile.bloodType,
        hometown: profile.hometown,
        communicationStyle: profile.communicationStyle,
        occupation: profile.occupation,
        education: profile.education,
        smoking: profile.smoking,
        alcohol: profile.alcohol,
        holiday: profile.holiday,
        sunnyDayHobbies: _normalize(list: profile.sunnyDayHobbies, length: 3),
        rainyDayHobbies: _normalize(list: profile.rainyDayHobbies, length: 3),
        subPhotos: _normalize(list: profile.subPhotos, length: 6),
        isLoading: false,
        isInitialized: true,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      );
    }
  }

  // 必須項目
  void updateName(String name) {
    _update((s) => s.copyWith(name: name));
  }

  void updateGender(Gender gender) {
    _update((s) => s.copyWith(gender: gender));
  }

  void updateAddress(Address address) {
    _update((s) => s.copyWith(address: address));
  }

  void updateIntroduction(String introduction) {
    _update((s) => s.copyWith(introduction: introduction));
  }

  void updateMainPhotoUrl(String url) {
    _update((s) => s.copyWith(mainPhotoUrl: url));
  }

  // ユーティリティ：必ず{length}件に整形
  List<String> _normalize({
    required List<String>? list,
    required int length,
  }) {
    final result = List<String>.from(list ?? []);
    while (result.length < length) {
      result.add('');
    }
    return result.take(length).toList(growable: false);
  }

  // 写真関連
  void setSubPhoto({
    required int index,
    required String url,
  }) {
    _update((s) {
      final current = _normalize(list: s.subPhotos, length: 6);
      current[index] = url;
      return s.copyWith(subPhotos: current);
    });
  }

  void removeSubPhoto(int index) {
    _update((s) {
      final current = _normalize(list: s.subPhotos, length: 6);
      current[index] = '';
      return s.copyWith(subPhotos: current);
    });
  }

  // 基本情報（任意）
  void updateHeight(Height? height) {
    _update((s) => s.copyWith(height: height));
  }

  void updateBodyShape(BodyShape? bodyShape) {
    _update((s) => s.copyWith(bodyShape: bodyShape));
  }

  void updateAnnualIncome(AnnualIncome? income) {
    _update((s) => s.copyWith(annualIncome: income));
  }

  void updateBloodType(BloodType? bloodType) {
    _update((s) => s.copyWith(bloodType: bloodType));
  }

  void updateHometown(Address? hometown) {
    _update((s) => s.copyWith(hometown: hometown));
  }

  void updateCommunicationStyle(CommunicationStyle? style) {
    _update((s) => s.copyWith(communicationStyle: style));
  }

  void updateOccupation(Occupation? occupation) {
    _update((s) => s.copyWith(occupation: occupation));
  }

  void updateEducation(Education? education) {
    _update((s) => s.copyWith(education: education));
  }

  void updateSmoking(Smoking? smoking) {
    _update((s) => s.copyWith(smoking: smoking));
  }

  void updateAlcohol(Alcohol? alcohol) {
    _update((s) => s.copyWith(alcohol: alcohol));
  }

  void updateHoliday(Holiday? holiday) {
    _update((s) => s.copyWith(holiday: holiday));
  }

  // 趣味（最大3つ想定）
  void setSunnyDayHobby({
    required int index,
    required String hobby,
  }) {
    _update((s) {
      final current = _normalize(list: s.sunnyDayHobbies, length: 3);
      current[index] = hobby;
      return s.copyWith(sunnyDayHobbies: current);
    });
  }

  void removeSunnyDayHobby(int index) {
    _update((s) {
      final current = _normalize(list: s.sunnyDayHobbies, length: 3);
      current[index] = '';
      return s.copyWith(sunnyDayHobbies: current);
    });
  }

  void setRainyDayHobby({
    required int index,
    required String hobby,
  }) {
    _update((s) {
      final current = _normalize(list: s.rainyDayHobbies, length: 3);
      current[index] = hobby;
      return s.copyWith(rainyDayHobbies: current);
    });
  }

  void removeRainyDayHobby(int index) {
    _update((s) {
      final current = _normalize(list: s.rainyDayHobbies, length: 3);
      current[index] = '';
      return s.copyWith(rainyDayHobbies: current);
    });
  }

  void _update(ProfileEditState Function(ProfileEditState) updater) {
    final next = updater(state);
    state = next.isChanged ? next : next.copyWith(isChanged: true);
  }

  Future<void> discardChangesAndClose() async {
    ref.invalidateSelf();
  }

  Future<void> submit() async {
    final s = state;
    if (!s.canSubmit) {
      state = state.copyWith(
        status: ProfileEditStatus.failure,
        errorMessage: '入力内容に不備があります',
      );
      return;
    }

    try {
      final params = UpdateProfileParams(
        name: s.name!,
        gender: s.gender!,
        address: s.address!,
        mainPhoto: s.mainPhotoUrl!,
        introduction: s.introduction!,
        height: s.height,
        bodyShape: s.bodyShape,
        annualIncome: s.annualIncome,
        bloodType: s.bloodType,
        hometown: s.hometown,
        communicationStyle: s.communicationStyle,
        occupation: s.occupation,
        education: s.education,
        smoking: s.smoking,
        alcohol: s.alcohol,
        holiday: s.holiday,
        sunnyDayHobbies: s.sunnyDayHobbies,
        rainyDayHobbies: s.rainyDayHobbies,
        subPhotos: s.subPhotos,
      );

      state = state.copyWith(
        status: ProfileEditStatus.submitting,
        errorMessage: null,
      );

      await ref
          .read(updateUserProfileUseCaseProvider)
          .call(params: params, userId: state.id!);

      state = state.copyWith(
        status: ProfileEditStatus.success,
        isChanged: false,
      );
    } on ApiException catch (e) {
      state = state.copyWith(
        status: ProfileEditStatus.failure,
        errorMessage: e.message,
      );
    } catch (_) {
      state = state.copyWith(
        status: ProfileEditStatus.failure,
        errorMessage: 'プロフィール更新に失敗しました',
      );
    }
  }
}
