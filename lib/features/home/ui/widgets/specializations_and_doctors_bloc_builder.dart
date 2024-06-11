import '../../../../core/networking/api_error_handler.dart';
import '../../data/models/specializations_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import 'doctors_listview.dart';
import 'doctors_speciality_listview.dart';

class SpecilaizationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SpecilaizationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsError ||
          current is SpecializationsLoading ||
          current is SpecializationsSuccess,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () {
            return setupLoading();
          },
          specializationsSuccess: (specializationsResponseModel) {
            var specializationsList =
                specializationsResponseModel.specializationDataList;
            return setupSuccess(specializationsList);
          },
          specializationsError: (errorHandler) {
            return setupError(errorHandler);
          },
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Center setupError(ErrorHandler errorHandler) {
    return Center(
      child: Container(
        child: Text(errorHandler.apiErrorModel.message ?? ""),
      ),
    );
  }

  Expanded setupSuccess(List<SpecializationsData?>? specializationsList) {
    return Expanded(
      child: Column(
        children: [
          DoctorsSpecialityListView(
            specializationsData: specializationsList ?? [],
          ),
          DoctorsListView(
            doctorsModel: specializationsList?[0]?.doctorsList,
          ),
        ],
      ),
    );
  }

  SizedBox setupLoading() {
    return const SizedBox(
      height: 100,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
