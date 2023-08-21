library checklist_rating;

import 'package:flutter/material.dart';
import 'widget/item_row_set_setting.dart';

class ChecklistSetRating {
  static ItemRowSetRating setRatingCheckList({
    Key? key,
    String? titleChekbox,
    bool isChecked = false,
    void Function(int)? onRatingChecked,
    int setRating = 0,
    void Function(bool?)? onCheckboxChanged,
  }) {
    return ItemRowSetRating(
      key: key,
      titleChekbox: titleChekbox,
      isChecked: isChecked,
      onRatingChecked: onRatingChecked,
      setRating: setRating,
      onCheckboxChanged: onCheckboxChanged,
    );
  }
}
