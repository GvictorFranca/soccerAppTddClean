import 'package:meta/meta.dart';

import 'standing_team_matches_entity.dart';

class StandingItemEntity {
  final int rank;
  final int teamId;
  final String teamName;
  final String logoUrl;
  final String group;
  final String forme;
  final String status;
  final String description;
  final List<TeamMatchesEntity> all;
  final List<TeamMatchesEntity> home;
  final List<TeamMatchesEntity> away;

  StandingItemEntity({
    @required this.rank,
    @required this.teamId,
    @required this.teamName,
    @required this.logoUrl,
    @required this.group,
    @required this.forme,
    this.status,
    @required this.description,
    @required this.all,
    @required this.home,
    @required this.away,
  });
}
