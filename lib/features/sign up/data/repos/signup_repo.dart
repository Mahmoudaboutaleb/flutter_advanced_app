import 'package:flutter_advanced_app/core/networking/api_error_handler.dart';
import 'package:flutter_advanced_app/core/networking/api_result.dart';
import 'package:flutter_advanced_app/core/networking/api_service.dart';
import 'package:flutter_advanced_app/features/sign%20up/data/models/signup_request_body.dart';
import 'package:flutter_advanced_app/features/sign%20up/data/models/signup_response.dart';

class SignupRepo {
  final ApiService _apiService;
  SignupRepo(this._apiService);
  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBosy) async {
    try {
      final response = await _apiService.signup(signupRequestBosy.toJson());
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
