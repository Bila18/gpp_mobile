import 'package:flutter/material.dart';
import '../utils/color_pallete.dart';

class BoxTextField extends StatelessWidget {
  const BoxTextField(
    this.validator,
    this.labelText, {
    super.key,
    required TextEditingController controller,
    required TextInputType keyboard,
    required TextInputAction action,
  })  : _controller = controller,
        _keyboard = keyboard,
        _action = action;

  final TextEditingController _controller;
  final TextInputType _keyboard;
  final TextInputAction _action;
  final String labelText;
  final FormFieldValidator<String> validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller, //make parameter
      keyboardType: _keyboard, //make parameter
      textInputAction: _action, //make parameter
      obscureText: false, //make parameter
      decoration: InputDecoration(
        labelText: labelText, //make parameter
        labelStyle: TextStyle(
          color: ColorPallete.textField,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true, fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorPallete.primary,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: ColorPallete.primary,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      validator: validator,
    );
  }
}
