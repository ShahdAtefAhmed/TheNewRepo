import 'package:flutter/cupertino.dart';

import '../Model/ProductModel.dart';
import '../Service/ProductService.dart';

class Productprovider extends ChangeNotifier
{
  Productmodel? objProduct;

  Future GetProduct()async
  {

    objProduct=  await Servicesproduct.GetAllProducts();

    notifyListeners();
  }
}



