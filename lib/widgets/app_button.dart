import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.icon,
    this.expand = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final IconData? icon;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = FilledButton.styleFrom(
      minimumSize: Size(expand ? double.infinity : 200, 48),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );

    if (icon == null) {
      return FilledButton(
        style: style,
        onPressed: onPressed,
        child: Text(label),
      );
    }

    return FilledButton.icon(
      style: style,
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
    );
  }
}
