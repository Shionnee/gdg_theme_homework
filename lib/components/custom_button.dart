import 'dart:ui';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double? buttonWidth;
  final double? buttonHeight;
  final Widget? child;
  final VoidCallback onTap;
  const CustomButton({
    super.key,
    required this.child,
    required this.onTap,
    this.buttonHeight,
    this.buttonWidth,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: Container(
              constraints: BoxConstraints(
                minWidth: buttonWidth ?? 100,
                minHeight: buttonHeight ?? 50,
              ),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1.5,
                      color: Theme.of(context)
                          .colorScheme
                          .background
                          .withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(12),
                  color: Theme.of(context)
                      .colorScheme
                      .background
                      .withOpacity(0.2)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: child,
              )),
        ),
      ),
    );
  }
}
