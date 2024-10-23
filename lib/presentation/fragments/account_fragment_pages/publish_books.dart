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
import 'package:e_book_ecommerce/presentation/fragments/widgets/account_book_type.dart';
import 'package:e_book_ecommerce/presentation/fragments/widgets/account_drop_down.dart';
import 'package:e_book_ecommerce/presentation/fragments/widgets/account_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PublishBooks extends StatefulWidget {
  const PublishBooks({super.key});

  @override
  State<PublishBooks> createState() => _PublishBooksState();
}

class _PublishBooksState extends State<PublishBooks> {
  late TextEditingController _titleController;
  late TextEditingController _authorController;
  late TextEditingController _descriptionController;
  late TextEditingController _priceController;
  late TextEditingController _pageController;
  String? _selectedOption; // Add this line
  String? _selectedBookType; // Add this line
  // Initial Function
  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController();
    _authorController = TextEditingController();
    _descriptionController = TextEditingController();
    _priceController = TextEditingController();
    _pageController = TextEditingController();
  }

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
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text(
          "Publish Book",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),

              // User Image Circle And Edit it
              Center(
                child: InkWell(
                  onTap: () {
                    // Handle On Tap
                  },
                  child: Container(
                    width: 130,
                    height: 180,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 218, 218, 218),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.photo_size_select_actual_rounded,
                      color: AppColors.text_grey,
                      size: 48,
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 50,
              ),

              // Enter Book Title
              AccountTextfield(
                MaxLines: 1,
                keyboardType: TextInputType.text,
                editable: true,
                title: "Book Title",
                icon: Icon(
                  Icons.title_rounded,
                  size: 20,
                  color: AppColors.greySHADE800,
                ),
                hinttext2: "Enter Book Title",
                controller: _titleController,
              ),

              SizedBox(
                height: 16,
              ),

              // Enter Book Author
              AccountTextfield(
                MaxLines: 1,
                keyboardType: TextInputType.text,
                editable: true,
                title: "Author",
                icon: Icon(
                  Icons.auto_fix_high_outlined,
                  size: 20,
                  color: AppColors.greySHADE800,
                ),
                hinttext2: "Enter Author Name",
                controller: _authorController,
              ),

              SizedBox(
                height: 16,
              ),

              // Drop Down Options
              AccountDropDown(
                icon: Icon(
                  Icons.category_outlined,
                  size: 20,
                  color: AppColors.greySHADE800,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedOption = newValue;
                  });
                },
              ),

              SizedBox(
                height: 16,
              ),

              // Price Of Book
              AccountTextfield(
                title: "Price",
                hinttext2: "Enter Price (Optional)",
                icon: Icon(
                  Icons.currency_pound_outlined,
                  size: 20,
                  color: AppColors.greySHADE800,
                ),
                controller: _priceController,
                editable: true,
                keyboardType: TextInputType.text,
                MaxLines: 1,
              ),

              SizedBox(
                height: 16,
              ),

              // Number of Pages
              AccountTextfield(
                title: "Pages",
                hinttext2: "Number of Pages/ Episodes",
                icon: Icon(
                  Icons.content_paste_go_rounded,
                  size: 20,
                  color: AppColors.greySHADE800,
                ),
                controller: _pageController,
                editable: true,
                keyboardType: TextInputType.number,
                MaxLines: 1,
              ),

              SizedBox(
                height: 16,
              ),

              // Drop Down Book Type
              AccountBookType(
                icon: Icon(
                  Icons.type_specimen_outlined,
                  size: 20,
                  color: AppColors.greySHADE800,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedBookType = newValue;
                  });
                },
              ),

              SizedBox(
                height: 16,
              ),

              // Enter Book Description
              AccountTextfield(
                MaxLines: null,
                keyboardType: TextInputType.multiline,
                editable: true,
                title: "Description",
                icon: Icon(
                  Icons.description_outlined,
                  size: 20,
                  color: AppColors.greySHADE800,
                ),
                hinttext2: "Enter Description",
                controller: _descriptionController,
              ),

              SizedBox(
                height: 16,
              ),

              // Update Profile button
              AuthButton(
                onPressed: () {
                  // Handle On Tap
                },
                text: "Publish",
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
