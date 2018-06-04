import 'package:flutter/material.dart';
import 'package:gonfi/app/widget/gonfi_dialog.dart';
import 'package:gonfi/generated/i18n.dart';

Widget scheduleAuthDialogBuilder(BuildContext context) {
  return GongiAlertDialog(
    title: Text(S.of(context).schedule_page__auth_dialog_title),
    titlePadding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0),
    contentPadding:
        const EdgeInsets.only(top: 24.0, left: 32.0, right: 32.0, bottom: 32.0),
    content: new Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Text(
        S.of(context).schedule_page__auth_dialog_message,
        style: TextStyle(color: Colors.grey),
      ),
    ),
    actions: [
      FlatButton(
        child: Text(
          S.of(context).schedule_page__auth_dialog_not_now_button,
          style: TextStyle(color: Theme.of(context).primaryColor),
        ),
        onPressed: () {
          Navigator.pop(context, false);
        },
      ),
      RaisedButton(
        textColor: Colors.white,
        color: Theme.of(context).primaryColor,
        child: Text(S.of(context).schedule_page__auth_dialog_sig_in_button),
        onPressed: () {
          Navigator.pop(context, true);
        },
      ),
    ],
  );
}
