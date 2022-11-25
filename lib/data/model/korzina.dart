import 'package:pr2/domain/entity/korzine_entity.dart';

class Engine extends EngineEntity {
  late int id;
  final String summa_v_korzine;
  final int id_user;

  Engine({required this.summa_v_korzine, required this.id_user})
      : super(summa_v_korzine: summa_v_korzine, id_user: id_user);

  Map<String, dynamic> toMap() {
    return {'summa_v_korzine': summa_v_korzine, 'id_user': id_user};
  }

  factory Engine.toFromMap(Map<String, dynamic> json) {
    return Engine(
        summa_v_korzine: json['summa_v_korzine'], id_user: json['id_user']);
  }
}
