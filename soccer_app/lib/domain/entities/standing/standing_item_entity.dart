import 'package:meta/meta.dart';

import 'team_matches_entity.dart';

class StandingItemEntity {
  final int rank;
  final int teamId;
  final String teamName;
  final String logoUrl;
  final String group;
  final String forme;
  final String status;
  final String description;
  final TeamMatchesEntity all;
  final TeamMatchesEntity home;
  final TeamMatchesEntity away;

  StandingItemEntity({
    @required this.rank,
    @required this.teamId,
    @required this.teamName,
    @required this.logoUrl,
    @required this.group,
    @required this.forme,
    @required this.status,
    @required this.description,
    @required this.all,
    @required this.home,
    @required this.away,
  });
}
