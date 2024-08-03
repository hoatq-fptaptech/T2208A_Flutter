import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t2208a_flutter/bloc/bloc.dart';
import 'package:t2208a_flutter/model/login_data.dart';
import 'package:t2208a_flutter/my_page.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  _StateLogin createState()=> _StateLogin();
}
class _StateLogin extends State<LoginScreen>{

   final emailController = TextEditingController();
   final passwordController = TextEditingController();
   @override
   void dispose() {
     // Clean up the controller when the widget is disposed.
     emailController.dispose();
     passwordController.dispose();
     super.dispose();
   }

    _login() async{
        print(emailController.text);
        print(passwordController.text);
        const url = "http://localhost:8080/auth/login";
        // final Map<String,dynamic> data = new Map({
        //   "email": emailController.text,
        //   "password": passwordController.text
        // });
        Response rs = await Dio().post(url,data:{
                                'email': emailController.text,
                                'password': passwordController.text
                                }
                                // ,
                  // options: Options(
                  //   headers: {
                  //     'Content-Type':"application/json",
                  //     "Authorization": "Bearer your_jwt_token"
                  //   }
                  // )
            );
       // print(rs.data);
        LoginData lg = LoginData.fromJson(rs.data);
        print(lg.token);
        Bloc bloc = Provider.of<Bloc>(context,listen: false);
        bloc.loadToken(lg.token);

        // navigate to HomeScreen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MyPage()
          )
        );
    }
   @override
  Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
              title: const Text("T2208A Flutter Demo",style: TextStyle(color: Colors.white)),
              backgroundColor: Colors.orange, // Color.fromRGBO()
          ),
          body:Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter your email',
                    )
                  ),
                  TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                        labelText: 'Enter password',
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.all(20),
                      child: FloatingActionButton(
                        onPressed: _login,
                        child: Text("Login"),
                      ),
                  )
              ],
              ),
          )
      );
  }
}