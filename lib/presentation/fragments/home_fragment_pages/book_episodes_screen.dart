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
import 'package:e_book_ecommerce/presentation/fragments/home_fragment_pages/read_by_episode.dart';
import 'package:e_book_ecommerce/routes/route_strings.dart';
import 'package:flutter/material.dart';

class BookEpisodesScreen extends StatefulWidget {
  final Color color;
  const BookEpisodesScreen({
    super.key,
    required this.color,
  });

  @override
  State<BookEpisodesScreen> createState() => _BookEpisodesScreenState();
}

class _BookEpisodesScreenState extends State<BookEpisodesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: widget.color,
        iconTheme: IconThemeData(color: AppColors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // BG Image
            Container(
              height: 230,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/tree_bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 24, 0, 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        // Book Title
                        Container(
                          width: 155,
                          child: Text(
                            "Pride & Prejudice",
                            maxLines: 2,
                            style: TextStyle(
                              color: AppColors.text_black,
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Book Description
                            Container(
                              width: 130,
                              child: Text(
                                "Pride and Prejudice follows the turbulent relationship between Elizabeth Bennet, the daughter of a country gentleman, and Fitzwilliam Darcy, a rich aristocratic landowner. They must overcome the titular sins of pride and prejudice in order to fall in love and marry. Mr Bennet, owner of the Longbourn estate in Hertfordshire, has five daughters, but his property is entailed and can only be passed to a male heir. His wife also lacks an inheritance, so his family faces becoming poor upon his death. Thus, it is imperative that at least one of the daughters marry well to support the others, which is a primary motivation driving the plot. Pride and Prejudice has consistently appeared near the top of lists of most-loved books among literary scholars and the reading public. It has become one of the most popular novels in English literature, with over 20 million copies sold, and has inspired many derivatives in modern literature.[1][2] For more than a century, dramatic adaptations, reprints, unofficial sequels, films, and TV versions of Pride and Prejudice have portrayed the memorable characters and themes of the novel, reaching mass audiences",
                                maxLines: 6,
                                style: TextStyle(
                                  color: AppColors.greySHADE700,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            // Rating and favorite Options
                            Column(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.favorite_border_outlined,
                                    color: AppColors.text_grey,
                                  ),
                                  onPressed: () {
                                    //
                                  },
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  width: 30,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  // Rating Text
                                  child: Padding(
                                    padding: const EdgeInsets.all(3),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow.shade700,
                                          size: 18,
                                        ),
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                            color: AppColors.text_black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Book Cover Image
                    Container(
                      height: 180,
                      width: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.4),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: Offset(0, 2),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset(
                        'assets/images/download.jpeg',
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Episode List
            /// To add episode # is really easy if you connect with db then only check db and
            /// use indexes if not empty then its change to episode #
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 20, // There are 20 episodes
              itemBuilder: (context, index) {
                final episodeKey = 'episode_${index + 1}';
                final episode = 'gfasdhj ';

                if (episode.isEmpty) {
                  return SizedBox.shrink(); // Skip empty episodes
                }

                return ListTile(
                  contentPadding: EdgeInsets.zero, // Remove default padding
                  title: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: widget.color,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(24, 0, 16, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Epsiode #
                                Text(
                                  'Episode ${index + 1}',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                // Epsiode One Line Detail
                                Text(
                                  "Episode....",
                                  style: TextStyle(
                                    color: AppColors.text_grey,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: AppColors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ReadByEpisode(
                          color: widget.color,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
