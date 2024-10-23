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

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // TExt Controllers
  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _PhoneNumberTextController =
      TextEditingController();
  final TextEditingController _ageTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  final TextEditingController _confirmPasswordTextController =
      TextEditingController();

  // Build
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
      // appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // bg images
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/images/signupbg.png',
              fit: BoxFit.cover,
            ),
          ),

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

                  // Text
                  Text(
                    'Welcome',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: AppColors.white,
                    ),
                  ),

                  SizedBox(
                    height: 8,
                  ),

                  Text(
                    'Have a good day.',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColors.white,
                    ),
                  ),

                  SizedBox(
                    height: 24,
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),

                          // Name text field
                          AuthTextfield(
                            controller: _nameTextController,
                            hintText: "Name",
                            obscureText: false,
                            icon: Icon(
                              Icons.person,
                              color: AppColors.primaryColor,
                            ),
                          ),

                          SizedBox(
                            height: 8,
                          ),

                          // Phone Number text field
                          AuthTextfield(
                            controller: _PhoneNumberTextController,
                            hintText: "Phone Number",
                            obscureText: false,
                            icon: Icon(
                              Icons.phone,
                              color: AppColors.primaryColor,
                            ),
                          ),

                          SizedBox(
                            height: 8,
                          ),

                          // email text field
                          AuthTextfield(
                            controller: _ageTextController,
                            hintText: "Age",
                            obscureText: false,
                            icon: Icon(
                              Icons.date_range_outlined,
                              color: AppColors.primaryColor,
                            ),
                          ),

                          SizedBox(
                            height: 8,
                          ),

                          // password text field
                          AuthTextfield(
                            controller: _passwordTextController,
                            hintText: "Password",
                            obscureText: true,
                            icon: Icon(
                              Icons.lock,
                              color: AppColors.primaryColor,
                            ),
                          ),

                          SizedBox(
                            height: 8,
                          ),

                          // Confirm Password text field
                          AuthTextfield(
                            controller: _confirmPasswordTextController,
                            hintText: "Confirm Password",
                            obscureText: true,
                            icon: Icon(
                              Icons.lock,
                              color: AppColors.primaryColor,
                            ),
                          ),

                          SizedBox(
                            height: 16,
                          ),

                          // SignUp Button
                          AuthButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SignUpSuccesssScreenroute);
                            },
                            text: "SignUp",
                          ),

                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 20,
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
