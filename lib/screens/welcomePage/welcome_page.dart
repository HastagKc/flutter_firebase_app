import 'package:firebase_app/commonWidgets/my_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 29, 126, 206),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/welcomeWal.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //! creating top part
              const TopPart(),
              const SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  //! login and signUp part
                  MyButton(
                    onPressed: () {
                      print('clicked');
                    },
                    btnText: 'Sign In',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      print('clicked sign up');
                    },
                    child: const Text(
                      'Sign up',
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.red,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
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

// creating top part
class TopPart extends StatelessWidget {
  const TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Welcome to ',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Healthly Food Cafe ',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
