import 'package:flutter/material.dart';
import 'package:design_system/src/shared/app_colors.dart';

class UIInput extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final void Function()? trailingTapped;
  final bool password;
  final circularBorder =
      OutlineInputBorder(borderRadius: BorderRadius.circular(8));
  UIInput(
      {Key? key,
      required this.controller,
      this.placeholder = "",
      this.leading,
      this.trailing,
      this.trailingTapped,
      this.password = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      style: TextStyle(height: 1),
      obscureText: password,
      decoration: InputDecoration(
        prefix: leading,
        suffix: trailing != null
            ? GestureDetector(
                child: trailing,
                onTap: trailingTapped,
              )
            : null,
        hintText: placeholder,
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        filled: true,
        fillColor: CorePrimary,
        border:
            circularBorder.copyWith(borderSide: BorderSide(color: CorePrimary)),
        errorBorder:
            circularBorder.copyWith(borderSide: BorderSide(color: Colors.red)),
        focusedBorder:
            circularBorder.copyWith(borderSide: BorderSide(color: CorePrimary)),
        enabledBorder:
            circularBorder.copyWith(borderSide: BorderSide(color: CorePrimary)),
      ),
    );
  }
}
