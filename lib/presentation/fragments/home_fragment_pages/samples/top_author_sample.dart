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

class TopAuthorSample extends StatefulWidget {
  final void Function(int index)? onTap;

  const TopAuthorSample({
    super.key,
    required this.onTap,
  });

  @override
  State<TopAuthorSample> createState() => _TopAuthorSampleState();
}

class _TopAuthorSampleState extends State<TopAuthorSample> {
  // Dummy data for authors with asset images
  List<Map<String, dynamic>> data = [
    {
      'name': 'Author One',
      'image': 'assets/books/author6.jpeg',
    },
    {
      'name': 'Author Two',
      'image': 'assets/books/author5.jpeg',
    },
    {
      'name': 'Author Three',
      'image': 'assets/books/author4.jpeg',
    },
    {
      'name': 'Author Four',
      'image': 'assets/books/author3.jpeg',
    },
    {
      'name': 'Author Five',
      'image': 'assets/books/author2.jpeg',
    },
    {
      'name': 'Author Six',
      'image': 'assets/books/author1.jpeg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        height: 70,
        child: data.isEmpty
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(32, 8, 0, 0),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AuthorHistoryroute);
                      },
                      child: Container(
                        width: 70,
                        margin: EdgeInsets.only(right: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Decoration
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: AppColors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                      offset: Offset(0, 1),
                                      blurRadius: 2,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),

                                // Author Image
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: Image.asset(
                                    data[index]['image'],
                                    fit: BoxFit.cover,
                                    height: 70,
                                    width: 70,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8,
                              ),

                              // Author Name
                              Text(
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                data[index]['name'],
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
