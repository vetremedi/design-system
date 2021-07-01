import 'package:flutter/material.dart';
import 'package:design_system/src/shared/app_colors.dart';
import 'package:design_system/src/shared/styles.dart';

class UIButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final Widget? leading;
  final bool outline;
  final bool trailing;
  final Widget? tralingIcon;
  final bool textBtn;

  final void Function()? onTap;

  const UIButton({
    Key? key,
    required this.title,
    this.disabled = false,
    this.leading,
    this.outline = false,
    this.onTap,
    this.trailing = false,
    this.tralingIcon,
    this.textBtn = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
          duration: Duration(milliseconds: 400),
          width: double.infinity,
          height: 48,
          alignment: Alignment.center,
          decoration: !outline
              ? textBtn
                  ? null
                  : BoxDecoration(
                      color: disabled ? DisabledColor : CorePrimary,
                      borderRadius: BorderRadius.circular(8),
                    )
              : textBtn
                  ? null
                  : BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: disabled ? DisabledColor : CorePrimary,
                          width: 1),
                    ),
          child: !trailing
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (leading != null) leading!,
                    if (leading != null) SizedBox(width: 7),
                    Text(
                      title,
                      style: bodystyle.copyWith(
                        fontSize: 14,
                        color: outline
                            ? disabled
                                ? TextSecondryColor
                                : CorePrimary
                            : disabled
                                ? TextSecondryColor
                                : BackgroundColor,
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(
                      flex: 80,
                      child: Center(
                        child: Text(
                          title,
                          style: bodystyle.copyWith(
                            fontSize: 14,
                            color: outline
                                ? disabled
                                    ? TextSecondryColor
                                    : CorePrimary
                                : disabled
                                    ? TextSecondryColor
                                    : BackgroundColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(child: tralingIcon!),
                    SizedBox(
                      width: 40,
                    ),
                  ],
                )),
    );
  }
}
