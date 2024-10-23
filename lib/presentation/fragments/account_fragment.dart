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

import 'package:e_book_ecommerce/common/colors/app_colors.dart';
import 'package:e_book_ecommerce/presentation/fragments/widgets/account_item_divider.dart';
import 'package:e_book_ecommerce/presentation/fragments/widgets/account_items.dart';
import 'package:e_book_ecommerce/routes/route_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountFragment extends StatefulWidget {
  const AccountFragment({super.key});

  @override
  State<AccountFragment> createState() => _AccountFragmentState();
}

class _AccountFragmentState extends State<AccountFragment> {
  // Text Controller Used when db applied
  late TextEditingController _coinController;
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _authorController;
  late TextEditingController _emailVerifyController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _coinController = TextEditingController();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _authorController = TextEditingController();
    _emailVerifyController = TextEditingController();
  }

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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 50,
        backgroundColor: AppColors.primaryColor,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Start Top Design
          SizedBox(
            height: screenHeight - 620,
            width: double.infinity,
            child: Stack(
              children: [
                // Starting Top Design
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // USer Image
                            Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 0, 0, 0),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 217, 217, 217),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(
                                      Icons.person,
                                      color: AppColors.text_grey,
                                      size: 60,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              width: 20,
                            ),

                            // USer Published Books
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Column(
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  Text(
                                    'Books',
                                    style: TextStyle(
                                      color: AppColors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              width: 20,
                            ),

                            // User Follwers
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '128K',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.white,
                                    ),
                                  ),
                                  Text(
                                    'followers',
                                    style: TextStyle(
                                      color: AppColors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(32, 8, 32, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // USer Name
                              Flexible(
                                child: Text(
                                  maxLines: 1,
                                  "Athar Ibrahim Khalid",
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18,
                                  ),
                                ),
                              ),

                              // USer Coins
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 2),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "4,987",
                                        style: TextStyle(
                                          color: Colors.yellow.shade800,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 0,
                                      ),
                                      Image.asset(
                                        'assets/images/coin3.png',
                                        height: 30,
                                        width: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Items
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Account Section START
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Account Text
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Account",
                            style: GoogleFonts.poppins(
                              color: AppColors.greySHADE800,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              letterSpacing: -0.1,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 8,
                      ),

                      // Edit Profile Item
                      AccountItems(
                        icon: Icon(
                          Icons.person_outline,
                          size: 24,
                          color: AppColors.greySHADE600,
                        ),
                        text: "Edit Profile",
                        onTap: () {
                          Navigator.pushNamed(context, EditProfileroute);
                        },
                      ),
                      AccountItemDivider(),

                      // Security Item
                      AccountItems(
                        icon: Icon(
                          Icons.security_outlined,
                          size: 24,
                          color: AppColors.greySHADE600,
                        ),
                        text: "Security",
                        onTap: () {
                          Navigator.pushNamed(context, Securityroute);
                        },
                      ),
                      AccountItemDivider(),

                      // Become Author Item
                      AccountItems(
                        icon: Icon(
                          Icons.auto_fix_high_outlined,
                          size: 24,
                          color: AppColors.greySHADE600,
                        ),
                        text: "Become a Author",
                        onTap: () {
                          Navigator.pushNamed(context, BecomeAuthorroute);
                        },
                      ),

                      AccountItemDivider(),

                      // Publish Book Item
                      AccountItems(
                        icon: Icon(
                          Icons.menu_book_outlined,
                          size: 24,
                          color: AppColors.greySHADE600,
                        ),
                        text: "Publish Book",
                        onTap: () {
                          Navigator.pushNamed(context, PublishBooksroute);
                        },
                      ),

                      AccountItemDivider(),

                      // Pulbish Author History
                      AccountItems(
                        icon: Icon(
                          Icons.history_edu_outlined,
                          size: 24,
                          color: AppColors.greySHADE600,
                        ),
                        text: "Add Author History",
                        onTap: () {
                          Navigator.pushNamed(context, AddAuthorHistoryroute);
                        },
                      ),

                      AccountItemDivider(),

                      // See Followers
                      AccountItems(
                        icon: Icon(
                          Icons.people_sharp,
                          size: 24,
                          color: AppColors.greySHADE600,
                        ),
                        text: "Followers",
                        onTap: () {
                          Navigator.pushNamed(context, Followersroute);
                        },
                      ),

                      AccountItemDivider(),
                    ],
                  ),
                  // Account Section END

                  // Action Section START
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // Action Text
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Action",
                            style: GoogleFonts.poppins(
                              color: AppColors.greySHADE800,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              letterSpacing: -0.1,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 16,
                      ),

                      // Purchase Book History
                      AccountItems(
                        icon: Icon(
                          Icons.history,
                          size: 24,
                          color: AppColors.greySHADE600,
                        ),
                        text: "Purchase History",
                        onTap: () {
                          Navigator.pushNamed(context, PurchaseHistoryroute);
                        },
                      ),
                      AccountItemDivider(),

                      // Get Subscription Item
                      AccountItems(
                        icon: Icon(
                          Icons.subscriptions_outlined,
                          size: 24,
                          color: AppColors.greySHADE600,
                        ),
                        text: "Get Subscription",
                        onTap: () {
                          Navigator.pushNamed(context, GetSubscriptionroute);
                        },
                      ),
                      AccountItemDivider(),

                      // Buy Coins Item
                      AccountItems(
                        icon: Icon(
                          Icons.confirmation_num_sharp,
                          size: 24,
                          color: AppColors.greySHADE600,
                        ),
                        text: "Buy Coins",
                        onTap: () {
                          Navigator.pushNamed(context, BuyCoinsroute);
                        },
                      ),
                      AccountItemDivider(),

                      // Verify Email Item
                      AccountItems(
                        icon: Icon(
                          Icons.email_outlined,
                          size: 24,
                          color: AppColors.greySHADE600,
                        ),
                        text: "Verify Email",
                        onTap: () {
                          Navigator.pushNamed(context, VerifyEmailroute);
                        },
                      ),

                      AccountItemDivider(),

                      // Verify Phone # Item
                      AccountItems(
                        icon: Icon(
                          Icons.phone_outlined,
                          size: 24,
                          color: AppColors.greySHADE600,
                        ),
                        text: "Verify Phone #",
                        onTap: () {
                          Navigator.pushNamed(context, VerifyPhoneroute);
                        },
                      ),
                      AccountItemDivider(),
                    ],
                  ),
                  // Action Section END

                  SizedBox(
                    height: 32,
                  ),

                  // Logout Button
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignInStartScreenroute);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red.shade500,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 0),
                        minimumSize: Size(double.infinity, 60),
                        maximumSize: Size(double.infinity, 60),
                      ),
                      child: Text(
                        "Logout",
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: AppColors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 24,
                  ),

                  // App Version
                  // _buildAppVersion(),

                  SizedBox(
                    height: 70,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
