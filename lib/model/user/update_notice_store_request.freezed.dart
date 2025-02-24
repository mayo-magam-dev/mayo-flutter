// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_notice_store_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateNoticeStoreRequest _$UpdateNoticeStoreRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateNoticeStoreRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateNoticeStoreRequest {
  String get storeId => throw _privateConstructorUsedError;

  /// Serializes this UpdateNoticeStoreRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateNoticeStoreRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateNoticeStoreRequestCopyWith<UpdateNoticeStoreRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateNoticeStoreRequestCopyWith<$Res> {
  factory $UpdateNoticeStoreRequestCopyWith(UpdateNoticeStoreRequest value,
          $Res Function(UpdateNoticeStoreRequest) then) =
      _$UpdateNoticeStoreRequestCopyWithImpl<$Res, UpdateNoticeStoreRequest>;
  @useResult
  $Res call({String storeId});
}

/// @nodoc
class _$UpdateNoticeStoreRequestCopyWithImpl<$Res,
        $Val extends UpdateNoticeStoreRequest>
    implements $UpdateNoticeStoreRequestCopyWith<$Res> {
  _$UpdateNoticeStoreRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateNoticeStoreRequest
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
abstract class _$$UpdateNoticeStoreRequestImplCopyWith<$Res>
    implements $UpdateNoticeStoreRequestCopyWith<$Res> {
  factory _$$UpdateNoticeStoreRequestImplCopyWith(
          _$UpdateNoticeStoreRequestImpl value,
          $Res Function(_$UpdateNoticeStoreRequestImpl) then) =
      __$$UpdateNoticeStoreRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String storeId});
}

/// @nodoc
class __$$UpdateNoticeStoreRequestImplCopyWithImpl<$Res>
    extends _$UpdateNoticeStoreRequestCopyWithImpl<$Res,
        _$UpdateNoticeStoreRequestImpl>
    implements _$$UpdateNoticeStoreRequestImplCopyWith<$Res> {
  __$$UpdateNoticeStoreRequestImplCopyWithImpl(
      _$UpdateNoticeStoreRequestImpl _value,
      $Res Function(_$UpdateNoticeStoreRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateNoticeStoreRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storeId = null,
  }) {
    return _then(_$UpdateNoticeStoreRequestImpl(
      storeId: null == storeId
          ? _value.storeId
          : storeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateNoticeStoreRequestImpl implements _UpdateNoticeStoreRequest {
  _$UpdateNoticeStoreRequestImpl({required this.storeId});

  factory _$UpdateNoticeStoreRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateNoticeStoreRequestImplFromJson(json);

  @override
  final String storeId;

  @override
  String toString() {
    return 'UpdateNoticeStoreRequest(storeId: $storeId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNoticeStoreRequestImpl &&
            (identical(other.storeId, storeId) || other.storeId == storeId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, storeId);

  /// Create a copy of UpdateNoticeStoreRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNoticeStoreRequestImplCopyWith<_$UpdateNoticeStoreRequestImpl>
      get copyWith => __$$UpdateNoticeStoreRequestImplCopyWithImpl<
          _$UpdateNoticeStoreRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateNoticeStoreRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateNoticeStoreRequest implements UpdateNoticeStoreRequest {
  factory _UpdateNoticeStoreRequest({required final String storeId}) =
      _$UpdateNoticeStoreRequestImpl;

  factory _UpdateNoticeStoreRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateNoticeStoreRequestImpl.fromJson;

  @override
  String get storeId;

  /// Create a copy of UpdateNoticeStoreRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNoticeStoreRequestImplCopyWith<_$UpdateNoticeStoreRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
