import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';

class Kateqoriyalar extends StatelessWidget {
  Kateqoriyalar({super.key,  this.kategoriyaAdiAppBar});
  final String? kategoriyaAdiAppBar;

  final items = [
    'assets/gul1.jpg',
    'assets/gul2.jpg',
    'assets/satis3.jpg',
    'assets/satis2.jpg',
    'assets/satis4.jpg',
    'assets/satis2.jpg',
    'assets/satis3.jpg',
    'assets/satis2.jpg',
    'assets/satis4.jpg',
    'assets/satis2.jpg',
    'assets/satis3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("$kategoriyaAdiAppBar kateqoriyası"),
      ),
      body: SingleChildScrollView(
        child: MasonryView(
          listOfItem: items,
          numberOfColumn: 2,
          itemBuilder: (item) {
            return Image.asset(item);
          },
        ),
      ),
    );
  }
}
