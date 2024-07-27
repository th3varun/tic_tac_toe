import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe/constants/colors.dart';
import 'package:tic_tac_toe/screens/game_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const GameScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MainColor.primaryColor,
      body: Center(
        child: Text(
          'TIC TAC TOE',
          style: GoogleFonts.bebasNeue(
            textStyle: const TextStyle(
              color: Color(0xFF08D9D6),
              fontWeight: FontWeight.w500,
              fontSize: 60,
              letterSpacing: 3,
            ),
          ),
        ),
      ),
    );
  }
}
