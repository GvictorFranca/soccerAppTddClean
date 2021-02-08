import 'package:meta/meta.dart';

class TeamMatchesEntity {
  final int matchsPlayed;
  final int win;
  final int draw;
  final int lose;
  final int goalsFor;
  final int goalsAgainst;

  TeamMatchesEntity({
    @required this.matchsPlayed,
    @required this.win,
    @required this.draw,
    @required this.lose,
    @required this.goalsFor,
    @required this.goalsAgainst,
  });
}
