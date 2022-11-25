import 'package:pr2/domain/entity/car_entity.dart';

class Car extends CarEntity {
  late int id;
  final double car_cost;
  final String car_year;
  final int car_mark_id;
  final int car_carcass_id;
  final int car_color_id;

  Car(
      {required this.car_cost,
      required this.car_year,
      required this.car_mark_id,
      required this.car_carcass_id,
      required this.car_color_id})
      : super(
            car_cost: car_cost,
            car_year: car_year,
            car_mark_id: car_mark_id,
            car_carcass_id: car_carcass_id,
            car_color_id: car_color_id);

  Map<String, dynamic> toMap() {
    return {
      'car_cost': car_cost,
      'car_year': car_year,
      'car_mark_id': car_mark_id,
      'car_carcass_id': car_carcass_id,
      'car_color_id': car_color_id
    };
  }

  factory Car.toFromMap(Map<String, dynamic> json) {
    return Car(
        car_cost: json['car_cost'],
        car_year: json['car_year'],
        car_mark_id: json['car_mark_id'],
        car_carcass_id: json['car_carcass_id'],
        car_color_id: json['car_color_id']);
  }
}
