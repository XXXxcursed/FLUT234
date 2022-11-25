class UserInfoEntity {
  late int id;
  final String kolichestvo;
  final int id_kod_korzini;
  final int id_kod_auto;

  UserInfoEntity(
      {required this.kolichestvo,
      required this.id_kod_korzini,
      required this.id_kod_auto});
}

// enum UsersInfoEnum{userInfo_user}