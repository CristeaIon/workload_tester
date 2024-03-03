
import 'package:flutter/material.dart';

class SideBarButton extends StatelessWidget {
  const SideBarButton({
    super.key,
    required this.title,
    this.onPressed,
  });
  final String title;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: const ButtonStyle(
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.zero),
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(title),
    );
  }
}
