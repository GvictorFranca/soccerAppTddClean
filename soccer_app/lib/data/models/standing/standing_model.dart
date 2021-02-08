import 'package:meta/meta.dart';
import 'package:soccer_app/data/http/http.dart';
import 'package:soccer_app/data/models/standing/standing_item_model.dart';
import 'package:soccer_app/domain/entities/entities.dart';

class StandingModel {
  final List<StandingItemModel> standings;

  StandingModel({
    @required this.standings,
  });

  factory StandingModel.fromJson(Map json) {
    if (!json.keys.toSet().containsAll(
      ['standings'],
    )) {
      throw HttpError.invalidData;
    }
    return StandingModel(
      standings: json['standings']
          .map<StandingItemModel>(
              (standingJson) => StandingModel.fromJson(standingJson))
          .toList(),
    );
  }

  StandingEntity toEntity() => StandingEntity(
        standings: standings
            .map<StandingItemEntity>((standing) => standing.toEntity())
            .toList(),
      );
}
