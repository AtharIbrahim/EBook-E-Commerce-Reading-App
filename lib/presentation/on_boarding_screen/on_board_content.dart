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
//

import 'package:flutter/material.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    super.key,
    required this.description,
    required this.image,
    required this.isTextOnTop,
    required this.title,
  });

  final bool isTextOnTop;
  final String title, description, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),

        if (isTextOnTop)
          OnbordTitleDescription(
            title: title,
            description: description,
          ),
        if (isTextOnTop) const Spacer(),

        /// if you are using SVG then replace [Image.asset] with [SvgPicture.asset]

        Image.asset(
          image,
          height: 250,
        ),
        if (!isTextOnTop) const Spacer(),
        if (!isTextOnTop)
          const OnbordTitleDescription(
            title: "Welcome to BEEPEND!",
            description:
                "Discover thousands of ebooks across all genres. Whether you love fiction, non-fiction, or self-improvement, we’ve got it all!",
          ),

        const Spacer(),
      ],
    );
  }
}

class OnbordTitleDescription extends StatelessWidget {
  const OnbordTitleDescription({
    super.key,
    required this.title,
    required this.description,
  });

  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 16),
        Text(
          description,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
