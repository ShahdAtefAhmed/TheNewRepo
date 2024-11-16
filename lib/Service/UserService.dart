import 'package:dio/dio.dart';

import '../Model/UserModel.dart';

class Userservices
{
  static Dio dio=Dio();

  static signup({required email, required password, name, phone})async
  {
    var url= ('https://student.valuxapps.com/api/register');
    Response response = await dio.post(url,
        data:
        {
          'email':email,
          'password':password,
          'phone':phone,
          'name':name,
        });

    print(response.data);
    return Usermodel.fromjson(response.data);

  }


  static Future login({required email,password})async
  {
    var url=('https://student.valuxapps.com/api/login');
    Response response = await dio.post(url,
        data:
        {
          'email':email,
          'password':password,
        });
    if(response.statusCode==201)
    {
      return Usermodel.fromjson(response.data);
    }
    else
    {
      throw Exception('تأكد من جلب البياينات وادخالها');
    }
  }
}