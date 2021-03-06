import 'package:flutter/material.dart';
import 'package:twitter_clone/Constants/Constants.dart';

import '../Services/TwitterModel.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String userName;
  TwitterModel twitterModel = TwitterModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KTweeterColor,
        elevation: 0,
        title: Text(
          'Log In',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Your Username',
              ),
              onChanged: (value) {
                userName = value;
              },
            ),
            SizedBox(
              height: 40,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: KTweeterColor,
                elevation: 5,
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              child: Text(
                'LOG IN',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              onPressed: () async {
                var userData = await twitterModel.getUserName(userName);
                var userId= userData["data"]["id"];
                print(userId);
                //   bool isValid = await AuthService.login(_email, _password);
                //   if (isValid) {
                //     Navigator.pop(context);
                //   } else {
                //     print('Login Problem');
                //   }
              },
            ),
          ],
        ),
      ),
    );
  }
}
