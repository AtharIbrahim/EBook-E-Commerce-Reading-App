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

import 'package:e_book_ecommerce/common/colors/app_colors.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/widgets/auth_button.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/widgets/auth_text_field.dart';
import 'package:e_book_ecommerce/routes/route_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotStartScreen extends StatefulWidget {
  const ForgotStartScreen({super.key});

  @override
  State<ForgotStartScreen> createState() => _ForgotStartScreenState();
}

class _ForgotStartScreenState extends State<ForgotStartScreen> {
  // Email TExt Controller
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Change the color of the mobile above appbar status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    // Return Layout
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // bg images
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/forgotbg.png',
              fit: BoxFit.cover,
            ),
          ),
          // Foreground content
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: AppColors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),

                  // Forgot Text
                  title: Text(
                    "Forgot Password",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),

          // Content padding to avoid overlapping with AppBar
          Padding(
            padding: const EdgeInsets.only(top: kToolbarHeight),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 24,
                    ),

                    // Text
                    Text(
                      'Mail Address Here',
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                      ),
                    ),

                    SizedBox(
                      height: 8,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Center(
                        child: Text(
                          'Enter the email address associated with your account!',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: AppColors.greySHADE600,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),

                          // Email Text Filed
                          AuthTextfield(
                            controller: _emailTextController,
                            hintText: "Email",
                            obscureText: false,
                            icon: Icon(
                              Icons.email,
                              color: AppColors.primaryColor,
                            ),
                          ),

                          SizedBox(
                            height: 24,
                          ),

                          // Continue Button
                          AuthButton(
                            onPressed: () {
                              Navigator.pushNamed(context, ForgotScreenroute);
                            },
                            text: "Recover Password",
                          ),

                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
