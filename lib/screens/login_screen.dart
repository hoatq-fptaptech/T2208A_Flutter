import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String _username;
  late String _password;

  void _login() {
    // if (_username != null && _password != null) {
      // Kiểm tra đăng nhập tại đây
      // if (_username == 'user' && _password == 'password') {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      // } else {
      //   ScaffoldMessenger.of(context).showSnackBar(
      //     SnackBar(content: Text('Sai tài khoản hoặc mật khẩu')),
      //   );
      // }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Đăng nhập')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: _login,
          child: Text('Đăng nhập'),
        ),
      ),
    );
  }
}
