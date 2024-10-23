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
import 'package:e_book_ecommerce/presentation/auth_screens/widgets/auth_divider.dart';
import 'package:e_book_ecommerce/presentation/auth_screens/widgets/auth_text_field.dart';
import 'package:e_book_ecommerce/routes/route_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpStartScreen extends StatefulWidget {
  const SignUpStartScreen({super.key});

  @override
  State<SignUpStartScreen> createState() => _SignUpStartScreenState();
}

class _SignUpStartScreenState extends State<SignUpStartScreen> {
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
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
          Container(
            color: AppColors.primaryColor,
            height: double.infinity,
            width: double.infinity,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 140,
                ),
                Container(
                  height: screenHeight - 140,
                  child: Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        width: double.infinity,
                        height: screenHeight - 140,
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(180),
                            topRight: Radius.circular(180),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 50,
                            ),

                            // TExt
                            Text(
                              "Let's make account",
                              style: GoogleFonts.poppins(
                                color: AppColors.text_black,
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                            ),

                            // Margin between text and email text field
                            const SizedBox(
                              height: 30,
                            ),

                            // Email Text Field
                            AuthTextfield(
                              controller: _emailTextController,
                              hintText: "Email",
                              obscureText: false,
                              icon: Icon(
                                Icons.email,
                                color: AppColors.primaryColor,
                              ),
                            ),

                            const SizedBox(
                              height: 5,
                            ),

                            // SignUp Text To Navigate
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Not Account Text
                                Text(
                                  "Don't have an account?",
                                  style: GoogleFonts.poppins(
                                    color: AppColors.greySHADE800,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),

                                // Sign In Text to Navigate
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, SignInStartScreenroute);
                                  },
                                  child: Text.rich(
                                    TextSpan(
                                      text: 'SignIn?',
                                      style: GoogleFonts.poppins(
                                        color: Colors.red.shade700,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(
                              height: 16,
                            ),

                            // Add Divider
                            AuthDivider(
                              color: AppColors.text_grey,
                              thickness: 1.5,
                              text: "OR",
                            ),

                            const SizedBox(
                              height: 60,
                            ),

                            // Social media login buttons
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: LayoutBuilder(
                                builder: (context, constraints) {
                                  // Calculate the button width dynamically based on available width
                                  double buttonWidth =
                                      (constraints.maxWidth - 40) / 2;

                                  return Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            // Handle Facebook login
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFF1877F2),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            minimumSize: Size(buttonWidth, 55),
                                          ),
                                          icon: Icon(
                                            Icons.facebook,
                                            color: AppColors.white,
                                            size: 30,
                                          ),
                                          label: FittedBox(
                                            child: Text(
                                              'Facebook',
                                              style: GoogleFonts.poppins(
                                                color: AppColors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      Flexible(
                                        child: ElevatedButton.icon(
                                          onPressed: () {
                                            // Handle Google login
                                          },
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFFDB4437),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            minimumSize: Size(buttonWidth, 55),
                                          ),
                                          icon: Icon(
                                            Icons.g_mobiledata,
                                            color: AppColors.white,
                                            size: 30,
                                          ),
                                          label: FittedBox(
                                            child: Text(
                                              'Google',
                                              style: GoogleFonts.poppins(
                                                color: AppColors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),

                            const SizedBox(
                              height: 16,
                            ),

                            // Login button
                            AuthButton(
                              onPressed: () {
                                if (_emailTextController.text.isNotEmpty)
                                  Navigator.pushNamed(
                                      context, SignUpScreenroute);
                                else
                                  Navigator.pushNamed(
                                      context, SignUpErrorScreenroute);
                              },
                              text: "Sign Up",
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -60,
                        left: screenWidth / 2 - 65,
                        child: Container(
                          width: 130,
                          height: 130,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 162, 161, 255),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.multitrack_audio,
                            color: AppColors.primaryColor,
                            size: 90,
                          ),
                        ),
                      ),
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
