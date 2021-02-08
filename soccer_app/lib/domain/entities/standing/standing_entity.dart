import 'package:meta/meta.dart';

import 'standing_item_entity.dart';

class StandingEntity {
  final List<StandingItemEntity> standingItemTeam;

  StandingEntity({
    @required this.standingItemTeam,
  });
}
