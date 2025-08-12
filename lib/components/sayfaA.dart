import 'package:flutter/material.dart';
import 'package:odev4/components/sayfaB.dart';


import '../theme/app_colors.dart';


class SayfaA extends StatefulWidget {
  const SayfaA({super.key});

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_colors.orangeColor,
      appBar: AppBar(title: const Text("SAYFA A",style: TextStyle(color: app_colors.blackColor,fontSize: 25,fontWeight: FontWeight.bold,),),
        backgroundColor: app_colors.orangeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, // Köşeler köşeli
        ),
        centerTitle: true,
      ),

      body: Center(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            ElevatedButton(onPressed: (){


              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaB()));

            }, child: const Text("GİT > B",style: TextStyle(color: app_colors.whiteColor,fontSize: 25,fontWeight: FontWeight.bold,)),
                style: ElevatedButton.styleFrom(

                    backgroundColor: app_colors.purpleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Köşeler köşeli
                  ), padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                )
            ),
          ],

        ),

      ),
    );
  }
}
