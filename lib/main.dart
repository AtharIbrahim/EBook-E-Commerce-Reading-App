//
//
//
//            Develope By :) Athar Ibrahim Khalid
//
//            Published By :) Athar Ibrahim Khalid
//
//            See More Work On
//                -> Github: https://github.com/AtharIbrahim
//                -> Linkedin: https://www.linkedin.com/in/athar-ibrahim-khalid-0715172a2/
//                -> Dribbble: https://dribbble.com/AtharIbrahim
//
//  -This is the modern E-Book Ecommerce Earning App
//  -Concept is just like a simple
//
//  *Features :)
//              -Splash Screen
//              -On_Board Screens
//              -Sign Up & Sign In with Forgot Password (Also contain Success and Error Screens)
//              -Search Engine
//              -Show Case of books
//              -Detect Image Colors and set them on book_previews and so on to make it cool.
//              -Become Author
//              -Verify User Email & Phone #
//              -Edit Your Personal And Author Account
//              -Publish Books (After becoming author)
//              -Publish Author Histories (After becoming author)
//              -Check Purchase History
//              -Add Security
//              -Publisher Earning Methods (To sell coins, add ads, sell subscriptions)
//              -Buy and Read Books (After complete reading, earn coins, to purchase more books)
//              -Favorite Books (Show Case)
//              -Library Books (Show Case)
//              -Clean Code
//
//  *Concepts :)
//              -Clean Architecture.
//              -EveryThing is custom build.
//              -Use Routing for Nav.
//              -Detect Image Colors.
//
//

import 'package:e_book_ecommerce/routes/route_strings.dart';
import 'package:e_book_ecommerce/routes/routing.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Route Of Your Application
      onGenerateRoute: Routing().generateRoute,
      // Intial Route
      initialRoute: SplashScreenroute,
    );
  }
}
