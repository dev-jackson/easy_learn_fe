import 'package:flutter/material.dart';

Widget InputText(
    {String label = "",
    IconData iconPreffix = Icons.abc,
    IconData? iconSuffix}) {
  return ConstrainedBox(
      constraints:
          const BoxConstraints.tightFor(height: 55.0, width: double.infinity),
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.0))),
            suffixIcon: Icon(iconSuffix),
            prefixIcon: Icon(iconPreffix),
            labelText: label),
      ));
}

// class InputText extends StatefulWidget {
//   final String label;
//   final IconData iconPrefix;
//   final IconData iconSuffix;
//   const InputText({
//     Key? key,
//     this.label = "Text",
//     this.iconPrefix,
//     [this.iconSuffix]
//   }) : super(key: key);
  
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
