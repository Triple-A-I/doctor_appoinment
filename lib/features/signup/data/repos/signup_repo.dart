import 'package:doctor_appoinment/core/networking/api_error_handler.dart';
import 'package:doctor_appoinment/core/networking/api_result.dart';
import 'package:doctor_appoinment/core/networking/api_service.dart';
import 'package:doctor_appoinment/features/signup/data/models/signup_request_body.dart';

import '../models/signup_response.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(
      SignupRequestBody signupRequestBody) async {
    try {
      final response = await _apiService.signup(signupRequestBody);
      return ApiResult.success(response);
    } catch (errro) {
      return ApiResult.failure(ErrorHandler.handle(errro));
    }
  }
}
