import 'package:flutter/material.dart';
import 'package:odev4/components/sayfaY.dart';

import '../theme/app_colors.dart';




class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_colors.blackColor,
      appBar: AppBar(title: const Text("SAYFA B",style: TextStyle(color: app_colors.whiteColor,fontSize: 25,fontWeight: FontWeight.bold,),),
        backgroundColor: app_colors.blackColor,
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


              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaY()));

            }, child: const Text("GİT > Y",style: TextStyle(color: app_colors.whiteColor,fontSize: 25,fontWeight: FontWeight.bold,),),
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

