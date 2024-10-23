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
import 'package:e_book_ecommerce/routes/route_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  // Splash Animation
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  // Logo image path
  String LogoImagePath = 'assets/images/icon_white.png';

  // Initial Stage
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _fadeAnimation =
        Tween<double>(begin: 0, end: 1).animate(_animationController);

    _animationController.forward();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _redirect();
    });
  }

  // Navigate to SignInOrSignUp screen with a 3-second delay
  Future<void> _redirect() async {
    await Future.delayed(const Duration(seconds: 3));
    _animationController.reverse();
    Navigator.pushNamed(context, AfterSplashroute);
  }

  @override
  Widget build(BuildContext context) {
    // Change the color of the mobile above appbar status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Logo
          Expanded(
            child: Center(
              child: FadeTransition(
                opacity: _fadeAnimation,
                child: Image.asset(
                  LogoImagePath,
                  width: 250,
                  height: 250,
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Text
          const Text(
            'Powered by AIK',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 14,
              color: AppColors.white,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }

  // Dispose the animation
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
