import 'package:dio/dio.dart';
import 'package:flutter_advanced_app/core/networking/api_constants.dart';
import 'package:flutter_advanced_app/features/login/data/models/login_response.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() Map<String, dynamic> body,
  );
}
