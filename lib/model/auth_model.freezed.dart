// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) {
  return _AuthModel.fromJson(json);
}

/// @nodoc
mixin _$AuthModel {
  @JsonKey(name: "status")
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "token")
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: "is_superuser")
  bool get isSuperuser => throw _privateConstructorUsedError;
  @JsonKey(name: "user_details")
  UserDetails get userDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthModelCopyWith<AuthModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthModelCopyWith<$Res> {
  factory $AuthModelCopyWith(AuthModel value, $Res Function(AuthModel) then) =
      _$AuthModelCopyWithImpl<$Res, AuthModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "token") String token,
      @JsonKey(name: "is_superuser") bool isSuperuser,
      @JsonKey(name: "user_details") UserDetails userDetails});

  $UserDetailsCopyWith<$Res> get userDetails;
}

/// @nodoc
class _$AuthModelCopyWithImpl<$Res, $Val extends AuthModel>
    implements $AuthModelCopyWith<$Res> {
  _$AuthModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? token = null,
    Object? isSuperuser = null,
    Object? userDetails = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isSuperuser: null == isSuperuser
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool,
      userDetails: null == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDetailsCopyWith<$Res> get userDetails {
    return $UserDetailsCopyWith<$Res>(_value.userDetails, (value) {
      return _then(_value.copyWith(userDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthModelImplCopyWith<$Res>
    implements $AuthModelCopyWith<$Res> {
  factory _$$AuthModelImplCopyWith(
          _$AuthModelImpl value, $Res Function(_$AuthModelImpl) then) =
      __$$AuthModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "status") bool status,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "token") String token,
      @JsonKey(name: "is_superuser") bool isSuperuser,
      @JsonKey(name: "user_details") UserDetails userDetails});

  @override
  $UserDetailsCopyWith<$Res> get userDetails;
}

/// @nodoc
class __$$AuthModelImplCopyWithImpl<$Res>
    extends _$AuthModelCopyWithImpl<$Res, _$AuthModelImpl>
    implements _$$AuthModelImplCopyWith<$Res> {
  __$$AuthModelImplCopyWithImpl(
      _$AuthModelImpl _value, $Res Function(_$AuthModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? token = null,
    Object? isSuperuser = null,
    Object? userDetails = null,
  }) {
    return _then(_$AuthModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      isSuperuser: null == isSuperuser
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool,
      userDetails: null == userDetails
          ? _value.userDetails
          : userDetails // ignore: cast_nullable_to_non_nullable
              as UserDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthModelImpl implements _AuthModel {
  const _$AuthModelImpl(
      {@JsonKey(name: "status") required this.status,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "token") required this.token,
      @JsonKey(name: "is_superuser") required this.isSuperuser,
      @JsonKey(name: "user_details") required this.userDetails});

  factory _$AuthModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthModelImplFromJson(json);

  @override
  @JsonKey(name: "status")
  final bool status;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "token")
  final String token;
  @override
  @JsonKey(name: "is_superuser")
  final bool isSuperuser;
  @override
  @JsonKey(name: "user_details")
  final UserDetails userDetails;

  @override
  String toString() {
    return 'AuthModel(status: $status, message: $message, token: $token, isSuperuser: $isSuperuser, userDetails: $userDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.isSuperuser, isSuperuser) ||
                other.isSuperuser == isSuperuser) &&
            (identical(other.userDetails, userDetails) ||
                other.userDetails == userDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, message, token, isSuperuser, userDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthModelImplCopyWith<_$AuthModelImpl> get copyWith =>
      __$$AuthModelImplCopyWithImpl<_$AuthModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthModelImplToJson(
      this,
    );
  }
}

abstract class _AuthModel implements AuthModel {
  const factory _AuthModel(
      {@JsonKey(name: "status") required final bool status,
      @JsonKey(name: "message") required final String message,
      @JsonKey(name: "token") required final String token,
      @JsonKey(name: "is_superuser") required final bool isSuperuser,
      @JsonKey(name: "user_details")
      required final UserDetails userDetails}) = _$AuthModelImpl;

  factory _AuthModel.fromJson(Map<String, dynamic> json) =
      _$AuthModelImpl.fromJson;

  @override
  @JsonKey(name: "status")
  bool get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "token")
  String get token;
  @override
  @JsonKey(name: "is_superuser")
  bool get isSuperuser;
  @override
  @JsonKey(name: "user_details")
  UserDetails get userDetails;
  @override
  @JsonKey(ignore: true)
  _$$AuthModelImplCopyWith<_$AuthModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return _UserDetails.fromJson(json);
}

/// @nodoc
mixin _$UserDetails {
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "last_login")
  dynamic get lastLogin => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "phone")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "mail")
  String get mail => throw _privateConstructorUsedError;
  @JsonKey(name: "username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "password_text")
  String get passwordText => throw _privateConstructorUsedError;
  @JsonKey(name: "admin")
  int get admin => throw _privateConstructorUsedError;
  @JsonKey(name: "is_admin")
  bool get isAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "branch")
  dynamic get branch => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDetailsCopyWith<UserDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailsCopyWith<$Res> {
  factory $UserDetailsCopyWith(
          UserDetails value, $Res Function(UserDetails) then) =
      _$UserDetailsCopyWithImpl<$Res, UserDetails>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "last_login") dynamic lastLogin,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "mail") String mail,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "password_text") String passwordText,
      @JsonKey(name: "admin") int admin,
      @JsonKey(name: "is_admin") bool isAdmin,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt,
      @JsonKey(name: "branch") dynamic branch});
}

