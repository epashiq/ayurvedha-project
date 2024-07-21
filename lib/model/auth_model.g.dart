// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthModelImpl _$$AuthModelImplFromJson(Map<String, dynamic> json) =>
    _$AuthModelImpl(
      status: json['status'] as bool,
      message: json['message'] as String,
      token: json['token'] as String,
      isSuperuser: json['is_superuser'] as bool,
      userDetails:
          UserDetails.fromJson(json['user_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthModelImplToJson(_$AuthModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'token': instance.token,
      'is_superuser': instance.isSuperuser,
      'user_details': instance.userDetails,
    };

_$UserDetailsImpl _$$UserDetailsImplFromJson(Map<String, dynamic> json) =>
    _$UserDetailsImpl(
      id: (json['id'] as num).toInt(),
      lastLogin: json['last_login'],
      name: json['name'] as String,
      phone: json['phone'] as String,
      address: json['address'] as String,
      mail: json['mail'] as String,
      username: json['username'] as String,
      password: json['password'] as String,
      passwordText: json['password_text'] as String,
      admin: (json['admin'] as num).toInt(),
      isAdmin: json['is_admin'] as bool,
      isActive: json['is_active'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      branch: json['branch'],
    );

Map<String, dynamic> _$$UserDetailsImplToJson(_$UserDetailsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'last_login': instance.lastLogin,
      'name': instance.name,
      'phone': instance.phone,
      'address': instance.address,
      'mail': instance.mail,
      'username': instance.username,
      'password': instance.password,
      'password_text': instance.passwordText,
      'admin': instance.admin,
      'is_admin': instance.isAdmin,
      'is_active': instance.isActive,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'branch': instance.branch,
    };
