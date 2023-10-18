import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class SpBuildQrView extends StatelessWidget {
  final Key qrKey;
  final void Function(QRViewController) onQRViewCreated;
  final void Function(QRViewController, bool)? onPermissionSet;
  const SpBuildQrView({
    Key? key,
    required this.qrKey,
    required this.onQRViewCreated,
    this.onPermissionSet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 215.0
        : 300.0;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: onQRViewCreated,
      overlay: QrScannerOverlayShape(
        borderColor: Colors.indigo,
        borderRadius: 10,
        borderLength: 30,
        borderWidth: 10,
        cutOutSize: scanArea,
      ),
      onPermissionSet: onPermissionSet,
    );
  }
}