/// @nodoc
class _$UserDetailsCopyWithImpl<$Res, $Val extends UserDetails>
    implements $UserDetailsCopyWith<$Res> {
  _$UserDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lastLogin = freezed,
    Object? name = null,
    Object? phone = null,
    Object? address = null,
    Object? mail = null,
    Object? username = null,
    Object? password = null,
    Object? passwordText = null,
    Object? admin = null,
    Object? isAdmin = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? branch = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordText: null == passwordText
          ? _value.passwordText
          : passwordText // ignore: cast_nullable_to_non_nullable
              as String,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as int,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDetailsImplCopyWith<$Res>
    implements $UserDetailsCopyWith<$Res> {
  factory _$$UserDetailsImplCopyWith(
          _$UserDetailsImpl value, $Res Function(_$UserDetailsImpl) then) =
      __$$UserDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int id,
      @JsonKey(name: "last_login") dynamic lastLogin,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "phone") String phone,
      @JsonKey(name: "address") String address,
      @JsonKey(name: "mail") String mail,
      @JsonKey(name: "username") String username,
      @JsonKey(name: "password") String password,
      @JsonKey(name: "password_text") String passwordText,
      @JsonKey(name: "admin") int admin,
      @JsonKey(name: "is_admin") bool isAdmin,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "created_at") DateTime createdAt,
      @JsonKey(name: "updated_at") DateTime updatedAt,
      @JsonKey(name: "branch") dynamic branch});
}

