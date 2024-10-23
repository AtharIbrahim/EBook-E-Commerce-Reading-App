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

class BookTypesFragment extends StatefulWidget {
  const BookTypesFragment({super.key});

  @override
  State<BookTypesFragment> createState() => _BookTypesFragmentState();
}

class _BookTypesFragmentState extends State<BookTypesFragment> {
  // Dummy Data
  final List<Map<String, String>> categories = [
    {"title": "Poetry", "image": "assets/books/book9.jpeg"},
    {"title": "Action", "image": "assets/books/book7.jpeg"},
    {"title": "Fairytale", "image": "assets/books/book6.jpeg"},
    {"title": "Autobiogra", "image": "assets/books/book5.jpeg"},
    {"title": "Crime", "image": "assets/books/book9.jpeg"},
    {"title": "Suspense", "image": "assets/books/book6.jpeg"},
    {"title": "Western", "image": "assets/books/book5.jpeg"},
    {"title": "History", "image": "assets/books/book3.jpeg"},
    {"title": "Business", "image": "assets/books/book9.jpeg"},
  ];

  /// Just a simple layout of Book Categories if you add database then
  ///  u only change few code and get to go.(Happy Coding)

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
      appBar: AppBar(
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: false,
        title: Center(
          child: Text(
            "Categories",
            style: TextStyle(
              color: AppColors.text_black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 60),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0,
            mainAxisSpacing: 10, // Adjust spacing as needed
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, BookCaseToShowroute);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center the content
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(8),
                              bottom: Radius.circular(
                                  8)), // Rounded corners for image
                          child: Image.asset(
                            categories[index]['image']!,
                            height: 110,
                            width: double.infinity, // Fill the container width
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        categories[index]['title']!,
                        style: TextStyle(
                          color: AppColors.text_black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
