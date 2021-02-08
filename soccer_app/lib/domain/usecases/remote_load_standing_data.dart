import 'package:soccer_app/domain/entities/standing/standing_entity.dart';

abstract class RemoteLoadStandingData {
  Future<StandingEntity> load();
}
