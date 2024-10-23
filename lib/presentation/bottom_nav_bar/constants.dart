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

import 'package:e_book_ecommerce/presentation/bottom_nav_bar/sample_widget.dart';
import 'package:e_book_ecommerce/presentation/bottom_nav_bar/size_config.dart';
import 'package:flutter/material.dart';

List<Widget> screens = [
  const SampleWidget(
    label: 'HOME',
    color: Colors.deepPurpleAccent,
  ),
  const SampleWidget(
    label: 'SEARCH',
    color: Colors.amber,
  ),
  const SampleWidget(
    label: 'EXPLORE',
    color: Colors.cyan,
  ),
  const SampleWidget(
    label: 'SETTINGS',
    color: Colors.deepOrangeAccent,
  ),
  const SampleWidget(
    label: 'PROFILE',
    color: Colors.redAccent,
  ),
];

double animatedPositionedLEftValue(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return AppSizes.blockSizeHorizontal * 6.5;
    case 1:
      return AppSizes.blockSizeHorizontal * 25.5;
    case 2:
      return AppSizes.blockSizeHorizontal * 44;
    case 3:
      return AppSizes.blockSizeHorizontal * 63;
    case 4:
      return AppSizes.blockSizeHorizontal * 81.5;
    default:
      return 0;
  }
}

// Replace this color with your icon selected color (Light/Highlighted)
final List<Color> gradient = [
  const Color(0xFF272594).withOpacity(0.7),
  const Color(0xFF272594).withOpacity(0.5),
  const Color(0xFF272594).withOpacity(0.4)
];
