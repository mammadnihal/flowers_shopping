import 'package:flutter/material.dart';
import 'package:gul_sebeti/seyfeler/kateqoriya.dart';

class GulKateqoriya extends StatelessWidget {
  const GulKateqoriya({
    super.key,
    required this.kategoriyaAdi,
    required this.kategoriyaRengi,
  });
final String kategoriyaAdi;
final Color kategoriyaRengi;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Kateqoriyalar(kategoriyaAdiAppBar: kategoriyaAdi)));
      },
      child: Container(
        height: 35,
        padding: const EdgeInsets.only(left: 15,right: 15),
       decoration:  BoxDecoration(
         
         borderRadius: BorderRadius.circular(15),
        color: kategoriyaRengi,
       ),
       child: Center(child: Text(kategoriyaAdi, style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),)),
                        ),
    );
  }
}