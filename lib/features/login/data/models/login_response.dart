// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  String? message;
  @JsonKey(name: "data")
  UserData? userData;
  bool? status;
  int? code;
  LoginResponse({
    this.message,
    this.userData,
    this.status,
    this.code,
  });
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@JsonSerializable()
class UserData {
  String? tokken;
  @JsonKey(name: "username")
  String? userName;
  UserData({
    this.tokken,
    this.userName,
  });
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
