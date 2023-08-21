import 'package:flutter/material.dart';

import 'checkbox_default.dart';
import 'common/extension.dart';
import 'small_rating_white.dart';


class ItemRowSetRating extends StatelessWidget {
  final String? titleChekbox;
  final bool isChecked;
  final void Function(bool?)? onCheckboxChanged;
  final void Function(int)? onRatingChecked;
  int setRating;

  ItemRowSetRating({
    Key? key,
    this.titleChekbox,
    this.isChecked = false,
    this.onRatingChecked,
    this.setRating = 0,
    this.onCheckboxChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    setRating = (setRating);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CheckboxDeft(
                isChecked: isChecked,
                onChanged: onCheckboxChanged,
              ),
              Text(
                truncateText(titleChekbox ?? 'Title Checkbox',
                    18), // This will show up to 15 characters before the ellipsis
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: Row(
            children: [
              SmallRatingWhite(
                rating: '1',
                isSelected: setRating >= 1,
                onTap: () => onRatingChecked?.call(1),
              ),
              const SizedBox(width: 8.0),
              SmallRatingWhite(
                rating: '2',
                isSelected: setRating >= 2,
                onTap: () => onRatingChecked?.call(2),
              ),
              const SizedBox(width: 8.0),
              SmallRatingWhite(
                rating: '3',
                isSelected: setRating >= 3,
                onTap: () => onRatingChecked?.call(3),
              ),
              const SizedBox(width: 8.0),
              SmallRatingWhite(
                rating: '4',
                isSelected: setRating >= 4,
                onTap: () => onRatingChecked?.call(4),
              ),
              const SizedBox(width: 8.0),
              SmallRatingWhite(
                rating: '5',
                isSelected: setRating >= 5,
                onTap: () => onRatingChecked?.call(5),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
