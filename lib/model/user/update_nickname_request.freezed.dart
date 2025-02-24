// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_nickname_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateNickNameRequest _$UpdateNickNameRequestFromJson(
    Map<String, dynamic> json) {
  return _UpdateNickNameRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateNickNameRequest {
  String get nickName => throw _privateConstructorUsedError;

  /// Serializes this UpdateNickNameRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateNickNameRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateNickNameRequestCopyWith<UpdateNickNameRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateNickNameRequestCopyWith<$Res> {
  factory $UpdateNickNameRequestCopyWith(UpdateNickNameRequest value,
          $Res Function(UpdateNickNameRequest) then) =
      _$UpdateNickNameRequestCopyWithImpl<$Res, UpdateNickNameRequest>;
  @useResult
  $Res call({String nickName});
}

/// @nodoc
class _$UpdateNickNameRequestCopyWithImpl<$Res,
        $Val extends UpdateNickNameRequest>
    implements $UpdateNickNameRequestCopyWith<$Res> {
  _$UpdateNickNameRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateNickNameRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
  }) {
    return _then(_value.copyWith(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateNickNameRequestImplCopyWith<$Res>
    implements $UpdateNickNameRequestCopyWith<$Res> {
  factory _$$UpdateNickNameRequestImplCopyWith(
          _$UpdateNickNameRequestImpl value,
          $Res Function(_$UpdateNickNameRequestImpl) then) =
      __$$UpdateNickNameRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nickName});
}

/// @nodoc
class __$$UpdateNickNameRequestImplCopyWithImpl<$Res>
    extends _$UpdateNickNameRequestCopyWithImpl<$Res,
        _$UpdateNickNameRequestImpl>
    implements _$$UpdateNickNameRequestImplCopyWith<$Res> {
  __$$UpdateNickNameRequestImplCopyWithImpl(_$UpdateNickNameRequestImpl _value,
      $Res Function(_$UpdateNickNameRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateNickNameRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nickName = null,
  }) {
    return _then(_$UpdateNickNameRequestImpl(
      nickName: null == nickName
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateNickNameRequestImpl implements _UpdateNickNameRequest {
  _$UpdateNickNameRequestImpl({required this.nickName});

  factory _$UpdateNickNameRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateNickNameRequestImplFromJson(json);

  @override
  final String nickName;

  @override
  String toString() {
    return 'UpdateNickNameRequest(nickName: $nickName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateNickNameRequestImpl &&
            (identical(other.nickName, nickName) ||
                other.nickName == nickName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nickName);

  /// Create a copy of UpdateNickNameRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateNickNameRequestImplCopyWith<_$UpdateNickNameRequestImpl>
      get copyWith => __$$UpdateNickNameRequestImplCopyWithImpl<
          _$UpdateNickNameRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateNickNameRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateNickNameRequest implements UpdateNickNameRequest {
  factory _UpdateNickNameRequest({required final String nickName}) =
      _$UpdateNickNameRequestImpl;

  factory _UpdateNickNameRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateNickNameRequestImpl.fromJson;

  @override
  String get nickName;

  /// Create a copy of UpdateNickNameRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateNickNameRequestImplCopyWith<_$UpdateNickNameRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
