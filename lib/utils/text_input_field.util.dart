import 'text_field_container.util.dart';
import 'package:flutter/material.dart';
import 'constants.util.dart';

class RoundedInputField extends StatelessWidget {
  final String? hintText;
  final IconData? icon;
  final ValueChanged<String>? onChanged;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final String Function(String?)? validator;
  final Function(String?)? onSaved;
  const RoundedInputField({
    Key? key,
    this.hintText,
    this.icon,
    this.onChanged,
    this.textInputType,
    this.validator,
    this.controller,
    this.onSaved,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        validator: validator,
        keyboardType: textInputType,
        onChanged: onChanged,
        onSaved: onSaved,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}

class AltRoundedInputField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String?)? onSaved;
  final String Function(String?)? validator;
  final String? hintText;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final ValueChanged<String>? onChanged;
  final TextInputType? textInputType;
  const AltRoundedInputField(
      {Key? key,
      this.controller,
      this.onSaved,
      this.validator,
      this.hintText,
      this.prefixIcon,
      this.onChanged,
      this.textInputType, this.prefixIconColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var iconWidget = Icon(
      prefixIcon,
      color: prefixIconColor,
    );
    return TextFormField(
        controller: controller,
        keyboardType: textInputType,
        textAlign: TextAlign.start,
        onSaved: onSaved,
        onChanged: onChanged,
        style: TextStyle(
          fontFamily: "Kiwi"
        ),
        decoration: kTextFieldDecoration.copyWith(
            hintText: hintText, prefixIcon: iconWidget),
        validator: validator);
  }
}