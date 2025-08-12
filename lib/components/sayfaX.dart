import 'package:flutter/material.dart';
import 'package:odev4/components/sayfaY.dart';

import '../theme/app_colors.dart';




class SayfaX extends StatefulWidget {
  const SayfaX({super.key});

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_colors.grayColor,
      appBar: AppBar(title: const Text("SAYFA X",
        style: TextStyle(color: app_colors.whiteColor,fontSize: 25,
          fontWeight: FontWeight.bold,),),
        backgroundColor: app_colors.grayColor,
        centerTitle: true,
      ),

      body: Center(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            ElevatedButton(onPressed: (){


              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaY()));

            }, child: const Text("GİT > Y",style: TextStyle(color: app_colors.whiteColor,fontSize: 25,fontWeight: FontWeight.bold),),
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
