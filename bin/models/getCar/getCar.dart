import 'package:freezed_annotation/freezed_annotation.dart';

import '../car/car.dart';

part 'getCar.freezed.dart';
part 'getCar.g.dart';

@freezed
class GetCar with _$GetCar {
  factory GetCar({
    @Default([]) List<Car> cars,
  }) = _GetCar;

  factory GetCar.fromJson(Map<String, dynamic> json) => _$GetCarFromJson(json);
}
