import 'package:dio/dio.dart';

import '../Model/ProductModel.dart';

class Servicesproduct {
  static Dio dio = Dio();

  static Future<Productmodel> GetAllProducts() async {
    try {
      var url = ('https://student.valuxapps.com/api/home');
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        return Productmodel.fromjson(response.data);
      } else {
        throw Exception('HTTP Error: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      rethrow;
    }
  }
}