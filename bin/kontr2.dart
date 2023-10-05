import 'package:dio/dio.dart';
import 'package:kontr2/kontr2.dart' as kontr2;

import 'models/getCar/getCar.dart';

void main(List<String> arguments) async {
  Dio httpClient = Dio();
  String url = 'https://myfakeapi.com/api/cars/';
  var response = await httpClient.get(url);

  GetCar all = GetCar.fromJson(response.data);
  double minPrice = double.infinity;
  int idMin = 0;
  for (dynamic el in all.cars) {
    String subStr = el.price;
    subStr = subStr.substring(
      1,
    );
    double curPrice = double.parse(subStr);
    if (curPrice < minPrice) {
      minPrice = curPrice;
      idMin = el.id;
    }
  }
  print(idMin);
}
