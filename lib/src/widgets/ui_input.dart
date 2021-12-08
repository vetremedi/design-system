import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../design_system.dart';

class UIInput extends StatelessWidget {
  final String hint;
  final String? errorText;
  final TextEditingController controller;
  final AppType appType;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final void Function(String)? onChanged;
  final TextInputType inputType;
  final int? maxLength;

  const UIInput(
      {Key? key,
      this.maxLength,
      this.appType = AppType.Core,
      this.errorText,
      this.onChanged,
      this.inputType = TextInputType.text,
      required this.hint,
      required this.leadingIcon,
      this.trailingIcon,
      required this.controller})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLength: maxLength,
      keyboardType: inputType,
      onChanged: onChanged,
      style: TextStyle(fontSize: 16.0),
      decoration: InputDecoration(
        counterText: "",
        prefixIcon: Icon(
          leadingIcon,
          color: Colors.black54,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide(color: _mapInputColor(appType), width: 1.6),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide(color: ErrorColor, width: 1.6),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide(color: ErrorColor, width: 1.6),
        ),
        errorText: errorText,
        errorStyle: TextStyle(color: ErrorColor, fontSize: 16.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6.0),
          borderSide: BorderSide(
            color: OutlineColor,
            width: 2.0,
          ),
        ),
        hintText: hint,
        hintStyle: TextStyle(color: TextSecondaryColor),
        suffixIcon: Icon(
          trailingIcon != null ? trailingIcon : null,
          color: controller.text.isEmpty ? OutlineColor : Colors.black54,
        ),
      ),
    );
  }
}

Color _mapInputColor(AppType appType) {
  switch (appType) {
    case AppType.Delivery:
      return DeliveryPrimary;
    case AppType.Pharmacy:
      return PharmacyPrimary;
    default:
      return CorePrimary;
  }
}
