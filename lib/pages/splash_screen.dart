import 'package:flutter/material.dart';
import '../routes/route-name.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Membuat penundaan selama 2 detik sebelum berpindah ke halaman login
    Future.delayed(const Duration(seconds: 2), () {
      Get.toNamed(RouteName.page_login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Tampilan splash screen dengan menggunakan gambar dari aset
      body: // saya ingin menampilkan sebuah bg splash dan ditengahnya ada sebuah gamabr logo
          Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg-splash.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset(
            "assets/images/logo-name.png",
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
