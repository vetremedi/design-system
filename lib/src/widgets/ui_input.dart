import 'package:flutter/material.dart';

import '../../design_system.dart';

class UIInput extends StatelessWidget {
  final String? label;
  final String? placeholder;
  final String? helper;
  final bool hasError;
  final Widget? leading;
  final TextEditingController controller;
  final AppType appType;

  final void Function(String)? onChanged;
  final TextInputType inputType;
  final int? maxLength;
  final bool disabled;

  const UIInput({
    Key? key,
    required this.controller,
    this.disabled = false,
    this.hasError = false,
    this.inputType = TextInputType.text,
    this.appType = AppType.Core,
    this.label,
    this.placeholder,
    this.helper,
    this.leading,
    this.onChanged,
    this.maxLength,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (label != null)
            Text(
              "$label",
              style: const TextStyle(color: kTextSecondaryLightColor),
            ),
          const SizedBox(
            height: 6,
          ),
          TextFormField(
            controller: controller,
            maxLength: maxLength,
            keyboardType: inputType,
            onChanged: onChanged,
            style: const TextStyle(fontSize: 16.0),
            decoration: InputDecoration(
              fillColor: disabled ? kDisabledColor : null,
              hintText: placeholder,
              prefixIcon: leading,
              enabled: !disabled,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide:
                    BorderSide(color: _mapInputColor(appType), width: 1.6),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(
                  color: kOutlineColor,
                  width: 2.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(
                  color: kOutlineColor,
                  width: 2.0,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(6.0),
                borderSide: const BorderSide(
                  color: kOutlineColor,
                  width: 2.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          if (helper != null)
            Text(
              "$helper",
              style: TextStyle(
                  color: hasError ? kErrorColor : kTextSecondaryLightColor),
            ),
        ],
      ),
    );
  }
}

Color _mapInputColor(AppType appType) {
  switch (appType) {
    case AppType.Delivery:
      return kDeliveryColor;
    case AppType.Pharmacy:
      return kPharmacyColor;
    default:
      return kCoreColor;
  }
}
