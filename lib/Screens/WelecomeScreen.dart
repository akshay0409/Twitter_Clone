import 'package:flutter/material.dart';
import 'package:twitter_clone/Constants/Constants.dart';
import 'LoginScreen.dart';
import 'RegistrationScreen.dart';

class WelecomeScreen extends StatefulWidget {
  const WelecomeScreen({Key? key}) : super(key: key);

  @override
  State<WelecomeScreen> createState() => _WelecomeScreenState();
}

class _WelecomeScreenState extends State<WelecomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                  ),
                  Image.asset(
                    'assets/logo.png',
                    height: 200,
                    width: 200,
                  ),
                  const Text(
                    'See Whats Happing in the world',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 5,
                      primary: KTweeterColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: const Text(
                      'LOG IN',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: KTweeterColor,
                      elevation: 5,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    child: Text(
                      'Create account',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RegistrationScreen()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
