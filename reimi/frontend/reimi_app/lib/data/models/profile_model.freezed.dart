// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileModel {
  String get name;
  Gender get gender;
  DateTime get birthDate;
  Address get address;
  String get introduction;
  String get mainPhotoUrl;
  List<String>? get subPhotoUrls;
  Height? get height;
  BodyShape? get bodyShape;
  AnnualIncome? get annualIncome;
  BloodType? get bloodType;
  Address? get hometown;
  CommunicationStyle? get communicationStyle;
  Occupation? get occupation;
  Education? get education;
  Smoking? get smoking;
  Alcohol? get alcohol;
  Holiday? get holiday;
  List<String>? get sunnyDayHobbies;
  List<String>? get rainyDayHobbies;
  @IsoDateTimeConverter()
  DateTime? get createdAt;
  @IsoDateTimeConverter()
  DateTime? get updatedAt;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProfileModelCopyWith<ProfileModel> get copyWith =>
      _$ProfileModelCopyWithImpl<ProfileModel>(
          this as ProfileModel, _$identity);

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProfileModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            const DeepCollectionEquality()
                .equals(other.subPhotoUrls, subPhotoUrls) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.bodyShape, bodyShape) ||
                other.bodyShape == bodyShape) &&
            (identical(other.annualIncome, annualIncome) ||
                other.annualIncome == annualIncome) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.hometown, hometown) ||
                other.hometown == hometown) &&
            (identical(other.communicationStyle, communicationStyle) ||
                other.communicationStyle == communicationStyle) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.smoking, smoking) || other.smoking == smoking) &&
            (identical(other.alcohol, alcohol) || other.alcohol == alcohol) &&
            (identical(other.holiday, holiday) || other.holiday == holiday) &&
            const DeepCollectionEquality()
                .equals(other.sunnyDayHobbies, sunnyDayHobbies) &&
            const DeepCollectionEquality()
                .equals(other.rainyDayHobbies, rainyDayHobbies) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        gender,
        birthDate,
        address,
        introduction,
        mainPhotoUrl,
        const DeepCollectionEquality().hash(subPhotoUrls),
        height,
        bodyShape,
        annualIncome,
        bloodType,
        hometown,
        communicationStyle,
        occupation,
        education,
        smoking,
        alcohol,
        holiday,
        const DeepCollectionEquality().hash(sunnyDayHobbies),
        const DeepCollectionEquality().hash(rainyDayHobbies),
        createdAt,
        updatedAt
      ]);

  @override
  String toString() {
    return 'ProfileModel(name: $name, gender: $gender, birthDate: $birthDate, address: $address, introduction: $introduction, mainPhotoUrl: $mainPhotoUrl, subPhotoUrls: $subPhotoUrls, height: $height, bodyShape: $bodyShape, annualIncome: $annualIncome, bloodType: $bloodType, hometown: $hometown, communicationStyle: $communicationStyle, occupation: $occupation, education: $education, smoking: $smoking, alcohol: $alcohol, holiday: $holiday, sunnyDayHobbies: $sunnyDayHobbies, rainyDayHobbies: $rainyDayHobbies, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res> {
  factory $ProfileModelCopyWith(
          ProfileModel value, $Res Function(ProfileModel) _then) =
      _$ProfileModelCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      Gender gender,
      DateTime birthDate,
      Address address,
      String introduction,
      String mainPhotoUrl,
      List<String>? subPhotoUrls,
      Height? height,
      BodyShape? bodyShape,
      AnnualIncome? annualIncome,
      BloodType? bloodType,
      Address? hometown,
      CommunicationStyle? communicationStyle,
      Occupation? occupation,
      Education? education,
      Smoking? smoking,
      Alcohol? alcohol,
      Holiday? holiday,
      List<String>? sunnyDayHobbies,
      List<String>? rainyDayHobbies,
      @IsoDateTimeConverter() DateTime? createdAt,
      @IsoDateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class _$ProfileModelCopyWithImpl<$Res> implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._self, this._then);

  final ProfileModel _self;
  final $Res Function(ProfileModel) _then;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? introduction = null,
    Object? mainPhotoUrl = null,
    Object? subPhotoUrls = freezed,
    Object? height = freezed,
    Object? bodyShape = freezed,
    Object? annualIncome = freezed,
    Object? bloodType = freezed,
    Object? hometown = freezed,
    Object? communicationStyle = freezed,
    Object? occupation = freezed,
    Object? education = freezed,
    Object? smoking = freezed,
    Object? alcohol = freezed,
    Object? holiday = freezed,
    Object? sunnyDayHobbies = freezed,
    Object? rainyDayHobbies = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subPhotoUrls: freezed == subPhotoUrls
          ? _self.subPhotoUrls
          : subPhotoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height?,
      bodyShape: freezed == bodyShape
          ? _self.bodyShape
          : bodyShape // ignore: cast_nullable_to_non_nullable
              as BodyShape?,
      annualIncome: freezed == annualIncome
          ? _self.annualIncome
          : annualIncome // ignore: cast_nullable_to_non_nullable
              as AnnualIncome?,
      bloodType: freezed == bloodType
          ? _self.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType?,
      hometown: freezed == hometown
          ? _self.hometown
          : hometown // ignore: cast_nullable_to_non_nullable
              as Address?,
      communicationStyle: freezed == communicationStyle
          ? _self.communicationStyle
          : communicationStyle // ignore: cast_nullable_to_non_nullable
              as CommunicationStyle?,
      occupation: freezed == occupation
          ? _self.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as Occupation?,
      education: freezed == education
          ? _self.education
          : education // ignore: cast_nullable_to_non_nullable
              as Education?,
      smoking: freezed == smoking
          ? _self.smoking
          : smoking // ignore: cast_nullable_to_non_nullable
              as Smoking?,
      alcohol: freezed == alcohol
          ? _self.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as Alcohol?,
      holiday: freezed == holiday
          ? _self.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as Holiday?,
      sunnyDayHobbies: freezed == sunnyDayHobbies
          ? _self.sunnyDayHobbies
          : sunnyDayHobbies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rainyDayHobbies: freezed == rainyDayHobbies
          ? _self.rainyDayHobbies
          : rainyDayHobbies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProfileModel].
