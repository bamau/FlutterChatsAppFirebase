import 'package:chats_app_firebase/screens/login_screen.dart';
import 'package:chats_app_firebase/screens/sign_up_screen.dart';
import 'package:chats_app_firebase/size_config.dart';
import 'package:chats_app_firebase/styles.dart';
import 'package:chats_app_firebase/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget{
  static final routeName = 'welcome';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Style.darkColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                "Flutter",
                style: Style.appNameTextStyle,
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                PrimaryButton(
                  onTap: () => Navigator.of(context).pushNamed(LoginScreen.routeName),
                  child: Text(
                    "Sign in",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 21),
                  ),
                ),
                SizedBox(
                  height: SizeConfig.blocSizeVertical * 2,
                ),
                PrimaryButton(
                  onTap: () => Navigator.of(context).pushNamed(SignUpScreen.routeName),
                  child: Text(
                    "Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 21),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}