import 'package:flutter/material.dart';
import 'package:thenewprojectassignment/Screeen/Signup.dart';
import 'Provider/ProductProvider.dart';
import 'package:provider/provider.dart';

import 'Provider/UserProvider.dart';
import 'Screeen/PageProduct.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>Productprovider(),),
        ChangeNotifierProvider(create: (context)=>Provideruser(),),
      ],
      child: MaterialApp(
        home: SignupPage(),
      ),
      );


  }
}
