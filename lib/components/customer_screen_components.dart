import 'package:flutter/material.dart';

import 'package:ruhm_farmer/utilities/constants.dart';

class Details extends StatelessWidget {
  final TextStyle nameTextStyle;
  final TextStyle detailsTextStyle;

  Details({this.nameTextStyle, this.detailsTextStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'John Dow',
            style: nameTextStyle ?? kTitleTextStyle,
          ),
          Text(
            // TODO: Optimize this
            '123 - Seasame Street\n'
            'Kami, Fufu, Wakanda - 555001',
            overflow: TextOverflow.ellipsis,
            style: detailsTextStyle ?? kRegularTextStyle,
            maxLines: 3,
          ),
        ],
      ),
    );
  }
}

class MinorImageHolder extends StatelessWidget {
  // A small image holder widget to be displayed inside a card.

  final String imageUrl;

  MinorImageHolder(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.grey[300],
      child: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        width: MediaQuery.of(context).size.width * 0.17,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(this.imageUrl),
          ),
        ),
      ),
    );
  }
}

class MajorImageHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: MediaQuery.of(context).size.width * 0.28,
      ),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.height * 0.16,
          height: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/place_holder_image.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class MajorDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      child: Details(
        // TODO: Optimize this. Make multiline texts possible.
        nameTextStyle: kTitleTextStyle.copyWith(fontSize: 24.0),
        detailsTextStyle: kRegularTextStyle.copyWith(fontSize: 18.0),
      ),
    );
  }
}

class CustomerCard extends StatelessWidget {
  final Function onPressed;

  CustomerCard({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FlatButton(
        onPressed: this.onPressed,
        padding: EdgeInsets.all(0.0),
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: MinorImageHolder('images/place_holder_image.png'),
              ),
              Details(),
            ],
          ),
        ),
      ),
    );
  }
}

class MajorProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MajorImageHolder(),
          MajorDetails(),
        ],
      ),
    );
  }
}

// Customer's' App Bar Child
Widget customersAppBarChild = Row(
  children: <Widget>[
    kCustomerIcon,
    SizedBox(
      width: 2.0,
    ),
    Text(
      'CUSTOMERS',
      style: kAppBarTextStyle,
    ),
  ],
);

// Customer App Bar Child
Widget customerAppBarChild = Row(
  children: <Widget>[
    kCustomerIcon,
    SizedBox(
      width: 4,
    ),
    Text(
      'Customer',
      style: kAppBarTextStyle,
    ),
  ],
);
