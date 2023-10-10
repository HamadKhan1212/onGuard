import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReusableRating extends StatelessWidget {
  final double? rating;
  final double? starSize;

  const ReusableRating({super.key, required this.rating, this.starSize = 30.0});

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating!,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: false,
      itemCount: 4,
      itemSize: starSize!,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
