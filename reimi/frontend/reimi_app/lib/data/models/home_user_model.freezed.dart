// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeUserModel {
  String get id;
  String get name;
  @YyyyMmDdDateConverter()
  DateTime get birthDate;
  Address get address;
  String get mainPhotoUrl;
  String get introduction;
  bool get isTodayReported;

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HomeUserModelCopyWith<HomeUserModel> get copyWith =>
      _$HomeUserModelCopyWithImpl<HomeUserModel>(
          this as HomeUserModel, _$identity);

  /// Serializes this HomeUserModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HomeUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.isTodayReported, isTodayReported) ||
                other.isTodayReported == isTodayReported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, birthDate, address,
      mainPhotoUrl, introduction, isTodayReported);

  @override
  String toString() {
    return 'HomeUserModel(id: $id, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, introduction: $introduction, isTodayReported: $isTodayReported)';
  }
}

/// @nodoc
abstract mixin class $HomeUserModelCopyWith<$Res> {
  factory $HomeUserModelCopyWith(
          HomeUserModel value, $Res Function(HomeUserModel) _then) =
      _$HomeUserModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String name,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String introduction,
      bool isTodayReported});
}

/// @nodoc
class _$HomeUserModelCopyWithImpl<$Res>
    implements $HomeUserModelCopyWith<$Res> {
  _$HomeUserModelCopyWithImpl(this._self, this._then);

  final HomeUserModel _self;
  final $Res Function(HomeUserModel) _then;

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? introduction = null,
    Object? isTodayReported = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      isTodayReported: null == isTodayReported
          ? _self.isTodayReported
          : isTodayReported // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [HomeUserModel].
extension HomeUserModelPatterns on HomeUserModel {
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
    TResult Function(_HomeUserModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeUserModel() when $default != null:
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
    TResult Function(_HomeUserModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeUserModel():
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
    TResult? Function(_HomeUserModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeUserModel() when $default != null:
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
            String id,
            String name,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String introduction,
            bool isTodayReported)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HomeUserModel() when $default != null:
        return $default(_that.id, _that.name, _that.birthDate, _that.address,
            _that.mainPhotoUrl, _that.introduction, _that.isTodayReported);
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
            String id,
            String name,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String introduction,
            bool isTodayReported)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeUserModel():
        return $default(_that.id, _that.name, _that.birthDate, _that.address,
            _that.mainPhotoUrl, _that.introduction, _that.isTodayReported);
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
            String id,
            String name,
            @YyyyMmDdDateConverter() DateTime birthDate,
            Address address,
            String mainPhotoUrl,
            String introduction,
            bool isTodayReported)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HomeUserModel() when $default != null:
        return $default(_that.id, _that.name, _that.birthDate, _that.address,
            _that.mainPhotoUrl, _that.introduction, _that.isTodayReported);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _HomeUserModel implements HomeUserModel {
  const _HomeUserModel(
      {required this.id,
      required this.name,
      @YyyyMmDdDateConverter() required this.birthDate,
      required this.address,
      required this.mainPhotoUrl,
      required this.introduction,
      required this.isTodayReported});
  factory _HomeUserModel.fromJson(Map<String, dynamic> json) =>
      _$HomeUserModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @YyyyMmDdDateConverter()
  final DateTime birthDate;
  @override
  final Address address;
  @override
  final String mainPhotoUrl;
  @override
  final String introduction;
  @override
  final bool isTodayReported;

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HomeUserModelCopyWith<_HomeUserModel> get copyWith =>
      __$HomeUserModelCopyWithImpl<_HomeUserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HomeUserModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeUserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mainPhotoUrl, mainPhotoUrl) ||
                other.mainPhotoUrl == mainPhotoUrl) &&
            (identical(other.introduction, introduction) ||
                other.introduction == introduction) &&
            (identical(other.isTodayReported, isTodayReported) ||
                other.isTodayReported == isTodayReported));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, birthDate, address,
      mainPhotoUrl, introduction, isTodayReported);

  @override
  String toString() {
    return 'HomeUserModel(id: $id, name: $name, birthDate: $birthDate, address: $address, mainPhotoUrl: $mainPhotoUrl, introduction: $introduction, isTodayReported: $isTodayReported)';
  }
}

/// @nodoc
abstract mixin class _$HomeUserModelCopyWith<$Res>
    implements $HomeUserModelCopyWith<$Res> {
  factory _$HomeUserModelCopyWith(
          _HomeUserModel value, $Res Function(_HomeUserModel) _then) =
      __$HomeUserModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @YyyyMmDdDateConverter() DateTime birthDate,
      Address address,
      String mainPhotoUrl,
      String introduction,
      bool isTodayReported});
}

/// @nodoc
class __$HomeUserModelCopyWithImpl<$Res>
    implements _$HomeUserModelCopyWith<$Res> {
  __$HomeUserModelCopyWithImpl(this._self, this._then);

  final _HomeUserModel _self;
  final $Res Function(_HomeUserModel) _then;

  /// Create a copy of HomeUserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? birthDate = null,
    Object? address = null,
    Object? mainPhotoUrl = null,
    Object? introduction = null,
    Object? isTodayReported = null,
  }) {
    return _then(_HomeUserModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _self.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      mainPhotoUrl: null == mainPhotoUrl
          ? _self.mainPhotoUrl
          : mainPhotoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      introduction: null == introduction
          ? _self.introduction
          : introduction // ignore: cast_nullable_to_non_nullable
              as String,
      isTodayReported: null == isTodayReported
          ? _self.isTodayReported
          : isTodayReported // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
