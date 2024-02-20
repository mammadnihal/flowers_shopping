import 'package:flutter/material.dart';
import 'package:flutter_masonry_view/flutter_masonry_view.dart';
import 'package:gul_sebeti/core/slidergul.dart';
import 'package:gul_sebeti/seyfeler/kateqoriya.dart';
import 'package:gul_sebeti/widget/butunkateqoriyalar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
 
class _HomePageState extends State<HomePage> {
   var exam = Kateqoriyalar().items;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(left: 25)),
                const Text(
                  "Nə axtarırsan?",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: ButunKateqoriyalar(),
                ),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SliderGul(
                        sekilURL: "assets/gul1.jpg",
                      ),
                      SliderGul(
                        sekilURL: "assets/gul2.jpg",
                      ),
                    ],
                  ),
                ),
                const Text(
                  "Ən çox satılan",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                           padding: EdgeInsets.all(8),
                  width: 175,
                  height: 250,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/satis2.jpg",
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                           padding: EdgeInsets.all(8),
                  width: 175,
                  height: 250,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/satis2.jpg",
                              fit: BoxFit.cover,
                            )),
                      ),
                      Container(
                           padding: EdgeInsets.all(8),
                  width: 175,
                  height: 250,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              "assets/satis2.jpg",
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 25,
                  height: 20,
                ),
                
               
                  
               
                MasonryView(
                    listOfItem: exam,
                    numberOfColumn: 2,
                    itemBuilder: (exam)
                    {
                      return Image.asset(exam);
                    }
                    
                    )
              ],
            ),
          ),
        ));
  }
}
