import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:t2208a_flutter/bloc/bloc.dart';
import 'package:t2208a_flutter/my_page.dart';
import 'package:t2208a_flutter/screens/login_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider( // create global state
        create: (_)=> Bloc(),
        child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}