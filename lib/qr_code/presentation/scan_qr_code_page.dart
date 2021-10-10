import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:easy_drink/cocktail/application/favorite_cocktails_notifier.dart';
import 'package:easy_drink/core/presentation/routes/app_router.gr.dart';
import 'package:easy_drink/core/presentation/widgets/header_text.dart';
import 'package:easy_drink/main_view/core/presentation/widgets/card_scaffold.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScanQrCodePage extends StatefulWidget {
  const ScanQrCodePage({Key? key}) : super(key: key);

  @override
  State<ScanQrCodePage> createState() => _ScanQrCodePageState();
}

class _ScanQrCodePageState extends State<ScanQrCodePage> {
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  // avoids double details page
  bool didPushDetailRoute = false;
  bool didShowSnackBar = false;

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  void _onQRViewCreated(QRViewController controller) {
    setState(() {
      this.controller = controller;
    });
    controller.scannedDataStream.listen(
      (scanData) {
        setState(() {
          result = scanData;
        });
      },
    );
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        _buildSnackBar(context, 'Permessi mancanti'),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (result != null) {
      context.read<FavoriteCocktailsNotifier>().getCocktail(result!.code).then(
        (cocktail) {
          if (cocktail != null) {
            if (!didPushDetailRoute) {
              AutoRouter.of(context)
                  .push(
                    CocktailDetailRoute(
                      cocktail: cocktail,
                      color: Colors.amber,
                    ),
                  )
                  .then(
                    (value) => setState(() {
                      didPushDetailRoute = false;
                      didShowSnackBar = true;
                    }),
                  );
            }

            setState(() {
              result = null;
              didPushDetailRoute = true;
            });
          } else {
            if (!didShowSnackBar) {
              ScaffoldMessenger.of(context).showSnackBar(
                _buildSnackBar(context, 'Sei offline!'),
              );
              setState(() {
                result = null;
                didShowSnackBar = true;
              });
            }
          }
        },
      );
    }

    return Scaffold(
      body: SafeArea(
        child: CardScaffold(
          headerColor: Colors.amber,
          headerHeight: 65,
          headerChild: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: AutoBackButton(
                  color: Colors.white,
                ),
              ),
              HeaderText("Inquadra il QR"),
            ],
          ),
          bodyColor: Colors.white,
          bodyChild: QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
            onPermissionSet: (ctrl, p) => _onPermissionSet(
              context,
              ctrl,
              p,
            ),
          ),
        ),
      ),
    );
  }

  SnackBar _buildSnackBar(BuildContext context, String text) {
    return SnackBar(
      backgroundColor: Colors.white,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      margin: const EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 64,
      ),
      content: Text(
        text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyText1?.copyWith(
              color: Colors.black,
            ),
      ),
    );
  }
}
