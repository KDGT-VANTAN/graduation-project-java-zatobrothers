// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_registration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserRegistrationModel {
  Gender? get gender;
  DateTime? get birthDate;
  Address? get address;
  String? get name;
  String? get introduction;
  String? get mainPhotoUrl;

  /// Create a copy of UserRegistrationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserRegistrationModelCopyWith<UserRegistrationModel> get copyWith =>
      _$UserRegistrationModelCopyWithImpl<UserRegistrationModel>(
          this as UserRegistrationModel, _$identity);

  /// Serializes this UserRegistrationModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserRegistrationModel &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gender, birthDate, address, name,
      introduction, mainPhotoUrl);

  @override
  String toString() {
    return 'UserRegistrationModel(gender: $gender, birthDate: $birthDate, address: $address, name: $name, introduction: $introduction, mainPhotoUrl: $mainPhotoUrl)';
  }
}

/// @nodoc
abstract mixin class $UserRegistrationModelCopyWith<$Res> {
  factory $UserRegistrationModelCopyWith(UserRegistrationModel value,
          $Res Function(UserRegistrationModel) _then) =
      _$UserRegistrationModelCopyWithImpl;
  @useResult
  $Res call(
      {Gender? gender,
      DateTime? birthDate,
      Address? address,
      String? name,
      String? introduction,
      String? mainPhotoUrl});
}

/// @nodoc
class _$UserRegistrationModelCopyWithImpl<$Res>
    implements $UserRegistrationModelCopyWith<$Res> {
  _$UserRegistrationModelCopyWithImpl(this._self, this._then);

  final UserRegistrationModel _self;
  final $Res Function(UserRegistrationModel) _then;

  /// Create a copy of UserRegistrationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? introduction = freezed,
    Object? mainPhotoUrl = freezed,
  }) {
    return _then(_self.copyWith(
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      introduction: freezed == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String?,
      mainPhotoUrl: freezed == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [UserRegistrationModel].
extension UserRegistrationModelPatterns on UserRegistrationModel {
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
    TResult Function(_UserRegistrationModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationModel() when $default != null:
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
    TResult Function(_UserRegistrationModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationModel():
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
    TResult? Function(_UserRegistrationModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationModel() when $default != null:
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
    TResult Function(Gender? gender, DateTime? birthDate, Address? address,
            String? name, String? introduction, String? mainPhotoUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationModel() when $default != null:
        return $default(_that.gender, _that.birthDate, _that.address,
            _that.name, _that.introduction, _that.mainPhotoUrl);
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
    TResult Function(Gender? gender, DateTime? birthDate, Address? address,
            String? name, String? introduction, String? mainPhotoUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationModel():
        return $default(_that.gender, _that.birthDate, _that.address,
            _that.name, _that.introduction, _that.mainPhotoUrl);
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
    TResult? Function(Gender? gender, DateTime? birthDate, Address? address,
            String? name, String? introduction, String? mainPhotoUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _UserRegistrationModel() when $default != null:
        return $default(_that.gender, _that.birthDate, _that.address,
            _that.name, _that.introduction, _that.mainPhotoUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _UserRegistrationModel implements UserRegistrationModel {
  const _UserRegistrationModel(
      {this.gender,
      this.birthDate,
      this.address,
      this.name,
      this.introduction,
      this.mainPhotoUrl});
  factory _UserRegistrationModel.fromJson(Map<String, dynamic> json) =>
      _$UserRegistrationModelFromJson(json);

  @override
  final Gender? gender;
  @override
  final DateTime? birthDate;
  @override
  final Address? address;
  @override
  final String? name;
  @override
  final String? introduction;
  @override
  final String? mainPhotoUrl;

  /// Create a copy of UserRegistrationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserRegistrationModelCopyWith<_UserRegistrationModel> get copyWith =>
      __$UserRegistrationModelCopyWithImpl<_UserRegistrationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$UserRegistrationModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserRegistrationModel &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, gender, birthDate, address, name,
      introduction, mainPhotoUrl);

  @override
  String toString() {
    return 'UserRegistrationModel(gender: $gender, birthDate: $birthDate, address: $address, name: $name, introduction: $introduction, mainPhotoUrl: $mainPhotoUrl)';
  }
}

/// @nodoc
abstract mixin class _$UserRegistrationModelCopyWith<$Res>
    implements $UserRegistrationModelCopyWith<$Res> {
  factory _$UserRegistrationModelCopyWith(_UserRegistrationModel value,
          $Res Function(_UserRegistrationModel) _then) =
      __$UserRegistrationModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Gender? gender,
      DateTime? birthDate,
      Address? address,
      String? name,
      String? introduction,
      String? mainPhotoUrl});
}

/// @nodoc
class __$UserRegistrationModelCopyWithImpl<$Res>
    implements _$UserRegistrationModelCopyWith<$Res> {
  __$UserRegistrationModelCopyWithImpl(this._self, this._then);

  final _UserRegistrationModel _self;
  final $Res Function(_UserRegistrationModel) _then;

  /// Create a copy of UserRegistrationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? gender = freezed,
    Object? birthDate = freezed,
    Object? address = freezed,
    Object? name = freezed,
    Object? introduction = freezed,
    Object? mainPhotoUrl = freezed,
  }) {
    return _then(_UserRegistrationModel(
      gender: freezed == gender
          ? _self.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender?,
      birthDate: freezed == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address?,
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      introduction: freezed == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String?,
      mainPhotoUrl: freezed == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
