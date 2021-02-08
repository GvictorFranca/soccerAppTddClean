import 'package:meta/meta.dart';
import 'package:soccer_app/data/http/http.dart';
import 'package:soccer_app/data/models/standing/standing_team_matches_model.dart';
import 'package:soccer_app/domain/entities/entities.dart';

class StandingItemModel {
  final int rank;
  final int teamId;
  final String teamName;
  final String logoUrl;
  final String group;
  final String forme;
  final String status;
  final String description;
  final List<StandingTeamMatchesModel> all;
  final List<StandingTeamMatchesModel> home;
  final List<StandingTeamMatchesModel> away;

  StandingItemModel({
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

  factory StandingItemModel.fromJson(Map json) {
    if (!json.keys.toSet().containsAll([
      'rank',
      'teamId',
      'teamName',
      'logoUrl',
      'group',
      'forme',
      'description',
      'all',
      'home',
      'away',
    ])) {
      throw HttpError.invalidData;
    }
    return StandingItemModel(
      rank: json['rank'],
      teamId: json['team_id'],
      teamName: json['teamName'],
      logoUrl: json['logo'],
      group: json['group'],
      forme: json['forme'],
      description: json['description'],
      all: json['all']
          .map<StandingTeamMatchesModel>(
              (answerJson) => StandingTeamMatchesModel.fromJson(answerJson))
          .tolist(),
      home: json['home']
          .map<StandingTeamMatchesModel>(
              (answerJson) => StandingTeamMatchesModel.fromJson(answerJson))
          .tolist(),
      away: json['away']
          .map<StandingTeamMatchesModel>(
              (answerJson) => StandingTeamMatchesModel.fromJson(answerJson))
          .tolist(),
    );
  }

  StandingItemEntity toEntity() => StandingItemEntity(
        rank: rank,
        teamId: teamId,
        teamName: teamName,
        logoUrl: logoUrl,
        group: group,
        forme: forme,
        description: description,
        all: all.map<TeamMatchesEntity>((all) => all.toEntity()).toList(),
        home: home.map<TeamMatchesEntity>((home) => home.toEntity()).toList(),
        away: away.map<TeamMatchesEntity>((away) => away.toEntity()).toList(),
      );
}
