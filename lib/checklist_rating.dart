library checklist_rating;

import 'package:flutter/material.dart';
import 'widget/item_row_set_setting.dart';

/// `ChecklistSetRating` provides a static method to generate an instance of `ItemRowSetRating`.
///
/// It is designed as a facade to simplify the instantiation process of the `ItemRowSetRating` widget.
/// This approach hides the complexities and provides a straightforward way to use the widget.
class ChecklistSetRating {
  /// Generates an instance of [ItemRowSetRating] with the given properties.
  ///
  /// - `key`: An optional key for the widget.
  ///
  /// - `titleChekbox`: The text that will be displayed alongside the checkbox.
  ///
  /// - `setChecked`: A boolean indicating whether the checkbox should start in a checked state. Defaults to `false`.
  ///
  /// - `onRatingChecked`: A callback that is triggered when a rating is selected. Provides the selected rating as an argument.
  ///
  /// - `setRating`: The initial rating value. Defaults to `0`.
  ///
  /// - `maxRatings`: The maximum number of ratings the user can choose from. Must be between 3 and 5. Defaults to `5`.
  ///
  /// - `onCheckboxChanged`: A callback that is triggered when the checkbox's state changes. Provides the new checkbox state as an argument.
  ///
  /// Returns a new [ItemRowSetRating] widget.
  static ItemRowSetRating setRatingCheckList({
    Key? key,
    String? titleChekbox,
    bool setChecked = false,
    void Function(int)? onRatingChecked,
    int setRating = 0,
    int maxRatings = 5,
    void Function(bool?)? onCheckboxChanged,
  }) {
    return ItemRowSetRating(
      key: key,
      titleChekbox: titleChekbox,
      setChecked: setChecked,
      onRatingChecked: onRatingChecked,
      setRating: setRating,
      maxRatings: maxRatings,
      onCheckboxChanged: onCheckboxChanged,
    );
  }
}
