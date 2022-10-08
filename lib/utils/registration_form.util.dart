// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:web_tv/utils/password_input_field.util.dart';
import 'package:web_tv/utils/responsive.util.dart';
import 'package:web_tv/utils/select_field.util.dart';
import 'package:web_tv/utils/spinner.util.dart';
import 'background.util.dart';
import 'button.util.dart';
import 'constants.util.dart';
import 'form_text_input_field.util.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  String? firstname;
  String? lastname;
  String? gender;
  String? phone;
  String? email;
  bool? checkedValue = false;
  String? username;
  String? password;
  dynamic profile_picture;
  String? message;
  String? user_role;
  TextEditingController? firstnameFieldController;
  TextEditingController? lastnameFieldController;
  TextEditingController? birthDateFieldController;
  TextEditingController? countryFieldController;
  TextEditingController? emailFieldController;
  TextEditingController? usernameFieldController;
  TextEditingController? phoneFieldController;
  TextEditingController? passwordFieldController;
  TextEditingController? confirmPasswordFieldController;
  String errormessage = "";
  bool _isInAsyncCall = false;

  @override
  initState() {
    super.initState();
    firstnameFieldController = TextEditingController();
    lastnameFieldController = TextEditingController();
    birthDateFieldController = TextEditingController();
    countryFieldController = TextEditingController();
    emailFieldController = TextEditingController();
    phoneFieldController = TextEditingController();
    usernameFieldController = TextEditingController();
    passwordFieldController = TextEditingController();
    confirmPasswordFieldController = TextEditingController();
  }

  Widget getForm(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final formDesktopLayout = Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: RoundedInputField(
                  controller: lastnameFieldController!,
                  validator: validateLastname,
                  textInputType: TextInputType.text,
                  hintText: "Nom",
                  onChanged: (value) {},
                  onSaved: (value) {
                    lastname = value;
                  },
                ),
              ),
              SizedBox(
                width: size.height * 0.01,
              ),
              Expanded(
                child: RoundedInputField(
                  controller: firstnameFieldController!,
                  validator: validateFirstname,
                  textInputType: TextInputType.text,
                  hintText: "Prénom",
                  onChanged: (value) {},
                  onSaved: (value) {
                    firstname = value;
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: RoundedInputField(
                  controller: emailFieldController!,
                  validator: validateEmail,
                  textInputType: TextInputType.emailAddress,
                  hintText: "Adresse Email",
                  onChanged: (value) {},
                  onSaved: (value) {
                    email = value;
                  },
                ),
              ),
              SizedBox(
                width: size.height * 0.01,
              ),
              Expanded(
                child: RoundedInputField(
                  controller: phoneFieldController!,
                  validator: validatePhone,
                  textInputType: TextInputType.phone,
                  hintText: "Téléphone",
                  onChanged: (value) {},
                  onSaved: (value) {
                    phone = value;
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                child: RoundedInputField(
                  controller: usernameFieldController!,
                  validator: validateUsername,
                  textInputType: TextInputType.text,
                  hintText: "Nom d'Utilisateur",
                  onChanged: (value) {},
                  onSaved: (value) {
                    username = value;
                  },
                ),
              ),
              SizedBox(
                width: size.height * 0.01,
              ),
              Expanded(
                child: RoundedSelectField(
                  controller: countryFieldController!,
                  validator: validateGender,
                  textInputType: TextInputType.text,
                  prefixIcon: Icons.person,
                  prefixIconColor: primaryColor,
                  hintText: "Sexe",
                  onChanged: (value) {},
                  onSaved: (value) {
                    gender = value;
                  },
                  options: ["", ...genderOptions],
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          RoundedSelectField(
              controller: birthDateFieldController!,
              validator: validateUserRole,
              textInputType: TextInputType.text,
              prefixIcon: Icons.person,
              prefixIconColor: primaryColor,
              hintText: "Role",
              onChanged: (value) {},
              onSaved: (value) {
                user_role = value;
              },
              options: ["", ...userRoleOptions]),
          SizedBox(
            height: size.height * 0.01,
          ),
          RoundedPasswordField(
            controller: passwordFieldController!,
            textInputType: TextInputType.text,
            validator: validatePassword,
            onChanged: (value) {
              password = value;
            },
            hintText: "Mot de passe",
            onSaved: (value) {
              password = value;
            },
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          RoundedPasswordField(
            controller: confirmPasswordFieldController!,
            textInputType: TextInputType.text,
            validator: (confirmPassword) {
              return validateConfirmPassword(confirmPassword, password);
            },
            onChanged: (value) {},
            hintText: "Encore Mot Passe",
            onSaved: (value) {},
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Center(
            child: Text(
              errormessage,
              style: TextStyle(
                  color: Colors.red,
                  fontFamily: "Kiwi",
                  fontWeight: FontWeight.bold),
            ),
          ),
          RoundedButton(
            elevation: 12.0,
            width: (Responsive.isMobileLarge(context) ||
                    Responsive.isDesktop(context) ||
                    Responsive.isTablet(context))
                ? 20000
                : size.width,
            text: "S'INSCRIRE",
            color: primaryColor,
            fontColor: Colors.white,
            fontFamily: "Kiwi",
            height: (Responsive.isMobileLarge(context) ||
                    Responsive.isDesktop(context) ||
                    Responsive.isTablet(context))
                ? 52
                : 35.5,
            onPressed: () => submit(_formKey, context),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Center(
              child: TextButton(
            child: Text(
              "Déjà inscrit ? Connectez-vous",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Kiwi",
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          )),
        ],
      ),
    );

    final formMobileLayout = Form(
      key: _formKey,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(bottom: 2),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  Flexible(
                    flex: 4,
                    child: Text(
                      "Créer un compte pour naviguer sur cette plateforme",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Flexible(
                      flex: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundedInputField(
                            controller: firstnameFieldController!,
                            validator: validateFirstname,
                            textInputType: TextInputType.text,
                            hintText: "Nom",
                            onChanged: (value) {},
                            onSaved: (value) {
                              firstname = value;
                            },
                          ),
                          RoundedInputField(
                            controller: lastnameFieldController!,
                            validator: validateFirstname,
                            textInputType: TextInputType.text,
                            hintText: "Prénom",
                            onChanged: (value) {},
                            onSaved: (value) {
                              firstname = value;
                            },
                          ),
                          RoundedInputField(
                            controller: birthDateFieldController!,
                            validator: validateFirstname,
                            textInputType: TextInputType.datetime,
                            hintText: "Date de naissance",
                            onChanged: (value) {},
                            onSaved: (value) {
                              firstname = value;
                            },
                          ),
                          RoundedInputField(
                            controller: countryFieldController!,
                            validator: validateFirstname,
                            textInputType: TextInputType.text,
                            hintText: "Pays de résidence",
                            onChanged: (value) {},
                            onSaved: (value) {
                              firstname = value;
                            },
                          ),
                          RoundedInputField(
                            controller: phoneFieldController!,
                            validator: validateFirstname,
                            textInputType: TextInputType.phone,
                            hintText: "Téléphone",
                            onChanged: (value) {},
                            onSaved: (value) {
                              firstname = value;
                            },
                          ),
                          RoundedInputField(
                            controller: emailFieldController!,
                            validator: validateFirstname,
                            textInputType: TextInputType.emailAddress,
                            hintText: "Email",
                            onChanged: (value) {},
                            onSaved: (value) {
                              firstname = value;
                            },
                          ),
                          RoundedInputField(
                            controller: usernameFieldController,
                            validator: validateFirstname,
                            textInputType: TextInputType.text,
                            hintText: "Identifiant",
                            onChanged: (value) {},
                            onSaved: (value) {
                              firstname = value;
                            },
                          ),
                          RoundedInputField(
                            controller: passwordFieldController!,
                            validator: validateFirstname,
                            textInputType: TextInputType.text,
                            hintText: "Mot de passe",
                            obscureText: true,
                            onChanged: (value) {},
                            onSaved: (value) {
                              firstname = value;
                            },
                          ),
                          CheckboxListTile(
                            title: Text(
                              "Je déclare avoir lu et accepté les conditions d'utilisations de cette plateforme",
                              style: TextStyle(fontSize: 8),
                            ), //    <-- label
                            value: checkedValue,
                            onChanged: (newValue) {
                              setState(() {
                                checkedValue = newValue;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                          ),
                        ],
                      ))
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                height: 60,
                thickness: 0.9,
                indent: 15,
                endIndent: 15,
                color: Colors.black,
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                children: [
                  Flexible(
                    flex: 5,
                    child: SimpleButton(
                      color: Colors.red,
                      radius: 2,
                      fontColor: Color.fromARGB(255, 219, 214, 214),
                      text: "Valider",
                      width: 150,
                      height: 30,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Flexible(
                    flex: 5,
                    child: SimpleButton(
                      color: Colors.black,
                      radius: 2,
                      fontColor: Color.fromARGB(255, 219, 214, 214),
                      text: "Lire les conditions",
                      centerText: true,
                      width: 150,
                      height: 30,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
    return Responsive.isMobile(context) ? formMobileLayout : formDesktopLayout;
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: _isInAsyncCall,
      opacity: 0.5,
      progressIndicator: Spinner(
        icon: FontAwesomeIcons.spinner,
      ),
      child: Background(
        height: MediaQuery.of(context).size.height * 0.65,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: getForm(context)),
      ),
    );
  }

  submit(GlobalKey<FormState> key, BuildContext context) async {
    if (key.currentState!.validate() == true) {
      key.currentState!.save();
      FocusScope.of(context).requestFocus(FocusNode());
      setState(() {
        _isInAsyncCall = true;
      });
      if (1 == 1) {
        setState(() {
          _isInAsyncCall = false;
        });
      } else {
        setState(() {
          _isInAsyncCall = false;
        });
        errormessage = "Une erreur est survenue ! Veuillez réessayer.";
      }
    }
  }

  void clearFields() {
    passwordFieldController!.text = '';
    confirmPasswordFieldController!.text = '';
  }
}
