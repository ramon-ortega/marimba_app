import 'dart:developer';

import 'package:flutter/material.dart';
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
          color: Colors.brown,
          child: const Column(
            children: [
              MarimbaPiece(
                colorPiece: Colors.red,
                widthRelation: 0.9,
                pointUbication: .10,
              ),
              MarimbaPiece(
                colorPiece: Colors.blue,
                widthRelation: 0.85,
                pointUbication: .125,
              ),
              MarimbaPiece(
                colorPiece: Colors.green,
                widthRelation: 0.80,
                pointUbication: .15,
              ),
              MarimbaPiece(
                colorPiece: Colors.yellow,
                widthRelation: 0.75,
                pointUbication: .175,
              ),
              MarimbaPiece(
                colorPiece: Colors.orange,
                widthRelation: 0.70,
                pointUbication: .2,
              ),
              MarimbaPiece(
                colorPiece: Colors.purple,
                widthRelation: 0.65,
                pointUbication: .225,
              ),
              MarimbaPiece(
                colorPiece: Colors.cyan,
                widthRelation: 0.60,
                pointUbication: .25,
              ),
              MarimbaPiece(
                colorPiece: Colors.grey,
                widthRelation: 0.55,
                pointUbication: .275,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
