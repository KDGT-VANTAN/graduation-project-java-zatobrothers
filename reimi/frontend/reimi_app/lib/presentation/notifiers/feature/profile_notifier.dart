import 'package:reimi_app/data/models/profile_model.dart';
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
import 'package:reimi_app/gen/assets.gen.dart';
import 'package:reimi_app/presentation/states/feature/profile_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_notifier.g.dart';

@riverpod
class ProfileNotifier extends _$ProfileNotifier {
  @override
  ProfileState build() {
    return ProfileState(
      // 仮実装
      data: ProfileModel(
        name: 'ラーメン太郎',
        address: Address.aomori,
        introduction:
            'はじめまして！週末は登山やカフェ巡りを楽しんでいます。晴れの日は外でアクティブに、雨の日はゆっくり映画鑑賞が好きです。',
        mainPhotoUrl: Assets.images.sample.manImageSample.path,
        gender: Gender.man,
        birthDate: DateTime.now(),
        subPhotoUrls: List.filled(6, ''),
        sunnyDayHobbies: List.filled(3, ''),
        rainyDayHobbies: List.filled(3, ''),
      ),
    );
  }

  // 必須項目
  void updateName(String name) {
    _updateProfile((data) => data.copyWith(name: name));
  }

  void updateAddress(Address address) {
    _updateProfile((data) => data.copyWith(address: address));
  }

  void updateIntroduction(String introduction) {
    _updateProfile((data) => data.copyWith(introduction: introduction));
  }

  void updateMainPhotoUrl(String url) {
    _updateProfile((data) => data.copyWith(mainPhotoUrl: url));
  }

  // ユーティリティ：必ず{length}件に整形
  List<String> normalize({
    required List<String>? targetList,
    required int length,
  }) {
    final list = List<String>.from(targetList ?? []);
    while (list.length < length) {
      list.add('');
    }
    return list.take(length).toList(growable: false);
  }

  // 写真関連
  void setSubPhoto({
    required int index,
    required String url,
  }) {
    final current = normalize(targetList: state.data!.subPhotoUrls, length: 6);
    current[index] = url;
    _updateProfile((data) => data.copyWith(subPhotoUrls: current));
  }

  void removeSubPhoto(int index) {
    final current = normalize(targetList: state.data!.subPhotoUrls, length: 6);
    current[index] = '';
    _updateProfile((data) => data.copyWith(subPhotoUrls: current));
  }

  /// 一括更新（APIレスポンスなど）
  // void replaceSubPhotos(List<String> urls) {
  //   _updateProfile((data) =>
  //       data.copyWith(subPhotoUrls: normalize(targetList: urls, length: 6)));
  // }

  // 基本情報（任意）
  void updateHeight(Height? height) {
    _updateProfile((data) => data.copyWith(height: height));
  }

  void updateBodyShape(BodyShape? bodyShape) {
    _updateProfile((data) => data.copyWith(bodyShape: bodyShape));
  }

  void updateAnnualIncome(AnnualIncome? income) {
    _updateProfile((data) => data.copyWith(annualIncome: income));
  }

  void updateBloodType(BloodType? bloodType) {
    _updateProfile((data) => data.copyWith(bloodType: bloodType));
  }

  void updateHometown(Address? hometown) {
    _updateProfile((data) => data.copyWith(hometown: hometown));
  }

  void updateCommunicationStyle(CommunicationStyle? style) {
    _updateProfile((data) => data.copyWith(communicationStyle: style));
  }

  void updateOccupation(Occupation? occupation) {
    _updateProfile((data) => data.copyWith(occupation: occupation));
  }

  void updateEducation(Education? education) {
    _updateProfile((data) => data.copyWith(education: education));
  }

  void updateSmoking(Smoking? smoking) {
    _updateProfile((data) => data.copyWith(smoking: smoking));
  }

  void updateAlcohol(Alcohol? alcohol) {
    _updateProfile((data) => data.copyWith(alcohol: alcohol));
  }

  void updateHoliday(Holiday? holiday) {
    _updateProfile((data) => data.copyWith(holiday: holiday));
  }

  // 趣味（最大3つ想定）
  void setSunnyDayHobby({
    required int index,
    required String hobby,
  }) {
    final current =
        normalize(targetList: state.data!.sunnyDayHobbies, length: 3);
    current[index] = hobby;

    _updateProfile(
      (data) => data.copyWith(sunnyDayHobbies: current),
    );
  }

  void removeSunnyDayHobby(int index) {
    final current =
        normalize(targetList: state.data!.sunnyDayHobbies, length: 3);
    current[index] = '';

    _updateProfile(
      (data) => data.copyWith(sunnyDayHobbies: current),
    );
  }

  /// 一括更新（APIレスポンスなど）
  // void replaceSunnyDayHobbies(List<String> hobbies) {
  //   _updateProfile(
  //     (data) => data.copyWith(
  //       sunnyDayHobbies: normalize(targetList: hobbies, length: 3),
  //     ),
  //   );
  // }

  void setRainyDayHobby({
    required int index,
    required String hobby,
  }) {
    final current =
        normalize(targetList: state.data!.rainyDayHobbies, length: 3);
    current[index] = hobby;

    _updateProfile(
      (data) => data.copyWith(rainyDayHobbies: current),
    );
  }

  void removeRainyDayHobby(int index) {
    final current =
        normalize(targetList: state.data!.rainyDayHobbies, length: 3);
    current[index] = '';

    _updateProfile(
      (data) => data.copyWith(rainyDayHobbies: current),
    );
  }

  /// 一括更新（APIレスポンスなど）
  // void replaceRainyDayHobbies(List<String> hobbies) {
  //   _updateProfile(
  //     (data) => data.copyWith(
  //       rainyDayHobbies: normalize(targetList: hobbies, length: 3),
  //     ),
  //   );
  // }

  // 共通更新処理
  void _updateProfile(
    ProfileModel Function(ProfileModel data) updater,
  ) {
    final current = state.data;
    if (current == null) return;

    if (!state.isChanged) {
      state = state.copyWith(
        isChanged: true,
      );
    }

    state = state.copyWith(
      data: updater(current),
    );
  }

  Future<void> discardChangesAndClose() async {
    if (state.isChanged) {
      state = state.copyWith(
        isChanged: false,
      );
    }
    // TODO: プロフィール初期化処理
  }

  Future<void> submit() async {
    if (state.isChanged) {
      state = state.copyWith(
        isChanged: false,
      );
    }
    // TODO: 送信処理
  }
}
