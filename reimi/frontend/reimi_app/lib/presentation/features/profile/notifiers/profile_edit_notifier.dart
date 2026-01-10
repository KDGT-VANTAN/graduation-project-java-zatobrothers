import 'package:reimi_app/core/di/usecase_providers.dart';
import 'package:reimi_app/domain/params/update_profile_params.dart';
import 'package:reimi_app/domain/value_objects/address.dart';
import 'package:reimi_app/domain/value_objects/alcohol.dart';
import 'package:reimi_app/domain/value_objects/annual_income.dart';
import 'package:reimi_app/domain/value_objects/blood_type.dart';
import 'package:reimi_app/domain/value_objects/body_shape.dart';
import 'package:reimi_app/domain/value_objects/communication_style.dart';
import 'package:reimi_app/domain/value_objects/education.dart';
import 'package:reimi_app/domain/value_objects/height.dart';
import 'package:reimi_app/domain/value_objects/holiday.dart';
import 'package:reimi_app/domain/value_objects/occupation.dart';
import 'package:reimi_app/domain/value_objects/smoking.dart';
import 'package:reimi_app/presentation/features/profile/notifiers/user_with_profile_notifier.dart';
import 'package:reimi_app/presentation/features/profile/states/profile_edit_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_edit_notifier.g.dart';

@riverpod
class ProfileEditNotifier extends _$ProfileEditNotifier {
  @override
  ProfileEditState build(String userId) {
    final user = ref.watch(userWithProfileNotifierProvider(userId)).value!;

    return ProfileEditState(
      name: user.name,
      gender: user.gender,
      birthDate: user.birthDate,
      address: user.address,
      mainPhotoUrl: user.mainPhotoUrl,
      introduction: user.introduction,
      height: user.height,
      bodyShape: user.bodyShape,
      annualIncome: user.annualIncome,
      bloodType: user.bloodType,
      hometown: user.hometown,
      communicationStyle: user.communicationStyle,
      occupation: user.occupation,
      education: user.education,
      smoking: user.smoking,
      alcohol: user.alcohol,
      holiday: user.holiday,
      sunnyDayHobbies: _normalize(list: user.sunnyDayHobbies, length: 3),
      rainyDayHobbies: _normalize(list: user.rainyDayHobbies, length: 3),
      subPhotoUrls: _normalize(list: user.subPhotoUrls, length: 6),
    );
  }

  // 必須項目
  void updateName(String name) {
    _update((s) => s.copyWith(name: name));
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
      final current = _normalize(list: s.subPhotoUrls, length: 6);
      current[index] = url;
      return s.copyWith(subPhotoUrls: current);
    });
  }

  void removeSubPhoto(int index) {
    _update((s) {
      final current = _normalize(list: s.subPhotoUrls, length: 6);
      current[index] = '';
      return s.copyWith(subPhotoUrls: current);
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
    if (!state.isChanged) return;
    final params = UpdateProfileParams(
      name: state.name,
      gender: state.gender,
      address: state.address,
      mainPhoto: state.mainPhotoUrl,
      introduction: state.introduction,
      height: state.height,
      bodyShape: state.bodyShape,
      annualIncome: state.annualIncome,
      bloodType: state.bloodType,
      hometown: state.hometown,
      communicationStyle: state.communicationStyle,
      occupation: state.occupation,
      education: state.education,
      smoking: state.smoking,
      alcohol: state.alcohol,
      holiday: state.holiday,
      sunnyDayHobbies: state.sunnyDayHobbies,
      rainyDayHobbies: state.rainyDayHobbies,
      subPhotos: state.subPhotoUrls,
    );

    await ref.read(updateUserProfileUseCaseProvider).call(params);
    state = state.copyWith(isChanged: false);
  }
}
