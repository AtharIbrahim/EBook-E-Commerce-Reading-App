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
//

import 'package:e_book_ecommerce/common/colors/app_colors.dart';
import 'package:e_book_ecommerce/presentation/on_boarding_screen/dot_indicator.dart';
import 'package:e_book_ecommerce/presentation/on_boarding_screen/on_board_content.dart';
import 'package:e_book_ecommerce/routes/route_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late PageController _pageController;
  int _pageIndex = 0;
  // OnBoard Screen Content
  final List<Onbord> _onbordData = [
    // Screen 1
    Onbord(
      image: "assets/images/screen1_onboard.png",
      imageDarkTheme: "assets/images/screen1_onboard.png",
      title: "Welcome to BEEPEND!",
      description:
          "Discover thousands of ebooks across all genres. Whether you love fiction, non-fiction, or self-improvement, we’ve got it all!",
    ),
    // Screen 2
    Onbord(
      image: "assets/images/screen2_onboard.png",
      imageDarkTheme: "assets/images/screen2_onboard.png",
      title: "Read & Earn Rewards",
      description:
          "Get rewarded for your reading progress. Earn coins and unlock special perks as you explore new stories and complete books.",
    ),
    // Screen 3
    Onbord(
      image: "assets/images/scrren3_onboard.png",
      imageDarkTheme: "assets/images/screen3_onboard.png",
      title: "Simple & Fast Transactions",
      description:
          "Buy your favorite books using coins or real money. Enjoy exclusive deals and discounts on bestsellers!",
    ),
    // Screen 4
    Onbord(
      image: "assets/images/screen4_onboard.png",
      imageDarkTheme: "assets/images/screen4_onboard.png",
      title: "Save Your Favorites",
      description:
          "Create your personalized library by adding books to your favorites. Access them anytime and pick up where you left off.",
    ),
    // Screen 5
    Onbord(
      image: "assets/images/screen5_onboard.png",
      imageDarkTheme: "assets/images/screen5_onboard.png",
      title: "Join the Community of Avid Readers",
      description:
          "Dive into the world of books, earn rewards, and enjoy a seamless reading experience. Let’s get started!",
    ),
  ];

  // Initial
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  // Dispose
  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Change the color of the mobile above appbar status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // After Skip route
                    Navigator.pushNamed(context, SignInStartScreenroute);
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color),
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _onbordData.length,
                  onPageChanged: (value) {
                    setState(() {
                      _pageIndex = value;
                    });
                  },
                  itemBuilder: (context, index) => OnBoardContent(
                    title: _onbordData[index].title,
                    description: _onbordData[index].description,
                    image: (Theme.of(context).brightness == Brightness.dark &&
                            _onbordData[index].imageDarkTheme != null)
                        ? _onbordData[index].imageDarkTheme!
                        : _onbordData[index].image,

                    /// Change this isTextOnTop as you need, if isOdd, isEven, other then this use on_board_content(if you need)
                    isTextOnTop: index.isFinite,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    _onbordData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 16 / 4),

                      /// Call dot_indicator to show how many on_board left
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_pageIndex < _onbordData.length - 1) {
                          _pageController.nextPage(
                              curve: Curves.ease,
                              duration: Duration(milliseconds: 300));
                        } else {
                          Navigator.pushNamed(context, SignInStartScreenroute);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: EdgeInsets.all(8),
                        backgroundColor: AppColors.primaryColor,
                      ),
                      child: Icon(
                        Icons.keyboard_double_arrow_right_sharp,
                        color: AppColors.white,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class Onbord {
  final String image, title, description;
  final String? imageDarkTheme;

  Onbord({
    required this.image,
    required this.title,
    this.description = "",
    this.imageDarkTheme,
  });
}
