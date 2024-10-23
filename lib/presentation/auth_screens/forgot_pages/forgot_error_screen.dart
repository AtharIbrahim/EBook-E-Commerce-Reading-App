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

class ForgotErrorScreen extends StatefulWidget {
  const ForgotErrorScreen({super.key});

  @override
  State<ForgotErrorScreen> createState() => _ForgotErrorScreenState();
}

class _ForgotErrorScreenState extends State<ForgotErrorScreen> {
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
          // Foreground content
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 24,
                  ),

                  // Error Code
                  Text(
                    '404',
                    style: GoogleFonts.poppins(
                      fontSize: 60,
                      fontWeight: FontWeight.w600,
                      color: AppColors.text_black,
                    ),
                  ),
                  SizedBox(height: 0),
                  Text(
                    'Password Not Reset',
                    style: GoogleFonts.poppins(
                      fontSize: 26,
                      color: AppColors.text_black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  Image.asset(
                    'assets/images/accountnot.png',
                    height: 250,
                    width: 250,
                  ),

                  // Error Details
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Please check your input and and try again. If you don't have an account , consider forgot password again to access our features.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: AppColors.greySHADE500,
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
                      Navigator.pushNamed(context, ForgotStartScreenroute);
                    },
                    text: "Retry",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