extension ProfileModelPatterns on ProfileModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ProfileModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ProfileModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ProfileModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String name,
            Gender gender,
            DateTime birthDate,
            Address address,
            String introduction,
            String mainPhotoUrl,
            List<String>? subPhotoUrls,
            Height? height,
            BodyShape? bodyShape,
            AnnualIncome? annualIncome,
            BloodType? bloodType,
            Address? hometown,
            CommunicationStyle? communicationStyle,
            Occupation? occupation,
            Education? education,
            Smoking? smoking,
            Alcohol? alcohol,
            Holiday? holiday,
            List<String>? sunnyDayHobbies,
            List<String>? rainyDayHobbies,
            @IsoDateTimeConverter() DateTime? createdAt,
            @IsoDateTimeConverter() DateTime? updatedAt)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProfileModel() when $default != null:
        return $default(
            _that.name,
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.introduction,
            _that.mainPhotoUrl,
            _that.subPhotoUrls,
            _that.height,
            _that.bodyShape,
            _that.annualIncome,
            _that.bloodType,
            _that.hometown,
            _that.communicationStyle,
            _that.occupation,
            _that.education,
            _that.smoking,
            _that.alcohol,
            _that.holiday,
            _that.sunnyDayHobbies,
            _that.rainyDayHobbies,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String name,
            Gender gender,
            DateTime birthDate,
            Address address,
            String introduction,
            String mainPhotoUrl,
            List<String>? subPhotoUrls,
            Height? height,
            BodyShape? bodyShape,
            AnnualIncome? annualIncome,
            BloodType? bloodType,
            Address? hometown,
            CommunicationStyle? communicationStyle,
            Occupation? occupation,
            Education? education,
            Smoking? smoking,
            Alcohol? alcohol,
            Holiday? holiday,
            List<String>? sunnyDayHobbies,
            List<String>? rainyDayHobbies,
            @IsoDateTimeConverter() DateTime? createdAt,
            @IsoDateTimeConverter() DateTime? updatedAt)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileModel():
        return $default(
            _that.name,
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.introduction,
            _that.mainPhotoUrl,
            _that.subPhotoUrls,
            _that.height,
            _that.bodyShape,
            _that.annualIncome,
            _that.bloodType,
            _that.hometown,
            _that.communicationStyle,
            _that.occupation,
            _that.education,
            _that.smoking,
            _that.alcohol,
            _that.holiday,
            _that.sunnyDayHobbies,
            _that.rainyDayHobbies,
            _that.createdAt,
            _that.updatedAt);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String name,
            Gender gender,
            DateTime birthDate,
            Address address,
            String introduction,
            String mainPhotoUrl,
            List<String>? subPhotoUrls,
            Height? height,
            BodyShape? bodyShape,
            AnnualIncome? annualIncome,
            BloodType? bloodType,
            Address? hometown,
            CommunicationStyle? communicationStyle,
            Occupation? occupation,
            Education? education,
            Smoking? smoking,
            Alcohol? alcohol,
            Holiday? holiday,
            List<String>? sunnyDayHobbies,
            List<String>? rainyDayHobbies,
            @IsoDateTimeConverter() DateTime? createdAt,
            @IsoDateTimeConverter() DateTime? updatedAt)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProfileModel() when $default != null:
        return $default(
            _that.name,
            _that.gender,
            _that.birthDate,
            _that.address,
            _that.introduction,
            _that.mainPhotoUrl,
            _that.subPhotoUrls,
            _that.height,
            _that.bodyShape,
            _that.annualIncome,
            _that.bloodType,
            _that.hometown,
            _that.communicationStyle,
            _that.occupation,
            _that.education,
            _that.smoking,
            _that.alcohol,
            _that.holiday,
            _that.sunnyDayHobbies,
            _that.rainyDayHobbies,
            _that.createdAt,
            _that.updatedAt);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _ProfileModel implements ProfileModel {
  const _ProfileModel(
      {required this.name,
      required this.gender,
      required this.birthDate,
      required this.address,
      required this.introduction,
      required this.mainPhotoUrl,
      final List<String>? subPhotoUrls,
      this.height,
      this.bodyShape,
      this.annualIncome,
      this.bloodType,
      this.hometown,
      this.communicationStyle,
      this.occupation,
      this.education,
      this.smoking,
      this.alcohol,
      this.holiday,
      final List<String>? sunnyDayHobbies,
      final List<String>? rainyDayHobbies,
      @IsoDateTimeConverter() this.createdAt,
      @IsoDateTimeConverter() this.updatedAt})
      : _subPhotoUrls = subPhotoUrls,
        _sunnyDayHobbies = sunnyDayHobbies,
        _rainyDayHobbies = rainyDayHobbies;
  factory _ProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileModelFromJson(json);

  @override
  final String name;
  @override
  final Gender gender;
  @override
  final DateTime birthDate;
  @override
  final Address address;
  @override
  final String introduction;
  @override
  final String mainPhotoUrl;
  final List<String>? _subPhotoUrls;
  @override
  List<String>? get subPhotoUrls {
    final value = _subPhotoUrls;
    if (value == null) return null;
    if (_subPhotoUrls is EqualUnmodifiableListView) return _subPhotoUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Height? height;
  @override
  final BodyShape? bodyShape;
  @override
  final AnnualIncome? annualIncome;
  @override
  final BloodType? bloodType;
  @override
  final Address? hometown;
  @override
  final CommunicationStyle? communicationStyle;
  @override
  final Occupation? occupation;
  @override
  final Education? education;
  @override
  final Smoking? smoking;
  @override
  final Alcohol? alcohol;
  @override
  final Holiday? holiday;
  final List<String>? _sunnyDayHobbies;
  @override
  List<String>? get sunnyDayHobbies {
    final value = _sunnyDayHobbies;
    if (value == null) return null;
    if (_sunnyDayHobbies is EqualUnmodifiableListView) return _sunnyDayHobbies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _rainyDayHobbies;
  @override
  List<String>? get rainyDayHobbies {
    final value = _rainyDayHobbies;
    if (value == null) return null;
    if (_rainyDayHobbies is EqualUnmodifiableListView) return _rainyDayHobbies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @IsoDateTimeConverter()
  final DateTime? createdAt;
  @override
  @IsoDateTimeConverter()
  final DateTime? updatedAt;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProfileModelCopyWith<_ProfileModel> get copyWith =>
      __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProfileModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfileModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            const DeepCollectionEquality()
                .equals(other._subPhotoUrls, _subPhotoUrls) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.bodyShape, bodyShape) ||
                other.bodyShape == bodyShape) &&
            (identical(other.annualIncome, annualIncome) ||
                other.annualIncome == annualIncome) &&
            (identical(other.bloodType, bloodType) ||
                other.bloodType == bloodType) &&
            (identical(other.hometown, hometown) ||
                other.hometown == hometown) &&
            (identical(other.communicationStyle, communicationStyle) ||
                other.communicationStyle == communicationStyle) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.smoking, smoking) || other.smoking == smoking) &&
            (identical(other.alcohol, alcohol) || other.alcohol == alcohol) &&
            (identical(other.holiday, holiday) || other.holiday == holiday) &&
            const DeepCollectionEquality()
                .equals(other._sunnyDayHobbies, _sunnyDayHobbies) &&
            const DeepCollectionEquality()
                .equals(other._rainyDayHobbies, _rainyDayHobbies) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        gender,
        birthDate,
        address,
        introduction,
        mainPhotoUrl,
        const DeepCollectionEquality().hash(_subPhotoUrls),
        height,
        bodyShape,
        annualIncome,
        bloodType,
        hometown,
        communicationStyle,
        occupation,
        education,
        smoking,
        alcohol,
        holiday,
        const DeepCollectionEquality().hash(_sunnyDayHobbies),
        const DeepCollectionEquality().hash(_rainyDayHobbies),
        createdAt,
        updatedAt
      ]);

  @override
  String toString() {
    return 'ProfileModel(name: $name, gender: $gender, birthDate: $birthDate, address: $address, introduction: $introduction, mainPhotoUrl: $mainPhotoUrl, subPhotoUrls: $subPhotoUrls, height: $height, bodyShape: $bodyShape, annualIncome: $annualIncome, bloodType: $bloodType, hometown: $hometown, communicationStyle: $communicationStyle, occupation: $occupation, education: $education, smoking: $smoking, alcohol: $alcohol, holiday: $holiday, sunnyDayHobbies: $sunnyDayHobbies, rainyDayHobbies: $rainyDayHobbies, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res>
    implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(
          _ProfileModel value, $Res Function(_ProfileModel) _then) =
      __$ProfileModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      Gender gender,
      DateTime birthDate,
      Address address,
      String introduction,
      String mainPhotoUrl,
      List<String>? subPhotoUrls,
      Height? height,
      BodyShape? bodyShape,
      AnnualIncome? annualIncome,
      BloodType? bloodType,
      Address? hometown,
      CommunicationStyle? communicationStyle,
      Occupation? occupation,
      Education? education,
      Smoking? smoking,
      Alcohol? alcohol,
      Holiday? holiday,
      List<String>? sunnyDayHobbies,
      List<String>? rainyDayHobbies,
      @IsoDateTimeConverter() DateTime? createdAt,
      @IsoDateTimeConverter() DateTime? updatedAt});
}

