import 'package:flutter/material.dart';

import 'package:ruhm_farmer/components/customer_screen_components.dart';
import 'package:ruhm_farmer/components/ruhm_farmer_components.dart';
import 'package:ruhm_farmer/screens/customer_screen.dart';

// A Customer Screen to 
class CustomersScreen extends StatelessWidget {

  static final String customersScreenRoute = '/customers';



  @override
  Widget build(BuildContext context) {
    return RuhmScaffold(
      appBarChild: customersAppBarChild,
      body: ListView.builder(
        itemBuilder: (context, index) => CustomerCard(
          onPressed: () => Navigator.pushNamed(context, CustomerScreen.customerScreenRoute),
        ),
      ),
    );
  }
}






