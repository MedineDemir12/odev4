import 'package:flutter/material.dart';

import 'package:odev4/theme/app_colors.dart';
import 'package:odev4/components/sayfaA.dart';
import 'package:odev4/components/sayfaB.dart';
import 'package:odev4/components/sayfaX.dart';
import 'package:odev4/components/sayfaY.dart';


class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: app_colors.blueColor,
      appBar: AppBar(title: const Text("ANASAYFA",style: TextStyle(color: app_colors.blackColor,fontSize: 25,fontWeight: FontWeight.bold,  ),),
        backgroundColor: app_colors.blueColor,
        centerTitle: true,
      ),
      body: Center(


        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [

            ElevatedButton(onPressed: (){


              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaA()));

            }, child: const Text("GIT > A",style: TextStyle(color: app_colors.whiteColor,fontSize: 25),),
                style: ElevatedButton.styleFrom(

                    backgroundColor: app_colors.purpleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Köşeler köşeli
                  ), minimumSize: const Size(200, 40), padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                )
            ),

            ElevatedButton(onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) => SayfaX()));

            }, child: const Text("GIT > X",style: TextStyle(color: app_colors.whiteColor,fontSize: 25),),

                style: ElevatedButton.styleFrom(

                    backgroundColor: app_colors.purpleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Köşeler köşeli
                  ),minimumSize: const Size(200, 40), padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                )

            ),

          ],

        ),

      ),


    );
  }
}
