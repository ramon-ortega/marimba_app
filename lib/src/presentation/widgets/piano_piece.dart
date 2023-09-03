import 'package:flutter/material.dart';

class WhiteKey extends StatefulWidget {
  const WhiteKey({super.key});

  @override
  State<WhiteKey> createState() => _WhiteKeyState();
}

class _WhiteKeyState extends State<WhiteKey> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.grey),
          ),
        ),
        child: Container(
          height: 40,
        ),
      ),
    );
  }
}
