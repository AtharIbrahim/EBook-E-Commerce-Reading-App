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
import 'package:e_book_ecommerce/presentation/fragments/home_fragment_pages/samples/featured_book_sample.dart';
import 'package:e_book_ecommerce/presentation/fragments/home_fragment_pages/samples/popular_books_sample.dart';
import 'package:e_book_ecommerce/presentation/fragments/home_fragment_pages/samples/top_author_sample.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeFragment extends StatefulWidget {
  const HomeFragment({super.key});

  @override
  State<HomeFragment> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends State<HomeFragment> {
  // Search Text Controller
  TextEditingController searchController = TextEditingController();
  FocusNode searchFocusNode = FocusNode(); // To track search bar focus
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
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Scrollable Content START
          SingleChildScrollView(
            child: Column(
              children: [
                // Search Bar START
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: TextField(
                    controller: searchController,
                    focusNode:
                        searchFocusNode, // Assign FocusNode to track focus
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                        color: AppColors.text_grey,
                      ),
                      hintText: "Search Books or Authors",
                      hintStyle: TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: AppColors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    onChanged: (value) {
                      setState(() {
                        // Update your filteredBooks based on search term
                        // You might want to implement filtering logic here
                      });
                    },
                  ),
                ),
                // Search Bar END
                SizedBox(
                  height: 10,
                ),

                // Scrollable Content START
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Featured Books START
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Featured Books",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.greySHADE800,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Text(
                            "See More",
                            style: TextStyle(
                              color: Colors.orange.shade600,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Featured Books END

                    // Featured Books Context Scroll Horizontal START
                    SizedBox(
                      height: 240,
                      child: FeaturedBookSample(
                        onTap: (index) {
                          // Handle tap
                        },
                      ),
                    ),
                    // Featured Books Context Scroll Horizontal END

                    // Author Section START
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Authors",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.greySHADE800,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Text(
                            "See More",
                            style: TextStyle(
                              color: Colors.orange.shade600,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Author Section END

                    // Author Section Content START
                    SizedBox(
                      height: 120,
                      child: TopAuthorSample(
                        onTap: (index) {
                          // Handle tap
                        },
                      ),
                    ),
                    // Author Section Content END

                    SizedBox(height: 8),

                    // Biographies Section START
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Popular Books",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                color: AppColors.greySHADE800,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Text(
                            "See More",
                            style: TextStyle(
                              color: Colors.orange.shade600,
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // Biographies Section END

                    SizedBox(height: 8),

                    // Biographic Section Content START
                    SizedBox(
                      height: 240,
                      child: PopularBooksSample(
                        onTap: (index) {
                          // Handle tap
                        },
                      ),
                    ),
                    // Biographic Section Content END

                    SizedBox(
                      height: 108,
                    ),
                  ],
                ),
                // Scrollable Content END
              ],
            ),
          ),
        ],
      ),
    );
  }
}
