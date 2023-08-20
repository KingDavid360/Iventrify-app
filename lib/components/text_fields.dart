import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:inventrify/constants.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardTpe;
  final String? validatorText;
  final Widget? icon;
  final bool obscure;
  const CustomTextField({
    Key? key,
    this.hint,
    this.textEditingController,
    this.keyboardTpe,
    this.validatorText,
    this.icon,
    required this.obscure,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardTpe,
      controller: textEditingController,
      obscureText: obscure,
      validator: (validator) => validator == null || validator.isEmpty
          ? 'Enter a valid ${validatorText}'
          : null,
      decoration: InputDecoration(
        suffixIcon: icon,
        labelText: hint,
        labelStyle: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: splashBackgroundColor,
            width: 1.0,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: splashBackgroundColor,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}

class CustomEmailField extends StatefulWidget {
  final String? hint;
  final TextEditingController? textEditingController;
  final TextInputType? keyboardTpe;
  final String? validatorText;
  final Widget? icon;
  final bool obscure;
  CustomEmailField(
      {Key? key,
      this.hint,
      this.textEditingController,
      this.keyboardTpe,
      this.validatorText,
      this.icon,
      required this.obscure})
      : super(key: key);

  @override
  State<CustomEmailField> createState() => _CustomEmailFieldState();
}

class _CustomEmailFieldState extends State<CustomEmailField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardTpe,
      controller: widget.textEditingController,
      obscureText: widget.obscure,
      validator: (email) {
        if (email != null && !EmailValidator.validate(email)) {
          'Enter a valid email';
        } else {
          null;
        }
      },
      decoration: InputDecoration(
        suffix: widget.icon,
        labelText: widget.hint,
        labelStyle: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: splashBackgroundColor,
            width: 1.0,
          ),
        ),
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: splashBackgroundColor,
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
