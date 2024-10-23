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
import 'package:e_book_ecommerce/presentation/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:e_book_ecommerce/presentation/bottom_nav_bar/clipper.dart';
import 'package:e_book_ecommerce/presentation/bottom_nav_bar/constants.dart';
import 'package:e_book_ecommerce/presentation/bottom_nav_bar/my_drawer.dart';
import 'package:e_book_ecommerce/presentation/bottom_nav_bar/size_config.dart';
import 'package:e_book_ecommerce/presentation/fragments/account_fragment.dart';
import 'package:e_book_ecommerce/presentation/fragments/book_types_fragment.dart';
import 'package:e_book_ecommerce/presentation/fragments/favorite_fragment.dart';
import 'package:e_book_ecommerce/presentation/fragments/home_fragment.dart';
import 'package:e_book_ecommerce/presentation/fragments/library_fragment.dart';
import 'package:e_book_ecommerce/routes/route_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalView extends StatefulWidget {
  const FinalView({super.key});

  @override
  FinalViewState createState() => FinalViewState();
}

class FinalViewState extends State<FinalView> {
  // Initial Function
  @override
  void initState() {
    super.initState();

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  int _currentIndex = 0;
  final PageController pageController = PageController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void animateToPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 400),
      curve: Curves.decelerate,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Initialize AppSizes before using it in the build method
    AppSizes().init(context);
    // Define a GlobalKey for Scaffold
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      appBar: _currentIndex == 2
          ? AppBar(
              toolbarHeight: 60,
              surfaceTintColor: AppColors.text_black,
              backgroundColor: AppColors.white,
              automaticallyImplyLeading: false,
              actions: [
                // Custom actions can be added here
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, EditProfileroute);
                  },
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 218, 218, 218),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.person,
                        color: AppColors.text_grey,
                      ),
                    ),
                  ),
                ),
              ],

              // App Name with some design
              title: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'B',
                      style: GoogleFonts.courgette(
                        textStyle: TextStyle(
                          color: AppColors.text_black,
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Text(
                      'EEP',
                      style: GoogleFonts.shadowsIntoLight(
                        textStyle: TextStyle(
                          color: AppColors.text_black,
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Text(
                      'E',
                      style: GoogleFonts.courgette(
                        textStyle: TextStyle(
                          color: AppColors.text_black,
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Text(
                      'NDS',
                      style: GoogleFonts.shadowsIntoLight(
                        textStyle: TextStyle(
                          color: AppColors.text_black,
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          : null, // Show AppBar only on the Home page
      drawer: _currentIndex == 0
          ? MyDrawer()
          : null, // Show Drawer only on the Home page
      backgroundColor: AppColors.text_black,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned.fill(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    _currentIndex = value;
                  });
                },
                controller: pageController,
                children: const [
                  LibraryFragment(), // Library Fragment
                  BookTypesFragment(), // Book Category Fragment
                  HomeFragment(), // Home Fragment
                  FavoriteFragment(), // Favorites Fragment
                  AccountFragment(), // Account Fragment
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: bottomNav(),
            ),
          ],
        ),
      ),
    );
  }

  // Bottom Nav Bar Icon, Colors
  Widget bottomNav() {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Material(
        borderRadius: BorderRadius.circular(30),
        color: AppColors.transparent,
        elevation: 6,
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                left: MediaQuery.of(context).size.width * 0.03,
                right: MediaQuery.of(context).size.width * 0.03,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Icon 1 (Library)
                    BottomNavBTN(
                      onPressed: (val) {
                        animateToPage(val);
                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      icon: Icons.library_books_outlined,
                      currentIndex: _currentIndex,
                      index: 0,
                    ),

                    // Icon 2 (Book Category)
                    BottomNavBTN(
                      onPressed: (val) {
                        animateToPage(val);
                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      icon: Icons.category_outlined,
                      currentIndex: _currentIndex,
                      index: 1,
                    ),

                    // Icon 3 (Home)
                    BottomNavBTN(
                      onPressed: (val) {
                        animateToPage(val);
                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      icon: Icons.home_outlined,
                      currentIndex: _currentIndex,
                      index: 2,
                    ),

                    // Icon 4 (Favorite)
                    BottomNavBTN(
                      onPressed: (val) {
                        animateToPage(val);
                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      icon: Icons.favorite_border_outlined,
                      currentIndex: _currentIndex,
                      index: 3,
                    ),

                    // Icon 5 (Person)
                    BottomNavBTN(
                      onPressed: (val) {
                        animateToPage(val);
                        setState(() {
                          _currentIndex = val;
                        });
                      },
                      icon: Icons.person_outline,
                      currentIndex: _currentIndex,
                      index: 4,
                    ),
                  ],
                ),
              ),

              // Animation Positions
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.decelerate,
                top: 0,
                left: animatedPositionedLEftValue(_currentIndex),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 0.01,
                      width: MediaQuery.of(context).size.width * 0.12,
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    ClipPath(
                      clipper: MyCustomClipper(),
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.15,
                        width: MediaQuery.of(context).size.width * 0.12,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: gradient,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
