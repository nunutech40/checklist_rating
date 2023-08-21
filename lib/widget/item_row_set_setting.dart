import 'package:flutter/material.dart';

import 'checkbox_default.dart';
import 'common/extension.dart';
import 'small_rating_white.dart';

class ItemRowSetRating extends StatelessWidget {
  /// The title for the checkbox.
  final String? titleChekbox;

  /// The initial state of the checkbox.
  final bool setChecked;

  /// A callback when the checkbox state changes.
  final void Function(bool?)? onCheckboxChanged;

  /// A callback when a rating is selected.
  final void Function(int)? onRatingChecked;

  /// The initial rating value.
  final int setRating;

  /// The maximum number of ratings to show. Must be between 3 and 5.
  final int maxRatings;

  ItemRowSetRating({
    Key? key,
    this.titleChekbox,
    this.setChecked = false,
    this.onRatingChecked,
    this.setRating = 0,
    this.onCheckboxChanged,
    this.maxRatings = 5,
  }) : super(key: key) {
    if (maxRatings < 3 || maxRatings > 5) {
      throw ArgumentError(
          'maxRatings should be between 3 and 5 inclusive. Received: $maxRatings.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CheckboxDeft(
                isChecked: setChecked,
                onChanged: onCheckboxChanged,
              ),
              Text(
                truncateText(titleChekbox ?? 'Title Checkbox', 18),
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Row(
            children: List<Widget>.generate(
              maxRatings,
              (index) => Row(
                children: [
                  SmallRatingWhite(
                    rating: '${index + 1}',
                    isSelected: setRating >= index + 1,
                    onTap: () => onRatingChecked?.call(index + 1),
                  ),
                  if (index != maxRatings - 1) const SizedBox(width: 8.0),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
