import 'package:flutter/material.dart';

Widget SecondaryButton({String label = "Text"}) {
  Color getTextColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
// the color to return when button is in pressed, hovered, focused state
      return const Color.fromARGB(255, 240, 156, 12);
    }
// the color to return when button is in it's normal/unfocused state
    return const Color(0xffFEA60A);
  }

  return ConstrainedBox(
    constraints:
        const BoxConstraints.tightFor(height: 45.0, width: double.infinity),
    child: ElevatedButton(
      onPressed: () => {},
      // ignore: sort_child_properties_last
      child: Text(
        label,
        style: const TextStyle(fontSize: 17.0),
      ),
      style: ButtonStyle(
        animationDuration: const Duration(milliseconds: 300),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
        backgroundColor: MaterialStateColor.resolveWith(getTextColor),
      ),
    ),
  );
}
