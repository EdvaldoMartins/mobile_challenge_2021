import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:mobile_challenge_2021/application/patient/patients_view_model.dart';
import 'package:mobile_challenge_2021/domain/core/i_navigation_service.dart';
import 'package:mobile_challenge_2021/domain/patient/i_patient_repository.dart';
import 'package:mobile_challenge_2021/domain/patient/i_patient_service.dart';
import 'package:mobile_challenge_2021/infrastructure/core/navigation_service.dart';
import 'package:mobile_challenge_2021/infrastructure/patient/patient_repository.dart';
import 'package:mobile_challenge_2021/infrastructure/patient/patient_service.dart';
import 'package:mobile_challenge_2021/injection/register_module.dart';

final _injector = GetIt.instance;

class InjectorConfig {
  final Dio _dio;

  InjectorConfig._(this._dio) {
    registerRepositories();
    registerServices();
    registerViewModels();
  }

  factory InjectorConfig.init(Dio dio) => InjectorConfig._(dio);

  static GetIt getInstance() => _injector;

  void registerServices() {
    final registerModule = InjectorModule();

    _injector.registerLazySingleton<INavigationService>(
        () => NavigationService(registerModule.key));

    _injector.registerFactory<IPatientService>(
        () => PatientService(_injector.get<IPatientRepository>()));
  }

  void registerViewModels() {
    _injector.registerFactory(
        () => PatientsViewModel(_injector.get<IPatientService>()));
  }

  void registerRepositories() {
    _injector
        .registerFactory<IPatientRepository>(() => PatientRepository(_dio));
  }
}

class InjectorModule extends RegisterModule {}
