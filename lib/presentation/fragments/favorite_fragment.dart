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

class FavoriteFragment extends StatefulWidget {
  const FavoriteFragment({super.key});

  @override
  State<FavoriteFragment> createState() => _FavoriteFragmentState();
}

class _FavoriteFragmentState extends State<FavoriteFragment> {
  /// Just a simple layout of favorite if you add db then this code help u a lot,
  ///  by just adding a small code (Happy Coding)
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    // Change the color of the mobile above appbar status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    // Return Layout
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1),
                      spreadRadius: 1,
                      blurRadius: 12,
                      offset: Offset(0, 0),
                    ),
                  ],
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: InkWell(
                  // OnTap
                  onTap: () {
                    Navigator.pushNamed(context, BookPreviewroute);
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: 100, // Responsive width
                            height: 130, // Responsive height
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.17),
                                  offset: Offset(0, 15),
                                  blurRadius: 10,
                                  spreadRadius: 0,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(12),
                                bottomLeft: Radius.circular(12),
                              ),
                              child: Image.asset('assets/books/book3.jpeg',
                                  fit: BoxFit.fill,
                                  height: 120, // Responsive height
                                  width: 100 // Responsive width
                                  ),
                            ),
                          ),
                          SizedBox(width: 8),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                      size: 16,
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    child: Text(
                                      "Pride And Prejudice",
                                      style: TextStyle(
                                        color: AppColors.text_black,
                                        fontSize: 16, // Responsive font size
                                        fontWeight: FontWeight.w700,
                                      ),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Text(
                                    "Jane Austen",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.greySHADE700,
                                      fontSize: 14, // Responsive font size
                                    ),
                                  ),
                                  Text(
                                    "Pride and Prejudice follows the turbulent relationship between Elizabeth Bennet and Fitzwilliam Darcy.",
                                    style: TextStyle(
                                      color: AppColors.text_grey,
                                      fontSize: 11, // Responsive font size
                                      fontWeight: FontWeight.w500,
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
