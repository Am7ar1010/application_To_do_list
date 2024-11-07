import 'package:flutter/material.dart';

class CustomTextRegistration extends StatelessWidget {
  final String title;
  final String titleBottom;
  final void Function()? onTep;
  const CustomTextRegistration({super.key, required this.title, this.onTep, required this.titleBottom});

  @override
  Widget build(BuildContext context) {

    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          title,
          style: theme.textTheme.labelLarge,
        ),
        InkWell(
          onTap: onTep,
          child: Text(
            titleBottom,
            style: theme.textTheme.titleMedium
                ?.copyWith(color: theme.colorScheme.onSecondary),
          ),
        ),
      ],
    );
  }
}
