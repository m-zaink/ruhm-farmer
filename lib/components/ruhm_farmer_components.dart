import 'package:flutter/material.dart';

import 'package:ruhm_farmer/utilities/constants.dart';

class RuhmAppBarHomeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Center(child: kHomeIcon),
        SizedBox(
          width: 2,
        ),
        Text(
          'HOME',
          style: kAppBarTextStyle,
        ),
      ],
    );
  }
}

class RuhmScaffold extends StatelessWidget {
  final Widget body;
  final Widget appBarChild;

  RuhmScaffold({@required this.body, this.appBarChild});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kRuhmPrimaryColor,
        title: appBarChild ?? RuhmAppBarHomeChild(),
      ),
      body: this.body,
      backgroundColor: Colors.white,
    );
  }
}

class RuhmHugeButton extends StatelessWidget {
  final Function onPressed;
  final String text;

  RuhmHugeButton({@required this.onPressed, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.23,
      width: MediaQuery.of(context).size.width * 0.93,
      child: FlatButton(
        color: kRuhmPrimaryColor,
        onPressed: this.onPressed,
        child: Text(
          this.text,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}
