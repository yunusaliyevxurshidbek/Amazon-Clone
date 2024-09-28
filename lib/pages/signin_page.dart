import 'package:amazon_clone/pages/amazon_page.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {

  static const String id = 'SignInPage';

  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

  _callAmazonPage(){
    Navigator.of(context).pushReplacementNamed(AmazonPage.id);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In Page'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Username',

              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Password',

              ),
            ),
          ),
          Container(
            height: 50,
            width: 120,
            color: Colors.lightBlue,

            child: MaterialButton(
              onPressed: (){
                
              },
              child: Text('Submit'),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: MaterialButton(
              onPressed: (){
                _callAmazonPage();

              },
              child: Text('Do not have an acount',
              style: TextStyle(color: Colors.lightBlue,fontSize: 12),),

            ),

          ),
        ],
      ),

    );
  }
}
