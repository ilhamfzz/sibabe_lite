import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Image.asset(
              'assets/icon/pancake.png',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            const Text(
              'SiBaBe',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 6),
            const Text(
              'Sistem Informasi Bima Bakery',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const Text(
              'Sibabe is an acronym for Sistem Informasi Bima Bakery, which is an Information System for Bima Bakery. Sibabe was initially released in 2022 with the purpose of completing the final project of the Software Project Management course. Now, I, Moh. Ilham Fakhri Zamzami, an active student at Institut Teknologi Sepuluh Nopember, have launched a smartphone application for sibabe as part of my final project in Sanbercode Flutter Bootcamp Batch 47.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
