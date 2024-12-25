import 'package:flutter/material.dart';
import 'package:flutter_advanced_app/core/helpers/extensions.dart';
import 'package:flutter_advanced_app/core/themes/styles.dart';

void setupMethodState(BuildContext context, String error) {
  context.pop();
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          icon: Icon(
            Icons.error,
            color: Colors.red,
            size: 30,
          ),
          content: Text(
            error,
            style: TextStyles.font15DarkBlueMedieum,
          ),
          actions: [
            TextButton(
                onPressed: () {
                  context.pop();
                },
                child: Text(
                  "Got It",
                  style: TextStyles.font14BlueSemiBold,
                ))
          ],
        );
      });
}
