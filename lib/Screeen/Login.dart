import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:thenewprojectassignment/Screeen/Signup.dart';

import '../Provider/UserProvider.dart';
import '../widget/CustomWidget.dart';
import 'PageProduct.dart';
class LoginPage extends StatelessWidget {
  final FormKey= GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController Password = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Provideruser>(context);
    return  Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
      body: Form(
        key: FormKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Customwidget(label: 'email', txt: email),
            Customwidget(label: 'password', txt: Password),

            MaterialButton(onPressed: ()async{

              if(FormKey.currentState!.validate()&&provider.status==true)
              {
                await provider.postuserSignup(email: email.text, password: Password.text,);

                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Pageproduct()));

              }
            },
              child: Text('login'),
            ),

            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
            },
              child: Text(' Dont have  Acount'),
            )
          ],

        ),

      ),

    );
  }
}
