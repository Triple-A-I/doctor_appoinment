import 'package:bloc/bloc.dart';
import '../../data/repos/home_repo.dart';

import 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;

  HomeCubit(this._homeRepo) : super(HomeState.initial());

  void getSpecializations() async {
    emit(HomeState.specializationsLoading());

    final reponse = await _homeRepo.getSpecialization();
    reponse.when(success: (specializationsResponseModel) {
      emit(HomeState.specializationsSuccess(specializationsResponseModel));
    }, failure: (errorHandler) {
      emit(HomeState.specializationsError(errorHandler));
    });
  }
}
