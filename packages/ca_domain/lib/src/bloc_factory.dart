import 'package:ca_data/ca_data.dart';
import 'package:get_it/get_it.dart';

import 'main_bloc.dart';

class BlocFactory {
  static final _getIt = GetIt.I;

  T get<T extends Object>() => _getIt.get<T>();

  static final instance = BlocFactory();

  void initialize() {
    ServiceProvider.instance.initialize();
    _getIt.registerFactory<MainBloc>(
      () => MainBloc(
        healthService: ServiceProvider.instance.get<HealthService>(),
      ),
    );
  }
}
