import 'package:flutter/material.dart';
import 'package:web_tv/utils/text_field_container.util.dart';

import 'constants.util.dart';

class RoundedSelectField extends StatefulWidget {
  final TextEditingController controller;
  final Function(String?) onSaved;
  final String? Function(String?) validator;
  final String hintText;
  final IconData prefixIcon;
  final Color prefixIconColor;
  final IconData? suffixIcon;
  final Color? suffixIconColor;
  final IconData? icon;
  final ValueChanged<String> onChanged;
  final TextInputType textInputType;
  final List<String> options;

  const RoundedSelectField(
      {Key? key,
      required this.controller,
      required this.onSaved,
      required this.validator,
      required this.hintText,
      required this.prefixIcon,
      required this.prefixIconColor,
      this.suffixIcon,
      this.suffixIconColor,
      required this.onChanged,
      required this.textInputType,
      required this.options,
      this.icon})
      : super(key: key);

  @override
  State<RoundedSelectField> createState() => _RoundedSelectFieldState();
}

class _RoundedSelectFieldState extends State<RoundedSelectField> {
  final FocusNode _focusNode = FocusNode();
  OverlayEntry? _overlayEntry = null;
  final LayerLink _layerLink = LayerLink();

  @override
  void initState() {
    showSelectOptions();
    super.initState();
  }

  void showSelectOptions() {
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _overlayEntry = _createOverlayEntry();
        Overlay.of(context)!.insert(_overlayEntry!);
      } else {
        _overlayEntry!.remove();
      }
    });
  }

  void hideSelectOptions() {
    _overlayEntry!.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
        builder: (context) => Positioned(
              left: offset.dx,
              top: offset.dy + size.height + 5.0,
              width: size.width * 0.8,
              child: CompositedTransformFollower(
                link: _layerLink,
                showWhenUnlinked: false,
                offset: Offset(0.0, size.height + 5.0),
                child: Material(
                  color: Colors.white,
                  elevation: 4.0,
                  child: ListView(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    children: <Widget>[
                      for (var i = 1; i < widget.options.length; i++)
                        ListTile(
                          title: Text(widget.options[i],
                              style: TextStyle(
                                fontSize: 12.0,
                                color: darkColor
                              )),
                          onTap: () {
                            final text = widget.options[i];
                            widget.controller.text = text;
                            hideSelectOptions();
                          },
                        )
                    ],
                  ),
                ),
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    var prefixIconWidget = Icon(
      widget.prefixIcon,
      color: widget.prefixIconColor,
    );
    var suffixIconWidget = IconButton(
      icon: Icon(widget.suffixIcon),
      color: widget.prefixIconColor,
      onPressed: () {
        ;
      },
    );
    return CompositedTransformTarget(
      link: _layerLink,
      child: TextFieldContainer(
        child: TextFormField(
            controller: widget.controller,
            focusNode: _focusNode,
            keyboardType: widget.textInputType,
            textAlign: TextAlign.start,
            onSaved: widget.onSaved,
            onChanged: widget.onChanged,
            style: TextStyle(fontFamily: "Kiwi"),
            decoration: kTextFieldDecoration.copyWith(
                hintText: widget.hintText,
                fillColor: Colors.white,
                filled: true,
                prefixIcon: prefixIconWidget,
                suffixIcon: suffixIconWidget),
            validator: widget.validator),
      ),
    );
  }
}
