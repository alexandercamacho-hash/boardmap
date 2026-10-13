import 'package:flutter/material.dart';

class AppNavLink extends StatelessWidget {
  const AppNavLink({
    super.key,
    required this.label,
    required this.onPressed,
    this.active = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 15,
          fontWeight: active ? FontWeight.w700 : FontWeight.w500,
          decoration: active ? TextDecoration.underline : null,
          decorationColor: Colors.white,
          decorationThickness: 2,
        ),
      ),
    );
  }
}
