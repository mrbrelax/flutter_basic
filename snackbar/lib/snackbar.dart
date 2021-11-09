import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class GlobalSnackbar {
  final String msg;

  const GlobalSnackbar({
    required this.msg,
  });

  static show(
    BuildContext context,
    String msg,
  ) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        duration: Duration(seconds: 5),
        elevation: 0.0,
        behavior: SnackBarBehavior.fixed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.0),
            topRight: Radius.circular(16.0),
          ),
        ),
        action: SnackBarAction(
          label: 'OK',
          onPressed: () {},
          textColor: Colors.white,
        ),
      ),
    );
  }
}
