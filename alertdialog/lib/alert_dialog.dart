import 'package:flutter/material.dart';

enum DialogsAction { yes, cancel }

class AlertDialogs {
  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: Text(title),
          content: Text(body),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(DialogsAction.cancel),
              child: Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(DialogsAction.yes),
              child: Text(
                'Confirm',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
    return (action != null) ? action : DialogsAction.cancel;
  }
}
