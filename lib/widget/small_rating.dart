import 'package:flutter/material.dart';

import 'common/styles.dart';

class SmallRating extends StatelessWidget {
  final String rating;
  final bool isSelected;
  final VoidCallback? onTap; // Keep the same callback type

  const SmallRating(
      {Key? key,
      required this.rating,
      this.isSelected = false,
      this.onTap}) // Keep the same argument type
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // This stays the same
      child: Container(
        height: 24.0,
        width: 24.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? lighPrimaryColor : Colors.white,
          borderRadius: BorderRadius.circular(6.0),
          border: Border.all(
            color: isSelected ? primaryColor : e2Gray,
            width: 1.0,
          ),
        ),
        child: Text(
          rating,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 12)
              .copyWith(color: isSelected ? primaryColor : Colors.black),
        ),
      ),
    );
  }
}
