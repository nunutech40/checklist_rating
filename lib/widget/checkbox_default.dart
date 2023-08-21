
import 'package:flutter/material.dart';

import 'common/styles.dart';

class CheckboxDeft extends StatefulWidget {
  final bool isChecked;
  final void Function(bool?)? onChanged;

  CheckboxDeft({Key? key, this.isChecked = false, this.onChanged})
      : super(key: key);

  @override
  _CheckboxDeft createState() => _CheckboxDeft();
}

class _CheckboxDeft extends State<CheckboxDeft> {
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return secondaryColor;
      }
      return primaryColor;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: widget.isChecked,
      onChanged: widget.onChanged,
    );
  }
}
