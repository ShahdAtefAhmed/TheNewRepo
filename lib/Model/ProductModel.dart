class Productmodel
{
  List<dynamic>products;
  Productmodel({required this.products});
  factory Productmodel.fromjson(Map<String,dynamic>json)
  {
    return Productmodel(products:json['data']['products']);
  }

}


