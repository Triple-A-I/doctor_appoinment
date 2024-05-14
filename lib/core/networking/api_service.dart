import 'package:dio/dio.dart';
import 'package:doctor_appoinment/features/login/data/models/login_request_body.dart';
import 'package:doctor_appoinment/features/login/data/models/login_response.dart';
import 'package:doctor_appoinment/features/signup/data/models/signup_request_body.dart';
import 'package:doctor_appoinment/features/signup/data/models/signup_response.dart';
import 'package:retrofit/retrofit.dart';

import 'api_constants.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequestBody loginRequestBody,
  );
  @POST(ApiConstants.signup)
  Future<SignupResponse> signup(
    @Body() SignupRequestBody signupRequestBody,
  );
}
