import 'package:amazon_clone/pages/amazon_page.dart';
import 'package:amazon_clone/pages/signin_page.dart';
import 'package:amazon_clone/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:AmazonPage(),
      routes: {
        SignInPage.id: (context) => SignInPage(),
        AmazonPage.id: (context) => AmazonPage(),
        SignUpPage.id: (context) => SignUpPage(),
      },
    );
  }
}

