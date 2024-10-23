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
import 'package:flutter/material.dart';

class BookReviewScreens extends StatefulWidget {
  const BookReviewScreens({super.key});

  @override
  State<BookReviewScreens> createState() => _BookReviewScreensState();
}

class _BookReviewScreensState extends State<BookReviewScreens> {
  late TextEditingController _reviewController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _reviewController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.white),
        // Review TExt
        title: Text(
          "Reviews",
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Rating Row Stars
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.star_border_rounded,
                        size: 40,
                        color: AppColors.text_grey,
                      ),
                      Icon(
                        Icons.star_border_rounded,
                        size: 40,
                        color: AppColors.text_grey,
                      ),
                      Icon(
                        Icons.star_border_rounded,
                        size: 40,
                        color: AppColors.text_grey,
                      ),
                      Icon(
                        Icons.star_border_rounded,
                        size: 40,
                        color: AppColors.text_grey,
                      ),
                      Icon(
                        Icons.star_border_rounded,
                        size: 40,
                        color: AppColors.text_grey,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Stack(
                  children: [
                    // Review Text Field
                    SizedBox(
                      // height: 50,
                      child: TextField(
                        controller: _reviewController,
                        obscureText: false,
                        maxLines: 4,
                        minLines: 1,
                        style: const TextStyle(
                          color: AppColors.text_black,
                          fontWeight: FontWeight.w500,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(
                            left: 8,
                            bottom: 34,
                            right: 34,
                          ),
                          hintText: "Record Your Review",
                          hintStyle: const TextStyle(
                            color: AppColors.text_grey,
                          ),
                          filled: true,
                          fillColor: AppColors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                              width: 1.7,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                              width: 1.7,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Theme.of(context).colorScheme.primary,
                              width: 1.7,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),

                    // Positioned Icon at the bottom right
                    Positioned(
                      bottom: 8,
                      right: 8,
                      child: InkWell(
                        onTap: () {
                          //
                        },
                        child: Icon(
                          Icons.send,
                          color: AppColors.text_grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
            child: Divider(
              thickness: 1,
              color: AppColors.primaryColor,
            ),
          ),
          SizedBox(height: 8),

          // Fetch Reviews
          // Reviews UI
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // User Images
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey.shade300,
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.grey,
                      ),
                    ),

                    // Other Details
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 6, 0, 0),
                                child: Row(
                                  children: [
                                    // User Email
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      child: Text(
                                        'aikpak24@gmail.com',
                                        style: TextStyle(
                                          color: AppColors.text_black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),

                                    // User Review time
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(4, 0, 0, 0),
                                      child: Text(
                                        '8mins ago',
                                        style: TextStyle(
                                          color: AppColors.greySHADE600,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // User Review
                              Padding(
                                padding: const EdgeInsets.fromLTRB(8, 2, 12, 0),
                                child: Text(
                                  'Perfect one and really worthed',
                                  style: TextStyle(
                                    color: AppColors.text_black,
                                  ),
                                ),
                              ),
                              // User Review Rating
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 8, 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      Icons.star_rate_rounded,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_rate_rounded,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_rate_rounded,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_rate_rounded,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      Icons.star_half_rounded,
                                      size: 20,
                                      color: Colors.yellow,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 70),
        ],
      ),
    );
  }
}
