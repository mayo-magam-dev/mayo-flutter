// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_favorite_store_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateFavoriteStoreRequest _$UpdateFavoriteStoreRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateFavoriteStoreRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateFavoriteStoreRequest {
  String get storeId => throw _privateConstructorUsedError;

  /// Serializes this UpdateFavoriteStoreRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateFavoriteStoreRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateFavoriteStoreRequestCopyWith<UpdateFavoriteStoreRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateFavoriteStoreRequestCopyWith<$Res> {
  factory $UpdateFavoriteStoreRequestCopyWith(UpdateFavoriteStoreRequest value,
          $Res Function(UpdateFavoriteStoreRequest) then) =
      _$UpdateFavoriteStoreRequestCopyWithImpl<$Res,
          UpdateFavoriteStoreRequest>;
  @useResult
  $Res call({String storeId});
}

/// @nodoc
class _$UpdateFavoriteStoreRequestCopyWithImpl<$Res,
        $Val extends UpdateFavoriteStoreRequest>
    implements $UpdateFavoriteStoreRequestCopyWith<$Res> {
  _$UpdateFavoriteStoreRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateFavoriteStoreRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = null,
  }) {
    return _then(_value.copyWith(
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateFavoriteStoreRequestImplCopyWith<$Res>
    implements $UpdateFavoriteStoreRequestCopyWith<$Res> {
  factory _$$UpdateFavoriteStoreRequestImplCopyWith(
          _$UpdateFavoriteStoreRequestImpl value,
          $Res Function(_$UpdateFavoriteStoreRequestImpl) then) =
      __$$UpdateFavoriteStoreRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String storeId});
}

/// @nodoc
class __$$UpdateFavoriteStoreRequestImplCopyWithImpl<$Res>
    extends _$UpdateFavoriteStoreRequestCopyWithImpl<$Res,
        _$UpdateFavoriteStoreRequestImpl>
    implements _$$UpdateFavoriteStoreRequestImplCopyWith<$Res> {
  __$$UpdateFavoriteStoreRequestImplCopyWithImpl(
      _$UpdateFavoriteStoreRequestImpl _value,
      $Res Function(_$UpdateFavoriteStoreRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateFavoriteStoreRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = null,
  }) {
    return _then(_$UpdateFavoriteStoreRequestImpl(
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateFavoriteStoreRequestImpl implements _UpdateFavoriteStoreRequest {
  _$UpdateFavoriteStoreRequestImpl({required this.storeId});

  factory _$UpdateFavoriteStoreRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UpdateFavoriteStoreRequestImplFromJson(json);

  @override
  final String storeId;

  @override
  String toString() {
    return 'UpdateFavoriteStoreRequest(storeId: $storeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFavoriteStoreRequestImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, storeId);

  /// Create a copy of UpdateFavoriteStoreRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFavoriteStoreRequestImplCopyWith<_$UpdateFavoriteStoreRequestImpl>
      get copyWith => __$$UpdateFavoriteStoreRequestImplCopyWithImpl<
          _$UpdateFavoriteStoreRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateFavoriteStoreRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateFavoriteStoreRequest
    implements UpdateFavoriteStoreRequest {
  factory _UpdateFavoriteStoreRequest({required final String storeId}) =
      _$UpdateFavoriteStoreRequestImpl;

  factory _UpdateFavoriteStoreRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateFavoriteStoreRequestImpl.fromJson;

  @override
  String get storeId;

  /// Create a copy of UpdateFavoriteStoreRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateFavoriteStoreRequestImplCopyWith<_$UpdateFavoriteStoreRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
