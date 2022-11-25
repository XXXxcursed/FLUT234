import 'package:pr2/domain/entity/AvtVKorz_entity.dart';

class UserInfo extends UserInfoEntity {
  late int id;
  final String kolichestvo;
  final int id_kod_korzini;
  final int id_kod_auto;

  UserInfo(
      {required this.kolichestvo,
      required this.id_kod_korzini,
      required this.id_kod_auto})
      : super(
            kolichestvo: kolichestvo,
            id_kod_korzini: id_kod_korzini,
            id_kod_auto: id_kod_auto);

  Map<String, dynamic> toMap() {
    return {
      'kolichestvo': kolichestvo,
      'id_kod_korzini': id_kod_korzini,
      'id_kod_auto': id_kod_auto
    };
  }

  factory UserInfo.toFromMap(Map<String, dynamic> json) {
    return UserInfo(
        kolichestvo: json['kolichestvo'],
        id_kod_korzini: json['id_kod_korzini'],
        id_kod_auto: json['id_kod_auto']);
  }
}
