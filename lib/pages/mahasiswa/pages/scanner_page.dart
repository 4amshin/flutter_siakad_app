import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/scanner_page_widgets/sp_app_bar.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/scanner_page_widgets/sp_build_qr_view.dart';
import 'package:flutter_siakad_app/pages/mahasiswa/widgets/scanner_page_widgets/sp_scan_button.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key}) : super(key: key);

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? qrController;

  @override
  void initState() {
    log("QR Code Scan Page");
    super.initState();
  }

  @override
  void dispose() {
    qrController?.dispose();
    super.dispose();
  }

  // In order to get hot reload to work we need to pause the camera if the platform
  // is android, or resume the camera if the platform is iOS.
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      qrController!.pauseCamera();
    } else if (Platform.isIOS) {
      qrController!.resumeCamera();
    }
  }

  String? scannedData;
  bool isButtonEnabled = false;

  void onQRViewCreated(QRViewController qrController) {
    this.qrController = qrController;
    qrController.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
        log("Scanned Data: ${scanData.code}");
        isButtonEnabled = true;
        scannedData = scanData.code;
      });
    });
  }

  void scanQrCode() {
    log("Scanning......");
    //navigate to LCD detail page for loan operation
    // Get.to(StLcdDetailView(scannedData: scannedData!));
  }

  //ask camera permission
  void onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
    log('${DateTime.now().toIso8601String()}_onPermissionSet $p');
    if (!p) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('no Permission')),
      );
    }
  }

  bool isLightOn = false;

  //Turn on Flash Light
  toggleFlash() async {
    await qrController?.toggleFlash();
    isLightOn = !isLightOn;
    setState(() {});
    log("Flash Light Status : $isLightOn");
  }

  //Flip the camera
  flipCamera() async {
    await qrController?.flipCamera();
    setState(() {});
  }

  //pause camera scanner
  pauseCamera() async {
    await qrController?.pauseCamera();
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SpAppBar(
        lightOn: () => toggleFlash(),
        isLightOn: isLightOn,
      ),
      body: Stack(
        children: [
          SpBuildQrView(
            qrKey: qrKey,
            onQRViewCreated: onQRViewCreated,
            onPermissionSet: (ctrl, p) => onPermissionSet(context, ctrl, p),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: SpScanButton(
              onTap: isButtonEnabled ? () => scanQrCode() : null,
            ),
          ),
        ],
      ),
    );
  }
}
