import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../Provider/UserProvider.dart';
import '../widget/CustomWidget.dart';
import 'Login.dart';
class SignupPage extends StatelessWidget {

  final FormKey= GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController phon = TextEditingController();
  TextEditingController name = TextEditingController();

   SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Provideruser>(context);
    return  Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
        centerTitle: true,
      ),
      body: Form(
          key: FormKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Customwidget(label: 'email', txt: email),
              Customwidget(label: 'password', txt: Password),
              Customwidget(label: 'phone', txt: phon),
              Customwidget(label: 'name', txt: name),


              MaterialButton(onPressed: ()async{

                  if(FormKey.currentState!.validate())
                    {
                      await provider.postuserSignup(email: email.text, password: Password.text,phone: phon.text,name: name.text);
                      if(provider.status==true)
                        {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    }
                }
              },
                child: Text('Signup'),
              ),

              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
                child: Text('Have Acount'),
              )
            ],

          ),

      ),

    );
  }
}
