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
import 'package:e_book_ecommerce/routes/route_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInSuccessScreen extends StatefulWidget {
  const SignInSuccessScreen({super.key});

  @override
  State<SignInSuccessScreen> createState() => _SignInSuccessScreenState();
}

class _SignInSuccessScreenState extends State<SignInSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    // Change the color of the mobile above appbar status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    // Return Layout
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/login_success_bg.png',
                  height: 250,
                  width: 250,
                ),

                // Success Details
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Login successful! Welcome back to your reading adventure. Start your journey again.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: AppColors.greySHADE700,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                // Continue Button
                AuthButton(
                  onPressed: () {
                    Navigator.pushNamed(context, HomePageroute);
                  },
                  text: "Continue",
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: Column(
                    children: [
                      // Contact Purpose
                      Text(
                        "Do you have any question?",
                        style: GoogleFonts.poppins(
                          color: AppColors.greySHADE700,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),

                      // Publisher Email
                      SelectableText(
                        "contact@gmail.com",
                        style: GoogleFonts.poppins(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
