import 'package:flutter/material.dart';

import 'package:ruhm_farmer/components/home_screen_components.dart';
import 'package:ruhm_farmer/components/ruhm_farmer_components.dart';
import 'package:ruhm_farmer/screens/customers_screen.dart';

// HomeScreen consisting of statistics and buttons to view / add customers.
class HomeScreen extends StatelessWidget {
  static String homeScreenRoute = '/';

  @override
  Widget build(BuildContext context) {
    return RuhmScaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.13,
              ),
              StatsContainer(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              RuhmHugeButton(
                text: 'View Customers',
                onPressed: () => Navigator.pushNamed(
                    context, CustomersScreen.customersScreenRoute),
              ),
              SizedBox(
                height: 16.0,
              ),
              RuhmHugeButton(
                text: 'Add Customer',
                // TODO: Add navigation to add-customer screen here.
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
