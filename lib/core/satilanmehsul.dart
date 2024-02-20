import 'package:flutter/material.dart';

class SatilanBoyuk extends StatelessWidget {
  const SatilanBoyuk({
    super.key,
    required this.sekilURL,
    required this.satilanMehsulRenk,
  });
final String sekilURL;
final Color satilanMehsulRenk;
  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(15),
            /// GOLGE EFEKTI EKLER
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: satilanMehsulRenk,
                spreadRadius: 1,
                blurRadius: 100,
              )
            ]),
            // ****************************************
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: 
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child:                    
                    Image.asset(
                      sekilURL,
                      fit: BoxFit.cover,
                    ),
                  
                ),
                
          );
  }
}
