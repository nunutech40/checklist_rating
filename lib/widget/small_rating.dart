import 'package:flutter/material.dart';

import 'common/styles.dart';

class SmallRating extends StatelessWidget {
  final String rating;
  const SmallRating({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: e2Gray,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 12.0),
        child: Text(
          rating,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
