import 'package:flutter/material.dart';

class MarimbaPiece extends StatefulWidget {
  const MarimbaPiece({
    super.key,
    required this.colorPiece,
    required this.widthRelation,
    required this.pointUbication,
  });

  final Color colorPiece;
  final double widthRelation;
  final double pointUbication;

  @override
  State<MarimbaPiece> createState() => _MarimbaPieceState();
}

class _MarimbaPieceState extends State<MarimbaPiece>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );

    _shakeAnimation = Tween<double>(begin: 0, end: 10).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
          0.0,
          1.0,
          curve: Curves.elasticIn,
        ),
      ),
    )..addListener(() {
        setState(() {});
      });

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Expanded(
        child: Stack(
      children: [
        GestureDetector(
          onTap: () {
            _controller.forward();
          },
          child: Transform.translate(
            offset: Offset(_shakeAnimation.value, 0),
            child: Center(
              child: Container(
                height: 68,
                width: width * widget.widthRelation,
                decoration: BoxDecoration(
                  color: widget.colorPiece,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: widget.pointUbication * width,
          top: 0,
          bottom: 0,
          child: Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          right: widget.pointUbication * width,
          top: 0,
          bottom: 0,
          child: Container(
            width: 10,
            height: 10,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    ));
  }
}
