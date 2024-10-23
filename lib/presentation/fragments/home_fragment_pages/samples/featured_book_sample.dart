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
import 'package:e_book_ecommerce/routes/route_strings.dart';
import 'package:flutter/material.dart';

class FeaturedBookSample extends StatefulWidget {
  final void Function(int index)? onTap;

  const FeaturedBookSample({
    super.key,
    required this.onTap,
  });

  @override
  State<FeaturedBookSample> createState() => _FeaturedBookSampleState();
}

class _FeaturedBookSampleState extends State<FeaturedBookSample> {
  // Dummy data with asset images
  List<Map<String, dynamic>> data = [
    {
      'title': 'Book One',
      'author': 'Author One',
      'image': 'assets/books/book1.jpeg',
    },
    {
      'title': 'Book Two',
      'author': 'Author Two',
      'image': 'assets/books/book2.jpeg',
    },
    {
      'title': 'Book Three',
      'author': 'Author Three',
      'image': 'assets/books/book3.jpeg',
    },
    {
      'title': 'Book Four',
      'author': 'Author Four',
      'image': 'assets/books/book4.jpeg',
    },
    {
      'title': 'Book Five',
      'author': 'Author Five',
      'image': 'assets/books/book5.jpeg',
    },
    {
      'title': 'Book Six',
      'author': 'Author Six',
      'image': 'assets/books/book6.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: 240,
        child: data.isEmpty
            ? Center(child: Text('No results found'))
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, BookPreviewroute);
                      },
                      child: Container(
                        width: 130,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Decoration
                              Container(
                                width: 120,
                                height: 160,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: AppColors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.17),
                                      offset: Offset(0, 15),
                                      blurRadius: 10,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),

                                // Image
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.asset(
                                    data[index][
                                        'image'], // Use the asset image directly
                                    fit: BoxFit.fill,
                                    height: 200,
                                    width: 200,
                                  ),
                                ),
                              ),

                              SizedBox(
                                height: 16,
                              ),

                              // Book Title
                              Text(
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                data[index]['title'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.text_black,
                                  fontSize: 14,
                                ),
                              ),

                              // Book Author
                              Text(
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                data[index]['author'],
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.greySHADE700,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
