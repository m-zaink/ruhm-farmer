import 'package:flutter/material.dart';

class CredentialsTextField extends StatelessWidget {
  final String text;
  final bool isPasswordField;

  CredentialsTextField({this.text, this.isPasswordField = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.68,
      height: MediaQuery.of(context).size.height * 0.06,
      child: TextField(
        cursorColor: Colors.black,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFF08D9D6),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          // TODO: Try to change color of the labelText when on top.
          // Read up about hintStyle for changes.
          labelText: text,
          labelStyle: TextStyle(color: Colors.black),
        ),
        obscureText: isPasswordField,
      ),
    );
  }
}

class EntryPointButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  EntryPointButton({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.68,
      height: MediaQuery.of(context).size.height * 0.06,
      child: FlatButton(
        onPressed: this.onPressed ?? () {},
        child: Text(
          this.text ?? 'LOG IN',
          style: TextStyle(color: Colors.white),
        ),
        color: Color(0xFF08D9D6),
      ),
    );
  }
}
