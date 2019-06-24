import 'package:flutter/material.dart';

import 'package:ruhm_farmer/components/customer_screen_components.dart';
import 'package:ruhm_farmer/components/ruhm_farmer_components.dart';
import 'package:ruhm_farmer/utilities/constants.dart';

// A CustomerScreen to display a specific user's details as well as his
// orders.
class CustomerScreen extends StatelessWidget {
  static final String customerScreenRoute = '/customer';

  @override
  Widget build(BuildContext context) {
    return RuhmScaffold(
      appBarChild: customerAppBarChild,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: ListView.builder(
            itemBuilder: (context, index) {
              if (index > 1)
                // TODO: Change this to reflect profuct card instead of customer
                // card.
                return CustomerCard();
              else if (index == 0)
                return MajorProfileWidget();
              else
                return Center(
                  child: Text(
                    'Orders',
                    style: kTitleTextStyle.copyWith(fontSize: 24.0),
                  ),
                );
            },
          ),
        ),
      ),
    );
  }
}
