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

class VerifyEmail extends StatefulWidget {
  const VerifyEmail({super.key});

  @override
  State<VerifyEmail> createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  // Email text Field
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
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppColors.white,
          appBar: AppBar(
            title: Text(
              "Verify Email",
              style: TextStyle(
                color: AppColors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            backgroundColor: AppColors.primaryColor,
            iconTheme: IconThemeData(color: AppColors.white),
            actions: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                child: Icon(
                  Icons.question_mark_sharp,
                  size: 16,
                  color: AppColors.white,
                ),
              )
            ],
          ),
          body: Column(
            children: [
              // VErify Email Text
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 16, 32, 0),
                child: Text(
                  maxLines: 3,
                  "To verify your email address kindly first confirm your email, to generate OTP code.",
                  style: GoogleFonts.poppins(
                    color: AppColors.greySHADE600,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              // Email TExt Field
              AuthTextfield(
                controller: _emailTextController,
                hintText: "Enter Your Email",
                obscureText: false,
                icon: Icon(
                  Icons.email,
                  color: AppColors.primaryColor,
                ),
              ),

              SizedBox(
                height: 16,
              ),

              // Continue Text Field
              AuthButton(
                onPressed: () {
                  Navigator.pushNamed(context, VerifyEmailOTProute);
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
                      "Have any query contact",
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
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