/// @nodoc
class __$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(this._self, this._then);

  final _ProfileModel _self;
  final $Res Function(_ProfileModel) _then;

  /// Create a copy of ProfileModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? gender = null,
    Object? birthDate = null,
    Object? address = null,
    Object? introduction = null,
    Object? mainPhotoUrl = null,
    Object? subPhotoUrls = freezed,
    Object? height = freezed,
    Object? bodyShape = freezed,
    Object? annualIncome = freezed,
    Object? bloodType = freezed,
    Object? hometown = freezed,
    Object? communicationStyle = freezed,
    Object? occupation = freezed,
    Object? education = freezed,
    Object? smoking = freezed,
    Object? alcohol = freezed,
    Object? holiday = freezed,
    Object? sunnyDayHobbies = freezed,
    Object? rainyDayHobbies = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_ProfileModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      subPhotoUrls: freezed == subPhotoUrls
          ? _self._subPhotoUrls
          : subPhotoUrls // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      height: freezed == height
          ? _self.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height?,
      bodyShape: freezed == bodyShape
          ? _self.bodyShape
          : bodyShape // ignore: cast_nullable_to_non_nullable
              as BodyShape?,
      annualIncome: freezed == annualIncome
          ? _self.annualIncome
          : annualIncome // ignore: cast_nullable_to_non_nullable
              as AnnualIncome?,
      bloodType: freezed == bloodType
          ? _self.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType?,
      hometown: freezed == hometown
          ? _self.hometown
          : hometown // ignore: cast_nullable_to_non_nullable
              as Address?,
      communicationStyle: freezed == communicationStyle
          ? _self.communicationStyle
          : communicationStyle // ignore: cast_nullable_to_non_nullable
              as CommunicationStyle?,
      occupation: freezed == occupation
          ? _self.occupation
          : occupation // ignore: cast_nullable_to_non_nullable
              as Occupation?,
      education: freezed == education
          ? _self.education
          : education // ignore: cast_nullable_to_non_nullable
              as Education?,
      smoking: freezed == smoking
          ? _self.smoking
          : smoking // ignore: cast_nullable_to_non_nullable
              as Smoking?,
      alcohol: freezed == alcohol
          ? _self.alcohol
          : alcohol // ignore: cast_nullable_to_non_nullable
              as Alcohol?,
      holiday: freezed == holiday
          ? _self.holiday
          : holiday // ignore: cast_nullable_to_non_nullable
              as Holiday?,
      sunnyDayHobbies: freezed == sunnyDayHobbies
          ? _self._sunnyDayHobbies
          : sunnyDayHobbies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      rainyDayHobbies: freezed == rainyDayHobbies
          ? _self._rainyDayHobbies
          : rainyDayHobbies // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdAt: freezed == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _self.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
