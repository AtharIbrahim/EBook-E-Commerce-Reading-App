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
import 'package:e_book_ecommerce/presentation/fragments/home_fragment_pages/book_episodes_screen.dart';
import 'package:e_book_ecommerce/routes/route_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:palette_generator/palette_generator.dart';

class BookPreviewScreen extends StatefulWidget {
  const BookPreviewScreen({super.key});

  @override
  State<BookPreviewScreen> createState() => _BookPreviewScreenState();
}

class _BookPreviewScreenState extends State<BookPreviewScreen> {
  int progress = 12; // Progress (0 - 100)

  Color appBarColor = Colors.white; // Default color
  String imagePath = 'assets/books/book1.jpeg';

  @override
  void initState() {
    super.initState();
    _setAppBarColor();
  }

  Future<void> _setAppBarColor() async {
    try {
      // Load image from assets
      final imageData = await rootBundle.load(imagePath);
      final imageBytes = imageData.buffer.asUint8List();

      // Use the image to extract the dominant color
      final paletteGenerator = await PaletteGenerator.fromImageProvider(
        MemoryImage(imageBytes),
        maximumColorCount: 10,
      );

      // Check if we found colors and set the dominant or darkest one
      final dominantColor =
          paletteGenerator.dominantColor?.color ?? Colors.black;

      setState(() {
        appBarColor = dominantColor;
      });
    } catch (e) {
      print('Error setting app bar color: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    // Change the color of the mobile above appbar status bar
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: AppColors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // Place AppBar inside Stack
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: appBarColor,
                    ),
                    child: AppBar(
                      backgroundColor: AppColors.transparent,
                      elevation: 0,
                      iconTheme: IconThemeData(color: AppColors.white),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        // Review Count Text
                        children: [
                          InkWell(
                            splashColor: Colors.transparent.withOpacity(0),
                            highlightColor: Colors.transparent.withOpacity(0),
                            // OnTap
                            onTap: () {
                              Navigator.pushNamed(context, BookReviewsroute);
                            },
                            child: Text(
                              '67 REVIEWS',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Review Percent Text
                      actions: [
                        InkWell(
                          splashColor: Colors.transparent.withOpacity(0),
                          highlightColor: Colors.transparent.withOpacity(0),
                          onTap: () {
                            // Handle Your Review Page
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                            child: Container(
                              width: 40,
                              height: 32,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.white.withOpacity(0.3),
                                    spreadRadius: 3,
                                    blurRadius: 12,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                                color: AppColors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  '4.5',
                                  style: TextStyle(
                                    color: appBarColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  child: Stack(
                    children: [
                      Container(
                        height: screenHeight * 0.22,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: appBarColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 32, 10, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // After toolbar box and Book Cover Page
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 0, 0),
                                  child: Container(
                                    height: 280,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.white.withOpacity(0.4),
                                          spreadRadius: 2,
                                          blurRadius: 10,
                                          offset: Offset(-4, -4),
                                        ),
                                      ],
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Image.asset(
                                        imagePath,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 10,
                                ),

                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          // Book View Count Text
                                          Row(
                                            children: [
                                              Text(
                                                '12,789',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.yellow.shade800,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              Text(
                                                "VIEWS",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.yellow.shade800,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),

                                          // Book Readers Count Text
                                          Row(
                                            children: [
                                              Text(
                                                "1,789",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.yellow.shade800,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 6,
                                              ),
                                              Text(
                                                "READERS",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.yellow.shade800,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 90,
                                      ),

                                      // Add Or Remove FAV
                                      Column(
                                        children: [
                                          IconButton(
                                            icon: Icon(
                                              Icons.favorite_border_outlined,
                                              color: Colors.red,
                                            ),
                                            onPressed: () {
                                              //
                                            },
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 16,
                            ),

                            // Book Author Name
                            Text(
                              "Jane Austen",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.greySHADE800,
                                  fontWeight: FontWeight.w700),
                            ),

                            SizedBox(
                              height: 2,
                            ),

                            // Book Title Name
                            Text(
                              "Pride & Prejudice",
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                                color: AppColors.text_black,
                              ),
                            ),

                            Divider(
                              thickness: 1.5,
                              color: AppColors.greySHADE800,
                            ),

                            SizedBox(
                              height: 16,
                            ),

                            // Description Text
                            Text(
                              "DESCRIPTION",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: AppColors.text_black,
                              ),
                            ),

                            SizedBox(
                              height: 8,
                            ),

                            // Description
                            Text(
                              "Pride and Prejudice follows the turbulent relationship between Elizabeth Bennet, the daughter of a country gentleman, and Fitzwilliam Darcy, a rich aristocratic landowner. They must overcome the titular sins of pride and prejudice in order to fall in love and marry. Mr Bennet, owner of the Longbourn estate in Hertfordshire, has five daughters, but his property is entailed and can only be passed to a male heir. His wife also lacks an inheritance, so his family faces becoming poor upon his death. Thus, it is imperative that at least one of the daughters marry well to support the others, which is a primary motivation driving the plot. Pride and Prejudice has consistently appeared near the top of lists of most-loved books among literary scholars and the reading public. It has become one of the most popular novels in English literature, with over 20 million copies sold, and has inspired many derivatives in modern literature.[1][2] For more than a century, dramatic adaptations, reprints, unofficial sequels, films, and TV versions of Pride and Prejudice have portrayed the memorable characters and themes of the novel, reaching mass audiences",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: AppColors.greySHADE800,
                              ),
                              // textDirection:
                              //     widget.itemData['description'].toString() !=
                              //                 null &&
                              //             isUrdu(widget.itemData['description']
                              //                 .toString())
                              //         ? TextDirection.rtl
                              //         : TextDirection.ltr,
                            ),

                            SizedBox(
                              height: 16,
                            ),

                            // Publish By
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                // Text
                                Text(
                                  'Publish By:  ',
                                  style: TextStyle(
                                    color: AppColors.text_black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),

                                // Author Image
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, AuthorDetailsroute);
                                  },
                                  child: Container(
                                    width: 30,
                                    height: 30,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromARGB(255, 218, 218, 218),
                                    ),
                                    child: Icon(
                                      Icons.person,
                                      color: AppColors.text_grey,
                                      size: 24,
                                    ),
                                  ),
                                ),

                                SizedBox(
                                  width: 8,
                                ),

                                // Author Email
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, AuthorDetailsroute);
                                  },
                                  child: Text(
                                    "aikpak24@gmail.com",
                                    style: TextStyle(
                                      color: AppColors.text_black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(
                              height: 16,
                            ),

                            Text(
                              "Comments",
                              style: TextStyle(
                                color: AppColors.text_black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),

                            SizedBox(
                              height: 100,
                            ),

                            // Comment Textfield
                            // Column(
                            //   crossAxisAlignment: CrossAxisAlignment.end,
                            //   children: [
                            //     Stack(children: [
                            //       SizedBox(
                            //         // height: 50,
                            //         child: TextField(
                            //           controller: _commentController,
                            //           obscureText: false,
                            //           maxLines: 4,
                            //           minLines: 1,
                            //           style: const TextStyle(
                            //             color: Colors.black,
                            //             fontWeight: FontWeight.w500,
                            //           ),
                            //           decoration: InputDecoration(
                            //             contentPadding: const EdgeInsets.only(
                            //               left: 8,
                            //               bottom: 34,
                            //               right: 34,
                            //             ),
                            //             hintText: "Record Your Comment",
                            //             hintStyle: const TextStyle(
                            //               color: Colors.grey,
                            //             ),
                            //             filled: true,
                            //             fillColor: Colors.white,
                            //             border: OutlineInputBorder(
                            //               borderRadius:
                            //                   BorderRadius.circular(10),
                            //               borderSide: const BorderSide(
                            //                 width: 1.7,
                            //               ),
                            //             ),
                            //             enabledBorder: OutlineInputBorder(
                            //               borderSide: BorderSide(
                            //                 color: Theme.of(context)
                            //                     .colorScheme
                            //                     .primary,
                            //                 width: 1.7,
                            //               ),
                            //               borderRadius:
                            //                   BorderRadius.circular(10),
                            //             ),
                            //             focusedBorder: OutlineInputBorder(
                            //               borderSide: BorderSide(
                            //                 color: Theme.of(context)
                            //                     .colorScheme
                            //                     .primary,
                            //                 width: 1.7,
                            //               ),
                            //               borderRadius:
                            //                   BorderRadius.circular(10),
                            //             ),
                            //           ),
                            //         ),
                            //       ),

                            //       // Positioned Icon at the bottom right
                            //       Positioned(
                            //         bottom: 8,
                            //         right: 8,
                            //         child: InkWell(
                            //           onTap: commentSend,
                            //           child: Icon(
                            //             Icons.send,
                            //             color: Colors.grey,
                            //           ),
                            //         ),
                            //       ),
                            //     ]),
                            //   ],
                            // ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Bottom Button For selling books and reading books
          /// if book is paid then goes for payment options like
          /// by coins and by card
          /// if user purchased book then show read option in the button
          /// also show loading percentage of reading book in that button
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
              child: Stack(
                children: [
                  // The ElevatedButton itself
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appBarColor,
                      shadowColor: AppColors.transparent, // Remove any shadow
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      minimumSize: Size(double.infinity, 60),
                    ),
                    onPressed: () {
                      // Handle after tap
                    },
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [],
                      ),
                    ),
                  ),

                  // Background loading bar
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: AppColors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: FractionallySizedBox(
                          widthFactor: progress / 100,
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 117, 114, 255),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 14, 16, 0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BookEpisodesScreen(
                                  color: appBarColor,
                                ),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Read Now",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(width: 16),
                              Text(
                                "12%",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
