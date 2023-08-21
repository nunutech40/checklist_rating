library checklist_rating;

import 'package:checklist_rating/widget/checkbox_default.dart';
import 'package:checklist_rating/widget/common/extension.dart';
import 'package:checklist_rating/widget/small_rating_white.dart';
import 'package:flutter/material.dart';

/// `ChecklistRating` is a widget that presents a flexible row layout containing
/// a checkbox with its associated title on the left, and a series of rating widgets on the right.
///
/// This widget is tailored for scenarios where a user needs to both check an item and provide
/// a rating for it.

class ChecklistRating extends StatelessWidget {
  /// [titleChekbox] defines the text displayed next to the checkbox.
  /// If not provided, it will default to 'Title Checkbox' after truncation.
  final String? titleChekbox;

  /// [setChecked] indicates the initial checked state of the checkbox.
  /// Defaults to `false` if not explicitly set.
  final bool setChecked;

  /// [onCheckboxChanged] is a callback triggered when the checkbox state changes.
  /// It provides the new checkbox state.
  final void Function(bool?)? onCheckboxChanged;

  /// [onRatingChecked] is a callback triggered when a user selects a rating value.
  /// It returns the selected rating.
  final void Function(int)? onRatingChecked;

  /// [setRating] sets the initial selected rating value, where `0` implies no initial rating.
  final int setRating;

  /// [maxRatings] determines the maximum number of rating items to display.
  /// This value must range between 3 and 5, with the default being 5.
  final int maxRatings;

  ChecklistRating({
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

  // Factory constructor to create a default instance of ChecklistRating.
  factory ChecklistRating.defaultRating() {
    return ChecklistRating(
      titleChekbox: "Default Checkbox",
      setRating: 5,
    );
  }

  // Factory constructor to create a maximum rated instance of ChecklistRating.
  factory ChecklistRating.customRating() {
    return ChecklistRating(
      titleChekbox: "Custom Checkbox",
      setRating: 3,
    );
  }

  // Factory constructor to create a custom ChecklistRating.
  factory ChecklistRating.custom(
      {String? titleChekbox,
      int? setRating,
      bool? setChecked,
      int? maxRatings}) {
    return ChecklistRating(
      titleChekbox: titleChekbox,
      setChecked: setChecked ?? false,
      setRating: setRating ?? 0,
      maxRatings: maxRatings ?? 5,
    );
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
