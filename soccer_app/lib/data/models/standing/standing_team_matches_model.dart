import 'package:meta/meta.dart';
import 'package:soccer_app/data/http/http.dart';
import 'package:soccer_app/domain/entities/entities.dart';

class StandingTeamMatchesModel {
  final int matchsPlayed;
  final int win;
  final int draw;
  final int lose;
  final int goalsFor;
  final int goalsAgainst;

  StandingTeamMatchesModel({
    @required this.matchsPlayed,
    @required this.win,
    @required this.draw,
    @required this.lose,
    @required this.goalsFor,
    @required this.goalsAgainst,
  });

  factory StandingTeamMatchesModel.fromJson(Map json) {
    if (!json.keys.toSet().containsAll([
      'matchsPlayed',
      'win',
      'draw',
      'lose',
      'goalsFor',
      'goalsAgainst',
    ])) {
      throw HttpError.invalidData;
    }
    return StandingTeamMatchesModel(
      matchsPlayed: json['image'],
      win: json['win'],
      draw: json['draw'],
      lose: json['lose'],
      goalsFor: json['goalsFor'],
      goalsAgainst: json['goalsAgainst'],
    );
  }

  // ignore: missing_required_param
  TeamMatchesEntity toEntity() => TeamMatchesEntity(
        matchsPlayed: matchsPlayed,
        win: win,
        draw: draw,
        lose: lose,
        goalsFor: goalsFor,
        goalsAgainst: goalsAgainst,
      );
}
