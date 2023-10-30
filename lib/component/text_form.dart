import 'package:flutter/material.dart';
import 'package:chatting/config/palette.dart';

class LoginSignupTextForm extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isObscure;
  final TextInputType? keyboardType;
  final FormFieldValidator validator;
  final FormFieldSetter onSaved;
  final FormFieldSetter onChanged;

  const LoginSignupTextForm(
      {required this.hint,
      this.isObscure = false,
      this.keyboardType,
      required this.icon,
      required this.validator,
      required this.onSaved,
      required this.onChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      keyboardType: keyboardType,
      obscureText: isObscure,
      validator: validator,
      onSaved: onSaved,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: Palette.iconColor,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.textColor1),
          borderRadius: BorderRadius.all(
            Radius.circular(35),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.textColor1),
          borderRadius: BorderRadius.all(
            Radius.circular(35),
          ),
        ),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 14,
          color: Palette.textColor1,
        ),
        contentPadding: EdgeInsets.all(10),
      ),
    );
  }
}
