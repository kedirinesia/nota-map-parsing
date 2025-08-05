import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DShapeUpright(),
    );
  }
}

class DShapeUpright extends StatelessWidget {
  const DShapeUpright({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Align(
        alignment: Alignment.centerLeft,
        child: ClipPath(
          clipper: DClipper(),
          child: Container(
            width: screenWidth * 5.0, // Lebar diperbesar jauh lebih besar ke kanan
            height: 600,
            color: const Color(0xFFB365E0), // Warna ungu
          ),
        ),
      ),
    );
  }
}

class DClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final Path path = Path();

    // Mulai dari kiri atas
    path.moveTo(0, 0);

    // Garis lurus ke kiri bawah
    path.lineTo(0, size.height);

    // Lengkungan sisi kanan (dari bawah ke atas) - diperpanjang ke kanan
    path.quadraticBezierTo(
      size.width * 2.0, // Titik kontrol cembung jauh ke kanan
      size.height / 1,
      0,
      0,
    );

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
