import 'package:ca_data/src/services.dart';

class DummyService implements HealthService {
  @override
  String getHealth() {
    return "It's OK! ;)";
  }
}
