import 'package:flutter/material.dart';
import 'package:to_do_list_application/core/items_route_name.dart';
import 'package:to_do_list_application/widget/custom_buttom_filed.dart';
import 'package:to_do_list_application/widget/custom_text_form.dart';
import 'package:to_do_list_application/widget/custom_text_registration.dart';

class SigUpView extends StatefulWidget {
  const SigUpView({super.key});

  @override
  State<SigUpView> createState() => _SigUpViewState();
}

class _SigUpViewState extends State<SigUpView> {
  var validKeys = GlobalKey<FormState>();
  bool isVisibility = false;
  bool isVis = false;
  TextEditingController controllerFirstName = TextEditingController();
  TextEditingController controllerListName = TextEditingController();
  TextEditingController controllerPhoneNumber = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerConfirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.sizeOf(context);
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: validKeys,
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.symmetric(horizontal: mediaQuery.width * 0.05),
                height: mediaQuery.height * 0.3,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onSurface,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(mediaQuery.height * 0.8),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Create\n Acetone !",
                      style: theme.textTheme.titleLarge
                          ?.copyWith(color: Colors.white, fontSize: 25),
                    ),
                    Expanded(
                        child: Image.asset("assets/image/images_login.png")),
                  ],
                ),
              ),
              SizedBox(height: mediaQuery.height * 0.02),
              CustomTextForm(
                title: "first Name",
                keyboardType: TextInputType.text,
                iconData: Icons.edit,
                controller: controllerFirstName,
                valid: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "please enter a first name";
                  }
                  var regex = RegExp(r'^[a-zA-Z\s]');
                  if (!regex.hasMatch(value)) {
                    return "Please enter a valid name";
                  }
                },
              ),
              CustomTextForm(
                  title: "last Name",
                  keyboardType: TextInputType.text,
                  iconData: Icons.edit,
                  controller: controllerListName,
                  valid: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "please enter a list name";
                    }
                    var regex = RegExp(r'^[a-zA-Z\s]');
                    if (!regex.hasMatch(value)) {
                      return "Please enter a valid name";
                    }
                  }),
              CustomTextForm(
                  title: "phone Number",
                  keyboardType: TextInputType.phone,
                  iconData: Icons.phone_android,
                  controller: controllerPhoneNumber,
                  valid: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "please enter a phone number";
                    }
                    var regex = RegExp(r"(0/91)[7-9][0-9]{9}");
                    if (!regex.hasMatch(value)) {
                      return "Please enter a valid phone number";
                    }
                  }),
              CustomTextForm(
                  title: "password",
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isVisibility,
                  iconData: isVisibility == true
                      ? Icons.visibility_off
                      : Icons.visibility,
                  onTap: () {
                    isVisibility = !isVisibility;
                    setState(() {

                    });
                  },
                  controller: controllerPassword,
                  valid: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "please enter a password";
                    }
                    var regex = RegExp(
                        r'^(?=.*\d)(?=.*[a-zA-Z])[a-zA-Z0-9!@#$%&*]{6,20}$');
                    if (!regex.hasMatch(value)) {
                      return "please enter a invalid password";
                    }
                  }),
              CustomTextForm(
                  title: "confirm password",
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: isVis,
                  iconData: isVis == true
                      ? Icons.visibility_off
                      : Icons.visibility,
                  onTap: () {
                    setState(() {

                    });
                    isVis = !isVis;
                  },
                  controller: controllerConfirmPassword,
                  valid: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "please enter a password";
                    }
                    var regex = RegExp(
                        r'^(?=.*\d)(?=.*[a-zA-Z])[a-zA-Z0-9!@#$%&*]{6,20}$');
                    if (!regex.hasMatch(value)) {
                      return "The number does not match";
                    }
                  }),
              SizedBox(height: mediaQuery.height * 0.05),
              CustomBottomFiled(
                title: "Create Account",
                icon: Icons.arrow_forward,
                onTap: () {
                  if (validKeys.currentState!.validate()) {

                  }
                  Navigator.pushNamed(context, ItemsRouteName.homePage);

                },
              ),
              SizedBox(height: mediaQuery.height * 0.08),
              CustomTextRegistration( titleBottom: "You already have an account?",title: " Create Account ",onTep: (){
                Navigator.pushNamed(context, ItemsRouteName.homePage);
              },)


            ],
          ),
        ),
      ),
    );
  }
}
//You already have an account?