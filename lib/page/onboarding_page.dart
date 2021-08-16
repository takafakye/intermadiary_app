import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding_screen_example/widget/button_widget.dart';
import 'package:onboarding_screen_example/screen/login_signup.dart';

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
            pages: [
              PageViewModel(
                title: 'Welcome to intermediary',
                body:
                    'Our Goal is to provide a platform \n to connect  Businesses, Service \n providers and  Shop owners to clients.',
                image: buildImage('assets/one.png'),
                decoration: getPageDecoration(),
              ),
              PageViewModel(
                title: 'REGISTER',
                body:
                    'Register as a  Business/Company owner,  client/user \n or a Service provider',
                image: buildImage('assets/register.png'),
                decoration: getPageDecoration(),
              ),
              PageViewModel(
                title: 'BUSINESS/COMPANY OWNER',
                body:
                    'Register your company alongside \n the services you provide and \n details(Address Description etc)',
                image: buildImage('assets/manthumbs.png'),
                decoration: getPageDecoration(),
              ),
              PageViewModel(
                title: 'CLIENT',
                body:
                    'Sign up as a mere user, \n browse through businesses \n and products, order and buy',
                footer: ButtonWidget(
                  text: "Let's shop",
                  onClicked: () => LoginSignupScreen2(context),
                ),
                image: buildImage('assets/preview.jpg'),
                decoration: getPageDecoration(),
              ),
            ],
            done: Text("Let's shop",
                style: TextStyle(fontWeight: FontWeight.w600)),
            onDone: () => LoginSignupScreen2(context),
            showSkipButton: true,
            skip: Text('Skip'),
            onSkip: () => LoginSignupScreen2(context),
            next: Icon(Icons.arrow_forward),
            dotsDecorator: getDotDecoration(

                //isProgressTap: false,
                //isProgress: false,
                // showNextButton: false,
                // freeze: true,
                //animationDuration: 1000,
                )),
      );

  // ignore: non_constant_identifier_names
  void LoginSignupScreen2(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => LoginSignupScreen()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 350));

  DotsDecorator getDotDecoration() => DotsDecorator(
      //       color: Colors.grey,
      //       //activeColor: Colors.orange,
      //       size: Size(10, 10),
      //       activeSize: Size(22, 10),
      //       activeShape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(24),
      //       ),
      );

  PageDecoration getPageDecoration() => PageDecoration(
        boxDecoration: BoxDecoration(
          // Box decoration takes a gradient
          gradient: LinearGradient(
            // Where the linear gradient begins and ends
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            //Add one stop for each color. Stops should increase from 0 to 1
            stops: [0.1, 0.5, 0.7, 0.9],
            // begin: Alignment.bottomLeft,
            //                 end: Alignment.topRight,
            //                 colors: [Colors.red, Colors.yellow, Colors.blue, Colors.purple]
            colors: [
              // Colors are easy thanks to Flutter's Colors class.
              Colors.white,
              Colors.white,
              Colors.green[400],
              Colors.green[700],
            ],
          ),
        ),
        titleTextStyle: TextStyle(
            fontSize: 28, fontWeight: FontWeight.bold, fontFamily: 'Kaushan'),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        //pageColor: Colors.lightGreenAccent[400],
      );
}
