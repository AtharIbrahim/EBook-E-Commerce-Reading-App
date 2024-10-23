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

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  // Personal Controllers
  late TextEditingController _nameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _dobController;
  late TextEditingController _accountMakeDateController;
  late TextEditingController _coinsController;
  late TextEditingController _becomeAuthorController;
  // Author Controllers
  late TextEditingController _authorNameController;
  late TextEditingController _authorEmailController;
  late TextEditingController _authorBioController;
  late TextEditingController _authorTimeController;
  // Initial Function
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _phoneController = TextEditingController();
    _dobController = TextEditingController();
    _accountMakeDateController = TextEditingController();
    _coinsController = TextEditingController();
    _becomeAuthorController = TextEditingController();

    // Author Controller
    _authorNameController = TextEditingController();
    _authorEmailController = TextEditingController();
    _authorBioController = TextEditingController();
    _authorTimeController = TextEditingController();
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
    return DefaultTabController(
      length: 2, // Number of tabs
      animationDuration: Duration(seconds: 1),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: AppColors.white),
          automaticallyImplyLeading: true,
          backgroundColor: AppColors.primaryColor,
          bottom: TabBar(
            labelColor: AppColors.white,
            unselectedLabelColor: AppColors.text_grey,
            indicatorColor: AppColors.white,
            automaticIndicatorColorAdjustment: true,
            tabs: [
              const Tab(text: 'Edit Profile'),
              // if (_becomeAuthorController.text == "True")
              const Tab(text: 'Author Profile'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Personal Tab
            _buildEditProfile(),
            // Author Tab
            _buildAuthorProfile(),
          ],
        ),
      ),
    );
  }

  // Edit Profile
  Widget _buildEditProfile() {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),

            InkWell(
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
              hinttext2: "Enter Name",
              controller: _nameController,
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
              title: "Phone #",
              icon: Icon(
                Icons.phone_outlined,
                size: 20,
                color: AppColors.greySHADE800,
              ),
              hinttext2: "Enter Phone #",
              controller: _phoneController,
            ),

            SizedBox(
              height: 16,
            ),

            // User Date of birth edittext and edit it
            AccountTextfield(
              MaxLines: 1,
              keyboardType: TextInputType.text,
              editable: true,
              title: "DOB",
              icon: Icon(
                Icons.date_range_outlined,
                size: 20,
                color: AppColors.greySHADE800,
              ),
              hinttext2: "Enter DOB",
              controller: _dobController,
            ),

            SizedBox(
              height: 32,
            ),

            // Update Profile button
            AuthButton(
              onPressed: () {
                // AHndle On Tap
              },
              text: "Update",
            ),

            // Member Since
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Text(
                    "Member Since: ",
                    style: TextStyle(
                      color: AppColors.greySHADE800,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      letterSpacing: 0,
                    ),
                  ),
                  Text(
                    _accountMakeDateController.text,
                    style: TextStyle(
                      color: AppColors.greySHADE600,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Edit Author Profile
  Widget _buildAuthorProfile() {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),

            // User Image Circle And Edit it
            Center(
              child: InkWell(
                onTap: () {
                  //
                },
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 218, 218, 218),
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
              title: "Author Name",
              icon: Icon(
                Icons.person_outline,
                size: 20,
                color: AppColors.greySHADE800,
              ),
              hinttext2: "Enter Author Name",
              controller: _authorNameController,
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
              controller: _authorEmailController,
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
                Icons.phone_outlined,
                size: 20,
                color: AppColors.greySHADE800,
              ),
              hinttext2: "Enter Bio",
              controller: _authorBioController,
            ),

            SizedBox(
              height: 16,
            ),

            // Update Profile button
            AuthButton(
              onPressed: () {
                // Hanlde On Tap
              },
              text: "Update",
            ),

            // Member Since
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  Text(
                    "Author Since: ",
                    style: TextStyle(
                      color: AppColors.greySHADE800,
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                      letterSpacing: 0,
                    ),
                  ),
                  Text(
                    _authorTimeController.text,
                    style: TextStyle(
                      color: AppColors.greySHADE600,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      letterSpacing: 0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
