import 'package:dio/dio.dart';
import 'package:doctor_appoinment/core/networking/api_service.dart';
import 'package:doctor_appoinment/core/networking/dio_factory.dart';
import 'package:doctor_appoinment/features/login/data/repos/login_repo.dart';
import 'package:doctor_appoinment/features/login/logic/cubit/login_cubit.dart';
import 'package:doctor_appoinment/features/signup/data/repos/signup_repo.dart';
import 'package:doctor_appoinment/features/signup/logic/cubit/signup_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // signup
  getIt.registerLazySingleton<SignupRepo>(() => SignupRepo(getIt()));
  getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
}
