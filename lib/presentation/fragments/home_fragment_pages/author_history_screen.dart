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
import 'package:e_book_ecommerce/presentation/fragments/home_fragment_pages/samples/top_author_sample.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthorHistoryScreen extends StatefulWidget {
  const AuthorHistoryScreen({super.key});

  @override
  State<AuthorHistoryScreen> createState() => _AuthorHistoryScreenState();
}

class _AuthorHistoryScreenState extends State<AuthorHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    // Change the color of the mobile above appbar status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 24,
            ),
            // Author Image
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 50, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                    child: Container(
                      width: screenWidth * 0.4,
                      height: screenWidth * 0.4,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 217, 217, 217),
                      ),
                      child: Icon(
                        Icons.person,
                        color: AppColors.text_grey,
                        size: 100,
                      ),
                    ),
                  ),

                  // Author Bio
                  Flexible(
                    child: Text(
                      'Jane Austen was an English novelist known primarily for her six novels, which implicitly interpret, critique, and comment upon the British.',
                      style: TextStyle(
                        color: AppColors.greySHADE700,
                        fontSize: screenWidth * 0.04, // Responsive font size
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: null,
                    ),
                  ),
                ],
              ),
            ),

            // Author Name
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 32, 0, 0),
              child: Text(
                'Jane Austen',
                style: TextStyle(
                  color: AppColors.text_black,
                  fontSize: screenWidth * 0.06, // Responsive font size
                  fontWeight: FontWeight.w700,
                ),
                maxLines: null,
              ),
            ),

            // Author Email
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Text(
                'aikpak24@gmail.com',
                style: TextStyle(
                  color: AppColors.text_grey,
                  fontSize: screenWidth * 0.04, // Responsive font size
                  fontWeight: FontWeight.w500,
                ),
                maxLines: null,
              ),
            ),

            // Author Articles
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 24, 0, 0),
              child: Text(
                "Articles",
                style: TextStyle(
                  color: AppColors.text_black,
                  fontSize: screenWidth * 0.045, // Responsive font size
                  fontWeight: FontWeight.w600,
                ),
                maxLines: null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
              child: Text(
                'Jane Austen was an English novelist known primarily for her six novels, which implicitly interpret, critique, and comment upon the British landed gentry at the end of the 18th century. Austens plots often explore the dependence of women on marriage for the pursuit of favourable social standing and economic security.',
                style: TextStyle(
                  color: AppColors.text_grey,
                  fontSize: screenWidth * 0.03, // Responsive font size
                  fontWeight: FontWeight.w500,
                ),
                maxLines: null,
              ),
            ),

            // Author Website
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 8, 48),
              child: InkWell(
                onTap: () {
                  //
                },
                child: Text(
                  'Website',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize:
                        screenWidth * 0.04, // Corrected responsive font size
                    fontWeight: FontWeight.w500,
                  ),
                  maxLines: null,
                ),
              ),
            ),

            // Show more Author List
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "More Authors",
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        color: AppColors.greySHADE800,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Author Section END

            // Author Section Content START
            SizedBox(
              height: 120, // Adjust height as needed
              child: TopAuthorSample(
                onTap: (index) {
                  // Handle tap
                },
              ),
            ),
            SizedBox(
              height: 16,
            ),
            // Author Section Content END
          ],
        ),
      ),
    );
  }
}
