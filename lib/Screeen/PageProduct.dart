import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/ProductProvider.dart';
import 'DetailsProduct.dart';
class Pageproduct extends StatelessWidget {
  const Pageproduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
        centerTitle: true,
      ),
      body: Consumer<Productprovider>(builder: (context,provider,child)
      {

        if(provider.objProduct==null)
          {
            provider.GetProduct();
            Center(
              child: CircularProgressIndicator(),
            );
          }
        return GridView.builder(
          itemCount: provider.objProduct?.products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2

          ),
          itemBuilder: (context,index)
          {
            return GestureDetector(
              onTap:()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>page(index:index)));
                  },
                  child:SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(provider.objProduct?.products[index]['image'],height: 90,),
                        Text("${provider.objProduct?.products[index]['name']}"),
                        Text("${provider.objProduct?.products[index]['price']}"),

                      ],
                    ),
                  )

            );

          },
        );





      }),



    );
  }
}
