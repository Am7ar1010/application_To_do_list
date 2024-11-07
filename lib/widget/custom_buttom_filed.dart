import 'package:flutter/material.dart';

class CustomBottomFiled extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function()? onTap;

  const CustomBottomFiled({
    super.key,
    required this.title,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.sizeOf(context);
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: mediaQuery.width * 0.05,
        ),
        width: double.infinity,
        height: mediaQuery.height * 0.07,
        decoration: BoxDecoration(
          color: theme.colorScheme.secondary,
          borderRadius: BorderRadius.circular(
            30,
          ),
          border: Border.all(color: theme.colorScheme.onPrimary, width: 3),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: theme.textTheme.titleLarge
                  ?.copyWith(color: theme.colorScheme.onPrimary),
            ),
            SizedBox(
              width: mediaQuery.width * 0.04,
            ),
            Icon(
              icon,
              size: 25,
              color: theme.colorScheme.onPrimary,
            ),
          ],
        ),
      ),
    );
  }
}
