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

class ReadByEpisode extends StatefulWidget {
  final Color color;
  const ReadByEpisode({
    super.key,
    required this.color,
  });

  @override
  State<ReadByEpisode> createState() => _ReadByEpisodeState();
}

class _ReadByEpisodeState extends State<ReadByEpisode> {
  bool showNewNavBar = false;
  bool hideNavBars = false; // To hide both nav bars
  double _fontSize = 16;
  Color _textColor = Colors.black;
  Color _bgColor = Colors.white;
  String _selectedFont = 'Roboto';
  // List of fonts
  final List<String> fonts = [
    'Roboto',
    'Open Sans',
    'Lato',
    'Montserrat',
    'Poppins',
    'Raleway',
  ];
  @override
  Widget build(BuildContext context) {
    final backgroundColor = AppColors.white;
    final textColor = AppColors.text_black;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: widget.color,
        title: Text(
          "Episode 6",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: IconThemeData(color: AppColors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Main Book Content
                    Text(
                      "In the early 19th century, the Bennet family live at their Longbourn estate, situated near the village of Meryton in Hertfordshire, England. Mrs Bennet's greatest desire is to marry off her five daughters to secure their futures."
                      "The arrival of Mr Bingley, a rich bachelor who rents the neighbouring Netherfield estate, gives her hope that one of her daughters might contract a marriage to the advantage, because It is a truth universally acknowledged, that a single man in possession of a good fortune, must be in want of a wife."
                      "At a ball, the family is introduced to the Netherfield party, including Mr Bingley, his two sisters and Mr Darcy, his dearest friend. Mr Bingley's friendly and cheerful manner earns him popularity among the guests. He appears interested in Jane, the eldest Bennet daughter. Mr Darcy, reputed to be twice as wealthy as Mr Bingley, is haughty and aloof, causing a decided dislike of him. He declines to dance with Elizabeth, the second-eldest Bennet daughter, as she is not handsome enough. Although she jokes about it with her friend, Elizabeth is deeply offended. Despite this first impression, Mr Darcy secretly begins to find himself drawn to Elizabeth as they continue to encounter each other at social events, appreciating her wit and frankness."
                      "Mr Collins, the heir to the Longbourn estate, visits the Bennet family with the intention of finding a wife among the five girls under the advice of his patroness Lady Catherine de Bourgh, also revealed to be Mr Darcy's aunt. He decides to pursue Elizabeth. The Bennet family meet the charming army officer George Wickham, who tells Elizabeth in confidence about Mr Darcy's unpleasant treatment of him in the past. Elizabeth, blinded by her prejudice toward Mr Darcy, believes him."
                      "Elizabeth dances with Mr Darcy at a ball, where Mrs Bennet hints loudly that she expects Jane and Bingley to become engaged. Elizabeth rejects Mr Collins' marriage proposal, to her mother's fury and her father's relief. Mr Collins subsequently proposes to Charlotte Lucas, a friend of Elizabeth, and is accepted."
                      "Having heard Mrs Bennet's words at the ball and disapproving of the marriage, Mr Darcy joins Mr Bingley in a trip to London and, with the help of his sisters, persuades him not to return to Netherfield. A heartbroken Jane visits her Aunt and Uncle Gardiner in London to raise her spirits, while Elizabeth's hatred for Mr Darcy grows as she suspects he was responsible for Mr Bingley's departure.",
                      style: GoogleFonts.getFont(
                        _selectedFont,
                        fontSize: _fontSize,
                        color: _textColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          if (hideNavBars)
            InkWell(
              child: Icon(
                Icons.arrow_drop_up,
                color: _textColor,
                size: 30,
              ),
              onTap: () {
                //
                setState(() {
                  hideNavBars = false;
                });
              },
            ),
        ],
      ),
      bottomNavigationBar: hideNavBars
          ? null // When hideNavBars is true, hide both nav bars
          : AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              transitionBuilder: (Widget child, Animation<double> animation) {
                final offsetAnimation = Tween<Offset>(
                  begin: child.key == ValueKey('oldNavBar')
                      ? Offset(0, 0)
                      : Offset(0, 1),
                  end: child.key == ValueKey('newNavBar')
                      ? Offset(0, 1)
                      : Offset(0, 0),
                ).animate(animation);

                return SlideTransition(position: offsetAnimation, child: child);
              },
              child: showNewNavBar ? _buildNewNavBar() : _buildOldNavBar(),
            ),
    );
  }

// Build the old navigation bar
  // Old navigation bar
  Widget _buildOldNavBar() {
    return Container(
      color: AppColors.transparent,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
        child: Container(
          color: AppColors.transparent,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomAppBar(
                  key: ValueKey('oldNavBar'),
                  height: 55,
                  shape: CircularNotchedRectangle(),
                  color: widget.color,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        // Icons
                        IconButton(
                          icon: Icon(
                            Icons.favorite_border_outlined,
                            color: AppColors.white,
                          ),
                          onPressed: () {
                            // Handle On Tap
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.nightlight_round,
                            color: AppColors.white,
                          ),
                          onPressed: () {
                            setState(() {
                              showNewNavBar = !showNewNavBar;
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.share, color: Colors.white),
                          onPressed: () {
                            // final String appLink =
                            //     ''; // Replace with your app's link
                            // Share.share('Check out this app: $appLink');
                          },
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.music_note,
                            color: AppColors.white,
                          ),
                          onPressed: () async {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: -11,
                child: InkWell(
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: AppColors.white,
                    size: 30,
                  ),
                  onTap: () {
                    setState(() {
                      hideNavBars = true; // Hide both nav bars
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Build the new navigation bar
  Widget _buildNewNavBar() {
    final iconColor = AppColors.text_grey;
    final buttonColor = AppColors.cream;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomAppBar(
          key: ValueKey('newNavBar'),
          height: 300,
          shape: CircularNotchedRectangle(),
          color: widget.color,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (showNewNavBar) ...[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // Icons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            // crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.backspace_outlined,
                                  color: Colors.white,
                                  // size: 32,
                                ),
                                onPressed: () {
                                  setState(() {
                                    showNewNavBar = false;
                                  });
                                },
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          // Container(
                          //   height: 120, // Adjust the height as needed
                          //   child: VerticalDivider(
                          //     width: 20,
                          //     thickness: 2, // Thickness of the divider line
                          //     color: Colors.white,
                          //   ),
                          // ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  // Adjust TExt Size
                                  Container(
                                    width: 240,
                                    child: SliderTheme(
                                      data: SliderThemeData(
                                        activeTrackColor: Colors.blue,
                                        inactiveTrackColor: AppColors.text_grey,
                                        thumbColor: AppColors.white,
                                        overlayColor:
                                            Colors.white.withOpacity(0.2),
                                        trackHeight: 4.0,
                                        thumbShape: RoundSliderThumbShape(
                                            enabledThumbRadius: 12.0),
                                      ),
                                      child: Slider(
                                        value: _fontSize,
                                        min: 7,
                                        max: 48,
                                        onChanged: (value) {
                                          setState(() {
                                            _fontSize = value;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "A",
                                    style: TextStyle(
                                      color: AppColors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              // Font dropdown menu
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 240,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: AppColors.white,
                                        width:
                                            1, // Change to your desired border width
                                      ),
                                    ),
                                    child: Stack(
                                      alignment: Alignment.centerRight,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              4,
                                              0,
                                              100,
                                              0), // Adjust right padding for the icon
                                          child: DropdownButton<String>(
                                            value: _selectedFont,
                                            dropdownColor: Colors.blueGrey,
                                            iconEnabledColor:
                                                AppColors.transparent,
                                            underline: Container(),
                                            onChanged: (String? newValue) {
                                              setState(() {
                                                _selectedFont = newValue!;
                                              });
                                            },
                                            items: fonts
                                                .map<DropdownMenuItem<String>>(
                                                    (String font) {
                                              return DropdownMenuItem<String>(
                                                value: font,
                                                child: Text(
                                                  font,
                                                  style: GoogleFonts.getFont(
                                                    font,
                                                    color: AppColors.white,
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                        Positioned(
                                          right:
                                              8, // Adjust the position of the icon
                                          child: Icon(
                                            Icons.arrow_drop_down,
                                            color: AppColors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Text Color",
                                    style: TextStyle(
                                      color: AppColors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 32,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        padding: EdgeInsets.zero,
                                      ),
                                      onPressed: () {
                                        //
                                      },
                                      child: Center(
                                        child: Icon(
                                          Icons.color_lens_outlined,
                                          color: AppColors.greySHADE800,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "BG Colors",
                                    style: TextStyle(
                                      color: AppColors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 32,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        padding: EdgeInsets.zero,
                                      ),
                                      onPressed: () {
                                        //
                                      },
                                      child: Center(
                                        child: Icon(
                                          Icons.color_lens_outlined,
                                          color: AppColors.greySHADE800,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              SizedBox(
                                height: 8,
                              ),

                              Row(
                                children: [
                                  Container(
                                    width: 32,
                                    height: 32,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        padding: EdgeInsets.zero,
                                      ),
                                      onPressed: () {
                                        // HAndle On Tap
                                      },
                                      child: Center(
                                        child: Icon(
                                          Icons.phone_android_outlined,
                                          color: AppColors.greySHADE800,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    width: 32,
                                    height: 32,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        padding: EdgeInsets.zero,
                                      ),
                                      onPressed: () {
                                        // Handle On Tap
                                      },
                                      child: Center(
                                        child: Icon(
                                          Icons.screen_rotation_outlined,
                                          color: AppColors.greySHADE800,
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
