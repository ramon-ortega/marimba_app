import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:marimba_app/src/presentation/screens/settings_screen.dart';
import 'package:marimba_app/src/presentation/widgets/marimba_piece.dart';
import 'package:marimba_app/src/presentation/widgets/piano_piece.dart';

class PianoScreen extends StatelessWidget {
  const PianoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/fondo_2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            _PianoSection(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        backgroundColor: Colors.transparent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  const SettingsScreen(instrumentName: 'Marimba'),
            ),
          );
        },
        child: const Icon(
          Icons.settings_outlined,
          size: 38,
          color: Colors.white,
        ),
      ),
    );
  }
}

class _PianoSection extends StatelessWidget {
  const _PianoSection();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        width: size.width * 0.7,
        height: 320,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _whiteKeys(),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _blackKeys(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> _whiteKeys() {
  return const [
    WhiteKey(),
    WhiteKey(),
    WhiteKey(),
    WhiteKey(),
    WhiteKey(),
    WhiteKey(),
    WhiteKey(),
    WhiteKey(),
  ];
}

List<Widget> _blackKeys() {
  return const [
    BlackKey(),
    BlackKey(),
    SizedBox(height: 40),
    BlackKey(),
    BlackKey(),
    BlackKey(),
    SizedBox(height: 40),
  ];
}

class BlackKey extends StatelessWidget {
  const BlackKey({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 40,
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.black,
          shape: const RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.grey),
          ),
        ),
        child: const SizedBox.shrink(),
      ),
    );
  }
}
