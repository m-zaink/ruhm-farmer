import 'package:flutter/material.dart';

import 'package:ruhm_farmer/utilities/constants.dart';

class StatsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'STATISTICS',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 3,
          ),
          Text('Total Revenue Generated : $kRupeeSymbolUnicode 17000'),
          Container(
            child: Column(
              children: <Widget>[
                LabelRow(
                  startText: '$kRupeeSymbolUnicode 0',
                  endText: '$kRupeeSymbolUnicode 30000',
                ),
                StatusIndicator(),
                LabelRow(
                  startText: 'Start',
                  endText: 'Goal',
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class StatusIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SliderTheme(
        data: SliderTheme.of(context).copyWith(
          trackHeight: 10.0,
          thumbShape: RoundSliderOverlayShape(overlayRadius: 0.0),
        ),
        child: Slider(
          value: 20000,
          min: 0.0,
          max: 30000,
          activeColor: kRuhmPrimaryColor,
          onChanged: (newValue) {},
          inactiveColor: Color(0xFF252A34),
        ),
      ),
    );
  }
}

class LabelRow extends StatelessWidget {
  final String startText, endText;

  LabelRow({this.startText, this.endText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(this.startText),
        Text(this.endText),
      ],
    );
  }
}
