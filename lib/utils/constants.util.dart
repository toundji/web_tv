import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_tv/screens/communaute.screen.dart';
import 'package:web_tv/screens/profile.screen.dart';
import 'package:web_tv/utils/registration_form.util.dart';
import 'package:web_tv/utils/subscription_notif.util.dart';
import 'package:web_tv/utils/subscription_plans.util.dart';
import '../screens/home.screen.dart';
import 'custom_dialog_box.util.dart';


const appGradient = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(15, 18, 23, 1),
      Color.fromARGB(255, 9, 13, 43),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topRight,
  ),
);

double iconSize = 20;

const bottomNavBarDecoration = NavBarDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(15, 18, 23, 1),
      Color.fromARGB(255, 9, 13, 43),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topRight,
  ),
  borderRadius: BorderRadius.zero,
  colorBehindNavBar: Colors.black,
);

const appBarDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(15, 18, 23, 1),
      Color.fromARGB(255, 9, 13, 43),
    ],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  ),
);

List<Widget> buildScreens({ Widget homeScreenReplacement = const HomeScreen(), }) {
  return [
    homeScreenReplacement,
    CommunauteScreen(),
    CommunauteScreen(),
    ProfileScreen(),
  ];
}

const primaryColor = Color.fromARGB(255, 255, 255, 255);
const themeColor1 = Color(0xFF318CE7);
const themeColor2 = Color(0xFF1C108A);
const themeColor3 = Color(0xFF15097B);
const themeColor4 = Color(0xFF6F35A5);
const themeColor5 = Color(0xFFF1E6FF);
const themeColor6 = Color(0xFF193753);
const themeColor7 = Color(0xFF0D5A6C);
const themeColor8 = Color(0xFF0A3C48);
const themeColor9 = Color(0xFFFF5A1D);
const navbarcolor = Color(0xFFB9C1C3);
const themeColor10 = Color(0xFF327A81);
const textColor = Color(0xFFd5e1ef);

//const primaryColor = Color(0xFFFFC107);
const secondaryColor = Color(0xFF242430);
const darkColor = Color(0xFF191923);
const bodyTextColor = Color(0xFF8B8B8D);
const bgColor = Color(0xFF1E1E28);

const defaultPadding = 20.0;
const defaultDuration = Duration(seconds: 1);
const maxWidth = 5000.0;

const kTextFieldDecoration = InputDecoration(
    hintText: 'Enter a value',
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0))),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: themeColor6, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: themeColor6, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ));

const kSearchFieldDecoration = InputDecoration(
    hintText: 'Enter a value',
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(32.0))),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: themeColor6, width: 1.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: themeColor6, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(32.0)),
    ));

var backgroundDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(padding),
);

const testPageDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(25, 55, 83, 1),
      Color.fromRGBO(36, 59, 100, 1),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  ),
);

var modalbackgroundDecoration = BoxDecoration(
    shape: BoxShape.rectangle,
    gradient: LinearGradient(
      colors: [
        Color.fromRGBO(25, 55, 83, 1),
        Color.fromRGBO(36, 59, 100, 1),
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    borderRadius: BorderRadius.circular(padding),
    boxShadow: [
      BoxShadow(color: themeColor6, offset: Offset(0, 10), blurRadius: 10)
    ]);

const double padding = 20;
const double avatarRadius = 45;

List<PersistentBottomNavBarItem> navBarsItems(BuildContext context) {
  return [
    PersistentBottomNavBarItem(
      iconSize: iconSize,
      icon: Icon(FontAwesomeIcons.house, size: 18),
      title: ("Accueil"),
      textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize: iconSize,
      icon: Icon(FontAwesomeIcons.basketShopping, size: 18),
      textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
      title: ("Boutique"),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize: iconSize,
      icon: Icon(FontAwesomeIcons.magnifyingGlass, size: 18),
      title: ("Recherche"),
      textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
    PersistentBottomNavBarItem(
      iconSize: iconSize,
      icon: Icon(FontAwesomeIcons.solidUser, size: 18),
      title: ("Profil"),
      textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: CupertinoColors.systemGrey,
    ),
  ];
}


List<String> genderOptions = ["Masculin", "Féminin", "Autre"];

List<String> userRoleOptions = [
  "Administrateur",
  "Usager routier",
  "Police",
  "CNSR",
  "ANAT"
];


String validateEmail(String? value) {
  if (value!.isEmpty) {
    return "Veuillez entrer votre email";
  }
  if (emailValidator(value) == false) {
    return "Votre email n'est pas valide";
  }
  return "";
}

String validatePassword(String? value) {
  if (value!.isEmpty) {
    return "Veuillez entrer un mot de passe";
  }
  if (value.length < 8) {
    return "Le mot de passe doit faire 8 caractères au moins";
  }
  return "";
}

String validateConfirmPassword(String? confirmPassword, String? password) {
  if (confirmPassword!.isEmpty) {
    return "Veuillez entrer un mot de passe";
  }
  if (confirmPassword.compareTo(password!) != 0) {
    return "Vous n'avez pas entré le même mot de passe";
  }
  return "";
}

bool emailValidator(String value) {
  const pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = RegExp(pattern);
  return (!regex.hasMatch(value)) ? false : true;
}

bool isPhoneNumberValid(String value) {
  const pattern = r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s./0-9]*$';
  final regExp = RegExp(pattern);
  if (!regExp.hasMatch(value)) {
    return false;
  }
  return true;
}

String validateFirstname(String? value) {
  if (value!.isEmpty) {
    return "Veuillez entrer votre prénom";
  }
  return "";
}

String validateLastname(String? value) {
  if (value!.isEmpty) {
    return "Veuillez entrer votre nom";
  }
  return "";
}

String validatePhone(String? value) {
  if (value!.isEmpty) {
    return "Veuillez entrer votre téléphone";
  }
  if (isPhoneNumberValid(value) == false) {
    return "Veuillez entrer un numero de téléphone valide";
  }
  return "";
}

String validateGender(String? value) {
  if (value!.isEmpty) {
    return "Veuillez spécifier un sexe";
  }
  if (!genderOptions.contains(value)) {
    return "Veuillez spécifier un sexe valide";
  }
  return "";
}

String validateUserRole(String? value) {
  if (value!.isEmpty) {
    return "Veuillez spécifier le rôle de l'utilisateur";
  }
  if (!userRoleOptions.contains(value)) {
    return "Veuillez spécifier un rôle valide";
  }
  return "";
}

String validateUsername(String? value) {
  if (value!.isEmpty) {
    return "Veuillez entrer votre nom d'utilisateur";
  }
  return "";
}

String validateUsernameForLogin(String? value) {
  if (value!.isEmpty) {
    return "Veuillez entrer votre email";
  }
  return "";
}

String validatePasswordForLogin(String? value) {
  if (value!.isEmpty) {
    return "Veuillez entrer un mot de passe";
  }
  return "";
}

String validateTextFieldInput(String? value) {
  if (value!.isEmpty) {
    return "Ce champ ne peut être vide";
  }
  return "";
}

showRegistrationModal(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    showDialog(
        context: context,
        builder: (BuildContext context) => CustomDialogBox(dialogContent: RegistrationForm())
    );
  });
}

showSubscriptionsPlan(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    showDialog(
        context: context,
        builder: (BuildContext context) => CustomDialogBox(dialogContent: SubscriptionPlans())
    );
  });
}

showSubscriptionNotification(BuildContext context) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    showDialog(
        context: context,
        builder: (BuildContext context) => CustomDialogBox(dialogContent: SubscriptionNotif())
    );
  });
}
