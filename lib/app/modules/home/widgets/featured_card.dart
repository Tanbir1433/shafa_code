import 'package:flutter/material.dart';

class FeaturedCard extends StatelessWidget {
  final String imagePath;

  const FeaturedCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 132,
      child: Material(
        color: Colors.transparent,
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
    );
  }
}
