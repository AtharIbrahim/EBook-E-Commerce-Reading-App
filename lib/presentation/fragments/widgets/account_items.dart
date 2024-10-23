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
import 'package:google_fonts/google_fonts.dart';

class AccountItems extends StatelessWidget {
  final String text;
  final Icon icon;
  final void Function()? onTap;
  const AccountItems({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            // icon
            icon,

            SizedBox(
              width: 16,
            ),

            // text
            Text(
              text,
              style: GoogleFonts.poppins(
                color: AppColors.greySHADE700,
                fontWeight: FontWeight.w600,
                fontSize: 16,
                letterSpacing: 0,
              ),
            ),

            Spacer(),

            // arrow icon
            Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: AppColors.greySHADE600,
            ),
          ],
        ),
      ),
    );
  }
}
