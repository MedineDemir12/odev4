import 'package:flutter/material.dart';
import '../anasayfa.dart';
import '../theme/app_colors.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({super.key});

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: app_colors.yellowColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: app_colors.blackColor),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const Anasayfa()),
                  (route) => false,
            );
          },
        ),
        title: const Text(
          "SAYFA Y",
          style: TextStyle(
            color: app_colors.blackColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: app_colors.yellowColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Sayfa Y ",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
