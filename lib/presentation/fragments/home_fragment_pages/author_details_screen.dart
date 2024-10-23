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
import 'package:flutter/material.dart';

class AuthorDetailsScreen extends StatefulWidget {
  const AuthorDetailsScreen({super.key});

  @override
  State<AuthorDetailsScreen> createState() => _AuthorDetailsScreenState();
}

class _AuthorDetailsScreenState extends State<AuthorDetailsScreen> {
  // Author Controller
  late TextEditingController _authorNameController;
  late TextEditingController _authorBioController;

  @override
  void initState() {
    super.initState();
    _authorNameController = TextEditingController();
    _authorBioController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        automaticallyImplyLeading: true,
        title: Text(
          _authorNameController.text,
          selectionColor: AppColors.text_black,
          style: TextStyle(
            color: AppColors.text_black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Profile section
              Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 217, 217, 217),
                    ),
                    child: Icon(
                      Icons.person,
                      color: AppColors.text_grey,
                      size: 48,
                    ),
                  ),
                  SizedBox(width: 20),

                  // Published Book Text
                  Column(
                    children: [
                      Text(
                        "7",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.text_black,
                        ),
                      ),
                      Text(
                        'Books Publish',
                        style: TextStyle(
                          color: AppColors.text_black,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(
                    width: 20,
                  ),

                  // Publisher Followers Text
                  Column(
                    children: [
                      Text(
                        '128K',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.text_black,
                        ),
                      ),
                      Text(
                        'followers',
                        style: TextStyle(
                          color: AppColors.text_black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 16),

              // Name and Category
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _authorNameController.text,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColors.text_black,
                      ),
                    ),
                    Text(
                      'Athar Ibrahim Khalid',
                      style: TextStyle(
                        color: AppColors.text_grey,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      _authorBioController.text,
                      style: TextStyle(
                        fontSize: 14,
                        color: AppColors.text_black,
                      ),
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
              SizedBox(height: 16),

              // Follow and Message buttons
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 45,
                      decoration: BoxDecoration(
                        //
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: InkWell(
                        onTap: () {
                          //
                        },
                        child: Center(
                          child: Text(
                            "Follow",
                            style: TextStyle(
                              color: AppColors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 45,
                      decoration: BoxDecoration(
                        //
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: InkWell(
                        onTap: () {
                          //
                        },
                        child: Center(
                          child: Text(
                            "Message",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                // height: double.infinity,
                // height: 400,
                child: FeaturedBookSample(
                  onTap: (index) {
                    //
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
