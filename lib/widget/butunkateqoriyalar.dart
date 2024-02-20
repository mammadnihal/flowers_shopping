import 'package:flutter/material.dart';
import 'package:gul_sebeti/core/gulkategory.dart';
import 'package:gul_sebeti/seyfeler/kateqoriya.dart';

class ButunKateqoriyalar extends StatelessWidget {
   ButunKateqoriyalar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 10)),
        GulKateqoriya(
          kategoriyaAdi: "Qızıl gül",
          kategoriyaRengi: Color.fromARGB(255, 74, 127, 243),
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
        GulKateqoriya(
          kategoriyaAdi: "Lalə",
          kategoriyaRengi: Color.fromARGB(255, 73, 238, 169),
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
        GulKateqoriya(
          kategoriyaAdi: "Çox satılan",
          kategoriyaRengi: Color.fromARGB(255, 209, 74, 243),
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
        GulKateqoriya(
          kategoriyaAdi: "Qızıl gül",
          kategoriyaRengi: Color.fromARGB(255, 243, 74, 130),
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
        GulKateqoriya(
          kategoriyaAdi: "Özəl gün",
          kategoriyaRengi: Color.fromARGB(255, 243, 184, 74),
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
        GulKateqoriya(
          kategoriyaAdi: "Yenilə bilən",
          kategoriyaRengi: Color.fromARGB(255, 74, 243, 243),
        ),
        Padding(padding: EdgeInsets.only(left: 10)),
      ],
    );
  }
}