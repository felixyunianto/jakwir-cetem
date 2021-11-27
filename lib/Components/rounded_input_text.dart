import 'package:flutter/material.dart';
import 'package:jakwit_cetem/Components/text_input_container.dart';

class RoundedTextInput extends StatelessWidget {
  final String textHint;
  final IconData icon, suffix;
  final TextInputType type;
  final bool obsure;
  final ValueChanged<String> onChanged;

  const RoundedTextInput({
    Key key,
    this.textHint,
    this.icon = Icons.person,
    this.onChanged,
    this.type = TextInputType.text,
    this.obsure = false,
    this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InputContainer(
        child: TextField(
            onChanged: onChanged,
            keyboardType: type,
            obscureText: obsure,
            decoration: InputDecoration(
              hintText: textHint,
              hintStyle: TextStyle(fontWeight: FontWeight.bold),
              border: InputBorder.none,
            )));
  }
}
