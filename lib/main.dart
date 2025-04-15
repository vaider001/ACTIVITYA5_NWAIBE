import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(CoinFlipApp());
}

class CoinFlipApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoinFlipScreen(),
    );
  }
}

class CoinFlipScreen extends StatefulWidget {
  @override
  _CoinFlipScreenState createState() => _CoinFlipScreenState();
}

class _CoinFlipScreenState extends State<CoinFlipScreen> {
  int coinSide = 0; // 0 for Heads, 1 for Tails

  void flipCoin() {
    setState(() {
      coinSide = Random().nextInt(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Coin Flip App',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 218, 2, 2),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              coinSide == 0 ? 'assets/heads.jpg' : 'assets/tails.jpg',
              width: 250,
              height: 250,
            ),
            SizedBox(height: 60),
            ElevatedButton(
              onPressed: flipCoin,
              child: Text(
                'Flip the Coin!',
                style: TextStyle(color: Color.fromARGB(76, 220, 90, 56)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
