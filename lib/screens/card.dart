import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card'),
      ),
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CumtomCardType1(),
            SizedBox(height: 10),
            CumtomCardType2(
              name: 'Un Hermoso paisaje',
              ImageUrl:
                  'http://t1.gstatic.com/licensed-image?q=tbn:ANd9GcRtsun2B92hWkPymEN2lImcwCO7YhH5Y-so0CS0VjhPCKzp1tGsxcLKAugBOM0O1ma1SW8Z7RnXFOE-XnbMEVM',
            ),
            SizedBox(height: 20),
            CumtomCardType2(
              ImageUrl:
                  'https://img.freepik.com/premium-photo/beautiful-moraine-lake-banff-national-park-alberta-canada_131985-98.jpg?w=2000',
            ),
            SizedBox(height: 20),
            CumtomCardType2(
              ImageUrl:
                  'https://i0.wp.com/fotogasteiz.com/blog/wp-content/uploads/2019/01/sighray2.jpg?fit=1024%2C683&ssl=1',
            ),
            SizedBox(height: 100),
          ]),
    );
  }
}
