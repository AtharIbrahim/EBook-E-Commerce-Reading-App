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
import 'package:e_book_ecommerce/presentation/auth_screens/widgets/auth_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddAuthorHistory extends StatefulWidget {
  const AddAuthorHistory({super.key});

  @override
  State<AddAuthorHistory> createState() => _AddAuthorHistoryState();
}

class _AddAuthorHistoryState extends State<AddAuthorHistory> {
  // Controllers for text input
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _bioController = TextEditingController();
  final TextEditingController _socialMediaController = TextEditingController();
  final TextEditingController _awardsController = TextEditingController();
  final TextEditingController _upcomingReleasesController =
      TextEditingController();
  final TextEditingController _articlesController = TextEditingController();
  final TextEditingController _publishedWorksController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    // Change the color of the mobile above appbar status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.primaryColor,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    // Return Layout
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Author History",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),

                // Author Image
                InkWell(
                  onTap: () {
                    //
                  },
                  child: Container(
                    width: 120,
                    height: 120,
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
                const SizedBox(
                  height: 32,
                ),

                // Author Name
                TextField(
                  controller: _nameController,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    labelText: 'Author Name',
                    labelStyle: const TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                const SizedBox(height: 16),

                // Bio
                TextField(
                  controller: _bioController,
                  style: const TextStyle(
                    color: AppColors.text_black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Bio',
                    labelStyle: const TextStyle(
                      color: AppColors.text_grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.text_black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.text_black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                  maxLines: 3,
                ),
                const SizedBox(height: 16),

                // Social Media Link or Website
                TextField(
                  controller: _socialMediaController,
                  style: const TextStyle(
                    color: AppColors.text_black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Social Media Link or Website',
                    labelStyle: const TextStyle(
                      color: AppColors.text_grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.text_black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.text_black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                ),
                const SizedBox(height: 16),

                // Awards and Achievements
                TextField(
                  controller: _awardsController,
                  style: const TextStyle(
                    color: AppColors.text_black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Awards and Achievements',
                    labelStyle: const TextStyle(
                      color: AppColors.text_grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.text_black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.text_black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                ),
                const SizedBox(height: 16),

                // Upcoming Releases
                TextField(
                  controller: _upcomingReleasesController,
                  style: const TextStyle(
                    color: AppColors.text_black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Upcoming Releases',
                    labelStyle: const TextStyle(
                      color: AppColors.text_grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.text_black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.text_black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                ),
                const SizedBox(height: 16),

                // Articles
                TextField(
                  controller: _articlesController,
                  style: const TextStyle(
                    color: AppColors.text_black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Articles/Interviews',
                    labelStyle: const TextStyle(
                      color: AppColors.text_grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.text_black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.text_black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                ),
                const SizedBox(height: 16),

                // Published Works
                TextField(
                  controller: _publishedWorksController,
                  style: const TextStyle(
                    color: AppColors.text_black,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Published Works',
                    labelStyle: const TextStyle(
                      color: AppColors.text_grey,
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.text_black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: AppColors.text_black,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: AppColors.white,
                  ),
                ),
                const SizedBox(height: 16),

                // Save Button
                AuthButton(
                  onPressed: () {
                    // handle On Tap
                  },
                  text: "Publish",
                ),

                SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
