import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {

  final String title;
  final IconData iconData;
  final TextEditingController controller;
  final String? Function(String?)? valid ;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function()? onTap;

  const CustomTextForm({
    super.key,
    required this.title,
    required this.iconData,
    required this.controller,
    this.valid, this.keyboardType,

    this.onTap,
    this.obscureText=false,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery=MediaQuery.sizeOf(context);
    var theme =Theme.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: mediaQuery.width * 0.05,
        vertical: mediaQuery.height * 0.01,
      ),
      child: TextFormField(

        validator:valid ,
        controller:controller ,
        keyboardType:keyboardType ,
        cursorColor: theme.colorScheme.onSecondary,
        cursorHeight: mediaQuery.height*0.02,
        style:theme.textTheme.labelLarge,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal:mediaQuery.width*0.04,vertical: mediaQuery.height*0.01),
          suffixIcon: GestureDetector(
              onTap: onTap,
              child: Icon(iconData,color: theme.colorScheme.secondary,)),
          label: Text(
            title,
            style: theme.textTheme.headlineSmall?.copyWith(fontSize: 18),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: theme.colorScheme.secondary,width: 2)
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: theme.colorScheme.secondary,width: 2)
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: theme.colorScheme.onSecondaryFixed,width: 2)
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: theme.colorScheme.onSecondaryFixed,width: 2)
          ),
        ),
      ),
    );
  }
}
