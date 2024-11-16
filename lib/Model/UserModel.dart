class Usermodel
{
  bool status;
  Usermodel({required this.status});
  factory Usermodel.fromjson(Map<String,dynamic>json)
  {
    return Usermodel(status:json['status']);
  }
}