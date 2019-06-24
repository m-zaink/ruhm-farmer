import 'package:flutter/material.dart';

import 'package:ruhm_farmer/screens/customer_screen.dart';
import 'package:ruhm_farmer/screens/customers_screen.dart';
import 'package:ruhm_farmer/screens/home_screen.dart';
import 'package:ruhm_farmer/screens/log_in_screen.dart';

void main() => runApp(RuhmFarmer());

class RuhmFarmer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        accentColor: Color(0xFF08D9D6),
        highlightColor: Color(0xFF08D9D6),
      ),
      initialRoute: LogInScreen.logInScreenRoute,
//      initialRoute: HomeScreen.homeScreenRoute,
//      initialRoute: CustomerScreen.customerScreenRoute,
//      initialRoute: CustomerScreen.customerScreenRoute,
      routes: {
        HomeScreen.homeScreenRoute: (context) => HomeScreen(),
        LogInScreen.logInScreenRoute: (context) => LogInScreen(),
        CustomersScreen.customersScreenRoute: (context) => CustomersScreen(),
        CustomerScreen.customerScreenRoute: (context) => CustomerScreen(),
      },
    );
  }
}
