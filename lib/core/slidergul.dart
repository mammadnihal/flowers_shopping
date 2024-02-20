import 'package:flutter/material.dart';

class SliderGul extends StatelessWidget {
  const SliderGul({
    super.key,
    required this.sekilURL,
  });
final String sekilURL;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 15, horizontal: 15),
      child: Container(
        /// GOLGE EFEKTI EKLER
        decoration: const BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromARGB(76, 0, 0, 0),
            spreadRadius: 5,
            blurRadius: 12,
          )
        ]),
        // ****************************************
        width: 385,
        height: 225,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              sekilURL,
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
