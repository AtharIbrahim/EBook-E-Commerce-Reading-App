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

class AccountTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hinttext2;
  final Icon icon;
  final bool editable;
  final TextInputType keyboardType;
  final int? MaxLines;

  const AccountTextfield({
    super.key,
    required this.title,
    required this.hinttext2,
    required this.icon,
    required this.controller,
    required this.editable,
    required this.keyboardType,
    required this.MaxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Icon Container
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 231, 231, 231),
            ),
            child: icon,
          ),

          const SizedBox(width: 16),

          // Column for Name Text and TextField
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Container with TextField and Divider
                Container(
                  color: AppColors.white,
                  child: Stack(
                    children: [
                      // TextField
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                        child: TextField(
                          enabled: editable,
                          controller: controller,
                          keyboardType: keyboardType,
                          maxLines: MaxLines,
                          style: TextStyle(
                            color: AppColors.text_black,
                            fontWeight: FontWeight.w500,
                          ),
                          decoration: InputDecoration(
                            hintText: hinttext2,
                            hintStyle: TextStyle(
                              color: AppColors.text_grey,
                            ),
                            filled: true,
                            fillColor: AppColors.white,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                          ),
                        ),
                      ),

                      // Divider
                      Positioned(
                        bottom: -4,
                        // top: 2,
                        left: 0,
                        right: 0,
                        child: Divider(
                          thickness: 0.7,
                          color: AppColors.greySHADE700,
                        ),
                      ),

                      // Title Text
                      // Positioned(
                      //   bottom: 0,
                      //   left: 0,
                      //   right: 0,
                      //   top: 0,
                      //   child: Text(
                      //     title,
                      //     style: TextStyle(
                      //       color: Colors.grey.shade700,
                      //       fontWeight: FontWeight.w600,
                      //       fontSize: 16,
                      //       letterSpacing: 0,
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
