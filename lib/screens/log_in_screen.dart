import 'package:flutter/material.dart';

import 'package:ruhm_farmer/components/log_in_components.dart';
import 'package:ruhm_farmer/screens/home_screen.dart';
import 'package:ruhm_farmer/utilities/constants.dart';

// Log In page with two input fields (username and password) and a log - in
// button.
class LogInScreen extends StatelessWidget {
  static String logInScreenRoute = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: double.infinity,
            decoration: kLogInBoxDecoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: MediaQuery.of(context).size.height * 0.10),
                Text(
                  'RUHM',
                  style: kRuhmTitleTextStyle,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.13),
                CredentialsTextField(
                  text: 'Username',
                ),
                SizedBox(height: 8),
                CredentialsTextField(
                  text: 'Password',
                  isPasswordField: true,
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                EntryPointButton(
                  // TODO: Add input validation and authentication here.
                  onPressed: () =>
                      Navigator.pushNamed(context, HomeScreen.homeScreenRoute),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
