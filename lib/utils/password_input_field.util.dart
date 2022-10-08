import 'package:flutter/material.dart';
import 'package:web_tv/utils/form_field_container.util.dart';
import 'constants.util.dart';

class RoundedPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String?) onSaved;
  final String? Function(String?) validator;
  final String hintText;
  final ValueChanged<String> onChanged;
  final TextInputType textInputType;
  const RoundedPasswordField(
      {Key? key,
      required this.controller,
      required this.onSaved,
      required this.validator,
      required this.hintText,
      required this.onChanged,
      required this.textInputType,})
      : super(key: key);

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool obscureText = true;

  void isPassClear() {
    setState(() {
      obscureText = !obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
          controller: widget.controller,
          keyboardType: widget.textInputType,
          textAlign: TextAlign.start,
          onSaved: widget.onSaved,
          // style: TextStyle(fontFamily: "Kiwi"),
          onChanged: widget.onChanged,
          obscureText: obscureText,
          decoration: kTextFieldDecoration.copyWith(
              hintText: widget.hintText,
              fillColor: Color.fromARGB(255, 173, 162, 162),
              filled: true,),
          validator: widget.validator),
    );
  }
}
