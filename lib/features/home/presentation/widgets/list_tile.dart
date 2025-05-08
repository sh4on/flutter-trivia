import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final IconData icon;

  const CustomListTile({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        leading: Icon(icon),
        title: Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
    );
  }
}