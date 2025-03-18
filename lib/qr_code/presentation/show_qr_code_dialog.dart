import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

Future<void> showQrCodeDialog({
  required BuildContext context,
  required String cocktailId,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Inquadrami!',
          textAlign: TextAlign.center,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        content: Container(
          margin: const EdgeInsets.only(top: 24),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          child: QrImageView(
            data: cocktailId,
          ),
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              AutoRouter.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
