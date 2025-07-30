import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oval Shape Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OvalShapePage(),
    );
  }
}

class OvalShapePage extends StatelessWidget {
  const OvalShapePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Oval Shape'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Oval Shape Serong',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 30),
            Transform.rotate(
              angle: 0.5, // Rotasi dalam radian (sekitar 30 derajat)
              child: Container(
                width: 400,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.elliptical(200, 100)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
