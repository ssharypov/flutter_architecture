import 'dart:async';

import 'package:ca_data/ca_data.dart';

class MainBloc {
  final HealthService healthService;
  final StreamController<bool> _eventController = StreamController();

  MainBloc({
    required this.healthService,
  });

  void fetchState(bool event) {
    if (_eventController.isClosed) return;
    _eventController.add(event);
  }

  void dispose() {
    _eventController.close();
  }
}
