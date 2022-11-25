import 'dart:ffi';

class CarEntity {
  late int id;
  final double car_cost;
  final String car_year;
  final int car_mark_id;
  final int car_carcass_id;
  final int car_color_id;

  CarEntity(
      {required this.car_cost,
      required this.car_year,
      required this.car_mark_id,
      required this.car_carcass_id,
      required this.car_color_id});
}

//enum CarEnum{CarBMW, CarMercedez, CarMitsubishi, CarSubaru}