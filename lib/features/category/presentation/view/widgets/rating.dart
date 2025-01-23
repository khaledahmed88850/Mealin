import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating(
      {super.key,
      this.textColor = Colors.white,
      this.iconColor = Colors.white,  required this.rating});
  final Color textColor;
  final Color iconColor;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        children: [
          Text(
            '$rating',
            style: TextStyle(
                color: textColor, fontWeight: FontWeight.w400, fontSize: 16),
          ),
          const SizedBox(
            width: 6,
          ),
          Icon(
            Icons.star,
            color: iconColor,
            size: 20,
          ),
        ],
      ),
    );
  }
}