/// @nodoc
class __$$UserDetailsImplCopyWithImpl<$Res>
    extends _$UserDetailsCopyWithImpl<$Res, _$UserDetailsImpl>
    implements _$$UserDetailsImplCopyWith<$Res> {
  __$$UserDetailsImplCopyWithImpl(
      _$UserDetailsImpl _value, $Res Function(_$UserDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lastLogin = freezed,
    Object? name = null,
    Object? phone = null,
    Object? address = null,
    Object? mail = null,
    Object? username = null,
    Object? password = null,
    Object? passwordText = null,
    Object? admin = null,
    Object? isAdmin = null,
    Object? isActive = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? branch = freezed,
  }) {
    return _then(_$UserDetailsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      passwordText: null == passwordText
          ? _value.passwordText
          : passwordText // ignore: cast_nullable_to_non_nullable
              as String,
      admin: null == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as int,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      branch: freezed == branch
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserDetailsImpl implements _UserDetails {
  const _$UserDetailsImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "last_login") required this.lastLogin,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "phone") required this.phone,
      @JsonKey(name: "address") required this.address,
      @JsonKey(name: "mail") required this.mail,
      @JsonKey(name: "username") required this.username,
      @JsonKey(name: "password") required this.password,
      @JsonKey(name: "password_text") required this.passwordText,
      @JsonKey(name: "admin") required this.admin,
      @JsonKey(name: "is_admin") required this.isAdmin,
      @JsonKey(name: "is_active") required this.isActive,
      @JsonKey(name: "created_at") required this.createdAt,
      @JsonKey(name: "updated_at") required this.updatedAt,
      @JsonKey(name: "branch") required this.branch});

  factory _$UserDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDetailsImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "last_login")
  final dynamic lastLogin;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "phone")
  final String phone;
  @override
  @JsonKey(name: "address")
  final String address;
  @override
  @JsonKey(name: "mail")
  final String mail;
  @override
  @JsonKey(name: "username")
  final String username;
  @override
  @JsonKey(name: "password")
  final String password;
  @override
  @JsonKey(name: "password_text")
  final String passwordText;
  @override
  @JsonKey(name: "admin")
  final int admin;
  @override
  @JsonKey(name: "is_admin")
  final bool isAdmin;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;
  @override
  @JsonKey(name: "created_at")
  final DateTime createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "branch")
  final dynamic branch;

  @override
  String toString() {
    return 'UserDetails(id: $id, lastLogin: $lastLogin, name: $name, phone: $phone, address: $address, mail: $mail, username: $username, password: $password, passwordText: $passwordText, admin: $admin, isAdmin: $isAdmin, isActive: $isActive, createdAt: $createdAt, updatedAt: $updatedAt, branch: $branch)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.lastLogin, lastLogin) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.passwordText, passwordText) ||
                other.passwordText == passwordText) &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.branch, branch));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(lastLogin),
      name,
      phone,
      address,
      mail,
      username,
      password,
      passwordText,
      admin,
      isAdmin,
      isActive,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(branch));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDetailsImplCopyWith<_$UserDetailsImpl> get copyWith =>
      __$$UserDetailsImplCopyWithImpl<_$UserDetailsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDetailsImplToJson(
      this,
    );
  }
}

abstract class _UserDetails implements UserDetails {
  const factory _UserDetails(
          {@JsonKey(name: "id") required final int id,
          @JsonKey(name: "last_login") required final dynamic lastLogin,
          @JsonKey(name: "name") required final String name,
          @JsonKey(name: "phone") required final String phone,
          @JsonKey(name: "address") required final String address,
          @JsonKey(name: "mail") required final String mail,
          @JsonKey(name: "username") required final String username,
          @JsonKey(name: "password") required final String password,
          @JsonKey(name: "password_text") required final String passwordText,
          @JsonKey(name: "admin") required final int admin,
          @JsonKey(name: "is_admin") required final bool isAdmin,
          @JsonKey(name: "is_active") required final bool isActive,
          @JsonKey(name: "created_at") required final DateTime createdAt,
          @JsonKey(name: "updated_at") required final DateTime updatedAt,
          @JsonKey(name: "branch") required final dynamic branch}) =
      _$UserDetailsImpl;

  factory _UserDetails.fromJson(Map<String, dynamic> json) =
      _$UserDetailsImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "last_login")
  dynamic get lastLogin;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "phone")
  String get phone;
  @override
  @JsonKey(name: "address")
  String get address;
  @override
  @JsonKey(name: "mail")
  String get mail;
  @override
  @JsonKey(name: "username")
  String get username;
  @override
  @JsonKey(name: "password")
  String get password;
  @override
  @JsonKey(name: "password_text")
  String get passwordText;
  @override
  @JsonKey(name: "admin")
  int get admin;
  @override
  @JsonKey(name: "is_admin")
  bool get isAdmin;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(name: "created_at")
  DateTime get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "branch")
  dynamic get branch;
  @override
  @JsonKey(ignore: true)
  _$$UserDetailsImplCopyWith<_$UserDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
