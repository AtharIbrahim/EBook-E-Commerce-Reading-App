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
import 'package:e_book_ecommerce/presentation/fragments/widgets/account_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BecomeAuthor extends StatefulWidget {
  const BecomeAuthor({super.key});

  @override
  State<BecomeAuthor> createState() => _BecomeAuthorState();
}

class _BecomeAuthorState extends State<BecomeAuthor> {
  // Controllers
  late TextEditingController _authorController;
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _bioController;
  late TextEditingController _phoneController;
  late TextEditingController _dobController;
  late TextEditingController _coinsController;
  late TextEditingController _accountMakeDateController;
  late TextEditingController _emailVerifyController;
  // late TextEditingController _coinsController;

  // Initial Function
  @override
  void initState() {
    super.initState();
    _authorController = TextEditingController();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _bioController = TextEditingController();
    _phoneController = TextEditingController();
    _dobController = TextEditingController();
    _coinsController = TextEditingController();
    _accountMakeDateController = TextEditingController();
    _emailVerifyController = TextEditingController();
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.primaryColor,
        title: Text(
          "Become Author",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32),

            // User Image Circle And Edit it
            Center(
              child: InkWell(
                onTap: () {
                  // Handle On Tap
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 216, 216, 216),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person,
                    color: AppColors.text_grey,
                    size: 60,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 16,
            ),

            // User Name edittext and edit it
            AccountTextfield(
              MaxLines: 1,
              keyboardType: TextInputType.text,
              editable: true,
              title: "Name",
              icon: Icon(
                Icons.person_outline,
                size: 20,
                color: AppColors.greySHADE800,
              ),
              hinttext2: "Enter Author Name",
              controller: _authorController,
            ),

            SizedBox(
              height: 16,
            ),

            // User Email Address edittext and edit it
            AccountTextfield(
              MaxLines: 1,
              keyboardType: TextInputType.text,
              editable: true,
              title: "Email Address",
              icon: Icon(
                Icons.email_outlined,
                size: 20,
                color: AppColors.greySHADE800,
              ),
              hinttext2: "Enter Email Address",
              controller: _emailController,
            ),

            SizedBox(
              height: 16,
            ),

            // User Phone # edittext and edit it
            AccountTextfield(
              MaxLines: 1,
              keyboardType: TextInputType.text,
              editable: true,
              title: "Bio",
              icon: Icon(
                Icons.history_toggle_off,
                size: 20,
                color: AppColors.greySHADE800,
              ),
              hinttext2: "Enter Bio",
              controller: _bioController,
            ),
            SizedBox(height: 32),

            // Update Profile button
            AuthButton(
              onPressed: () {
                // Handle On Tap
              },
              text: "Update",
            ),
          ],
        ),
      ),
    );
  }
}
