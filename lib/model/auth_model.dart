// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'auth_model.freezed.dart';
part 'auth_model.g.dart';

AuthModel authModelFromJson(String str) => AuthModel.fromJson(json.decode(str));

String authModelToJson(AuthModel data) => json.encode(data.toJson());

@freezed
class AuthModel with _$AuthModel {
    const factory AuthModel({
        @JsonKey(name: "status")
        required bool status,
        @JsonKey(name: "message")
        required String message,
        @JsonKey(name: "token")
        required String token,
        @JsonKey(name: "is_superuser")
        required bool isSuperuser,
        @JsonKey(name: "user_details")
        required UserDetails userDetails,
    }) = _AuthModel;

    factory AuthModel.fromJson(Map<String, dynamic> json) => _$AuthModelFromJson(json);
}

@freezed
class UserDetails with _$UserDetails {
    const factory UserDetails({
        @JsonKey(name: "id")
        required int id,
        @JsonKey(name: "last_login")
        required dynamic lastLogin,
        @JsonKey(name: "name")
        required String name,
        @JsonKey(name: "phone")
        required String phone,
        @JsonKey(name: "address")
        required String address,
        @JsonKey(name: "mail")
        required String mail,
        @JsonKey(name: "username")
        required String username,
        @JsonKey(name: "password")
        required String password,
        @JsonKey(name: "password_text")
        required String passwordText,
        @JsonKey(name: "admin")
        required int admin,
        @JsonKey(name: "is_admin")
        required bool isAdmin,
        @JsonKey(name: "is_active")
        required bool isActive,
        @JsonKey(name: "created_at")
        required DateTime createdAt,
        @JsonKey(name: "updated_at")
        required DateTime updatedAt,
        @JsonKey(name: "branch")
        required dynamic branch,
    }) = _UserDetails;

    factory UserDetails.fromJson(Map<String, dynamic> json) => _$UserDetailsFromJson(json);
}
