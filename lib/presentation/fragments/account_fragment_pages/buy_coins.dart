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
import 'package:flutter/services.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class BuyCoins extends StatefulWidget {
  const BuyCoins({super.key});

  @override
  State<BuyCoins> createState() => _BuyCoinsState();
}

class _BuyCoinsState extends State<BuyCoins> {
  // Controllers
  late TextEditingController _spinsController;
  // Coins List And Reward
  List<int> items = [200, 700, 225, 900, 500, 300, 100, 150, 135, 1000];
  List<String> imagePaths = [
    'assets/images/coin3.png',
  ];
  int reward = 0;
  // final selected = BehaviorSubject<int>();
  @override
  void initState() {
    super.initState();
    _spinsController = TextEditingController();
  }

  @override
  void dispose() {
    // selected.close();
    _spinsController.dispose();
    super.dispose();
  }

  void _spinWheel() {
    final spins = int.tryParse(_spinsController.text) ?? 0;

    if (spins > 0) {
      setState(() {
        // selected.add(Fortune.randomInt(0, items.length));
      });
      // After the spin animation ends, update spins and reward
      // selected.stream.first.then((_) async {
      setState(() {
        // reward = items[selected.value];
      });
      print('Reward: $reward');
      // await updateCoins(reward);
      // await updateUserSpins(spins - 1); // Decrement spins
      // _fetchUserData(); // Refresh user data
    } else {
      // Inform user that spins are not available
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('No spins available')),
      );
    }
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Buy Coins",
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 32),
            Container(
              height: 300,
              child: FortuneWheel(
                // selected: selected.stream,
                animateFirst: false,
                duration: Duration(seconds: 10),
                rotationCount: 60,
                items: [
                  for (int i = 0; i < items.length; i++) ...<FortuneItem>{
                    FortuneItem(
                      style: FortuneItemStyle(
                        color: AppColors.primaryColor,
                        borderColor: Colors.white,
                        borderWidth: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(items[i].toString()),
                          SizedBox(width: 10),
                          Image.asset(
                            imagePaths[i % imagePaths.length],
                            width: 30,
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  }
                ],
                onAnimationEnd: () async {
                  // Nothing needed here because reward and spins are updated after spin
                  final spins = int.tryParse(_spinsController.text) ?? 0;
                  print('Reward: $reward');
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                //
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Spin",
                      style: TextStyle(color: AppColors.white),
                    ),
                    SizedBox(width: 4),
                    Text(_spinsController.text),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Special Offers",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColors.text_black,
                )),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: MediaQuery.of(context).size.height *
                    1, // Adjust height as needed
                child: CustomScrollView(
                  slivers: [
                    SliverGrid(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return OfferCard(index: index);
                        },
                        childCount: 6, // Number of offers
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OfferCard extends StatelessWidget {
  final int index;

  const OfferCard({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define offers with image paths
    final offers = [
      {'coins': 500, 'price': 5.99, 'image': 'assets/images/coin3.png'},
      {'coins': 800, 'price': 9.99, 'image': 'assets/images/coin3.png'},
      {'coins': 1600, 'price': 19.99, 'image': 'assets/images/coin3.png'},
      {'coins': 2500, 'price': 29.99, 'image': 'assets/images/coin3.png'},
      {'coins': 4000, 'price': 49.99, 'image': 'assets/images/coin3.png'},
      {'coins': 7000, 'price': 69.99, 'image': 'assets/images/coin3.png'},
    ];

    final offer = offers[index];
    final imagePath = offer['image'] as String; // Cast to String

    return Card(
      color: Colors.grey.shade300,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            width: 70,
            height: 70,
            fit: BoxFit.cover,
          ),
          Text(
            "${offer['coins']} Coins",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.text_black,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Handle the offer purchase
            },
            child: Text(
              "\$${offer['price']}",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              iconColor: AppColors.primaryColor,
              backgroundColor: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
