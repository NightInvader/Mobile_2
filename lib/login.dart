import 'package:flutter/material.dart';
import 'package:tugas_2/home_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  String username = "";
  String password = "";
  bool Login = false;

  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Column(
          children: [
            _usernameField(),
            _passwordField(),
            _loginButton(context),
          ],
        ),
      ),
    );
  }
  Widget _usernameField(){
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: TextFormField(
        onChanged: (value){
          username = value;
        },
        enabled: true,
        decoration: const InputDecoration(
          hintText: 'Username',
          contentPadding: EdgeInsets.all(8),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Colors.red,
            )
          )
        ),
      ),
    );
  }

  Widget _passwordField(){
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: TextFormField(
        onChanged: (value){
          username = value;
        },
        obscureText: true,
        enabled: true,
        decoration: const InputDecoration(
            hintText: 'Username',
            contentPadding: EdgeInsets.all(8),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                borderSide: BorderSide(
                  color: Colors.red,
                )
            )
        ),
      ),
    );
  }
  Widget _loginButton(BuildContext context){
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10
      ) ,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: (Login) ? Colors.green : Colors.red
        ),
        child: Text("Login"),
        onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
          return HomeScreen(Username: username, Password: password,);
        }));
        },
      ),
    );
  }
}
