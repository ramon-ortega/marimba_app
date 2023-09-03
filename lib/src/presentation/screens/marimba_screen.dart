import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:marimba_app/src/presentation/screens/settings_screen.dart';
import 'package:marimba_app/src/presentation/widgets/marimba_piece.dart';

class MarimbaScreen extends StatelessWidget {
  const MarimbaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/fondo_1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            children: [
              MarimbaPiece(
                colorPiece: Colors.red,
                widthRelation: 0.9,
                pointUbication: .10,
                soundAsset: 'marimba/marimba1.mp3',
              ),
              MarimbaPiece(
                colorPiece: Colors.blue,
                widthRelation: 0.85,
                pointUbication: .125,
                soundAsset: 'marimba/marimba2.mp3',
              ),
              MarimbaPiece(
                colorPiece: Colors.green,
                widthRelation: 0.80,
                pointUbication: .15,
                soundAsset: 'marimba/marimba3.mp3',
              ),
              MarimbaPiece(
                colorPiece: Colors.yellow,
                widthRelation: 0.75,
                pointUbication: .175,
                soundAsset: 'marimba/marimba4.mp3',
              ),
              MarimbaPiece(
                colorPiece: Colors.orange,
                widthRelation: 0.70,
                pointUbication: .2,
                soundAsset: 'marimba/marimba5.mp3',
              ),
              MarimbaPiece(
                colorPiece: Colors.purple,
                widthRelation: 0.65,
                pointUbication: .225,
                soundAsset: 'marimba/marimba6.mp3',
              ),
              MarimbaPiece(
                colorPiece: Colors.cyan,
                widthRelation: 0.60,
                pointUbication: .25,
                soundAsset: 'marimba/marimba7.mp3',
              ),
              MarimbaPiece(
                colorPiece: Colors.grey,
                widthRelation: 0.55,
                pointUbication: .275,
                soundAsset: 'marimba/marimba8.mp3',
              ),
            ],
          ),
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
                      const SettingsScreen(instrumentName: 'Piano')));
        },
        child: const Icon(
          Icons.settings_outlined,
          size: 38,
          color: Colors.black,
        ),
      ),
    );
  }
}
