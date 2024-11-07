import 'package:flutter/material.dart';
import 'package:to_do_list_application/core/items_route_name.dart';
import 'package:to_do_list_application/widget/custom_buttom_filed.dart';
import 'package:to_do_list_application/widget/custom_text_form.dart';
import 'package:to_do_list_application/widget/custom_text_registration.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var validKey = GlobalKey<FormState>();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  bool isVisibility = false;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.sizeOf(context);
    var theme = Theme.of(context);
    return Scaffold(
      body: Form(
        key: validKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.04),
                height: mediaQuery.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondary,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(mediaQuery.height * 0.3),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome !",
                      style: theme.textTheme.titleLarge
                          ?.copyWith(color: Colors.white, fontSize: 25),
                    ),
                    Expanded(child: Image.asset("assets/image/images_login.png")),
                  ],
                ),
              ),
              SizedBox(
                height: mediaQuery.height * 0.08,
              ),
              CustomTextForm(
                title: "Email",
                iconData: Icons.email,
                controller: controllerEmail,
                keyboardType: TextInputType.emailAddress,
                valid: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "please enter a valid email address";
                  }
                  var regex = RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                  );
          
                  if (!regex.hasMatch(value)) {
                    return " Invalid email address";
                  }
                },
              ),
              CustomTextForm(
                title: "Password",
                iconData: isVisibility == true
                    ? Icons.visibility_off
                    : Icons.visibility,
                onTap: () {
                  setState(() {
                    isVisibility = !isVisibility;
                  });
                },
                obscureText: isVisibility,
                controller: controllerPassword,
                keyboardType: TextInputType.visiblePassword,
                valid: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "please enter a valid password";
                  }
                  var regexp = RegExp(
                      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$');
                  if (!regexp.hasMatch(value)) {
                    return "Invalid password";
                  }
                },
              ),
              SizedBox(
                height: mediaQuery.height * 0.08,
              ),
              CustomBottomFiled(
                title: "Log-in",
                icon: Icons.arrow_forward,
                onTap: () {
                  if(!validKey.currentState!.validate()) {
                   Navigator.pushNamed(context, ItemsRouteName.homePage);
                  }
          
                }
              ),
              SizedBox(
                height: mediaQuery.height * 0.14,
              ),
              CustomTextRegistration(title: "Don't have an account?",titleBottom:"Log-in",onTep: (){
                Navigator.pushNamed(context, ItemsRouteName.sigUpView);
              },)
          
            ],
          ),
        ),
      ),
    );
  }
}

