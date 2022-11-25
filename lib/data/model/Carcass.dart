import 'package:pr2/domain/entity/Carcass_entity.dart';

class KPPType extends KPPTypeEntity {
  late int id;
  final String name_carcass;

  KPPType({required this.name_carcass}) : super(name_carcass: name_carcass);

  Map<String, dynamic> toMap() {
    return {'name_carcass': name_carcass};
  }

  factory KPPType.toFromMap(Map<String, dynamic> json) {
    return KPPType(name_carcass: json['name_carcass']);
  }
}
