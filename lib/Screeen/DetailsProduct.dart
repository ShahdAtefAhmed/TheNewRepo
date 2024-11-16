import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/ProductProvider.dart';
class page extends StatelessWidget {
  final index;
  const page({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('details Product'),
        centerTitle: true,
      ),
      body:Consumer<Productprovider>(builder: (context,value,child){
        return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(value.objProduct?.products[index]['image']),
          Text("${value.objProduct?.products[index]['name']}"),
          Text("${value.objProduct?.products[index]['price']}"),
          Text("${value.objProduct?.products[index]['description']}"),
        ],
        ),
        );
      }),


    );
  }
}
