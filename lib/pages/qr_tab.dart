import 'package:first_app/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QRCodeTab extends StatefulWidget {
  const QRCodeTab({super.key});

  @override
  State<QRCodeTab> createState() => _QRCodeTabState();
}
String qrData = '87687923';

class _QRCodeTabState extends State<QRCodeTab> with TickerProviderStateMixin {
  late TabController controller;
  late MobileScannerController qrController;
  

  @override
  void initState() {
    super.initState();

    controller = TabController(length: 2, vsync: this);

    qrController = MobileScannerController(
      facing: CameraFacing.back,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        elevation: 0,
        leadingWidth: 100,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'QR code',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.appBlack,
            ),
          ),
        ),
        centerTitle: true,
        bottom: tabBar(),
      ),
      body: body(),
    );
  }

  Widget body() {
    return TabBarView(
      controller: controller,
      children: [
        qrScanner(),
        myQrCode(),
      ],
    );
  }

  Widget qrScanner() {
    return Stack(
      children: [
        MobileScanner(
          // fit: BoxFit.contain,
          controller: qrController,
          onDetect: (capture) {
            final List<Barcode> barcodes = capture.barcodes;
            for (final barcode in barcodes) {
              debugPrint('Barcode found! ${barcode.rawValue}');
            }
          },
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.symmetric(
              horizontal: BorderSide(
                color: Colors.black.withOpacity(0.5),
                width: 150,
              ),
              vertical: BorderSide(
                color: Colors.black.withOpacity(0.5),
                width: 50,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Row(
            children: [
              const Expanded(
                flex: 4,
                child: Padding(
                  padding: EdgeInsets.only(left: 40, top: 40, bottom: 40),
                  child: Text(
                    'Place the QR code in the center of the square \n and it will be automatically scanned',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: IconButton(
                    onPressed: () {
                      qrController.toggleTorch();
                    },
                    icon: const Icon(
                      Icons.flashlight_on_outlined,
                      color: Colors.white,
                    )),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.appOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text(
                        'Open from gallery',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: Text(
                        'Enter receiver\'s wallet ID',
                        style:
                            TextStyle(fontSize: 13, color: AppColors.appOrange),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  TabBar tabBar() {
    return TabBar(
      controller: controller,
      labelColor: AppColors.appBlack,
      indicatorWeight: 4,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: AppColors.appOrange,
      tabs: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Scan code'),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('My QR code'),
        ),
      ],
    );
  }
}

Widget myQrCode() {
  return Container(
    margin: const EdgeInsets.fromLTRB(15, 15, 15, 150),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.grey.shade300, width: 1),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
          children: [
            TextSpan(text: 'SCAN\n', style: TextStyle(color: AppColors.appBlack, fontSize: 16)),
            TextSpan(text: 'AND', style: TextStyle(color: AppColors.appOrange, fontSize: 8)),
            TextSpan(text: 'PAY', style: TextStyle(color: AppColors.appOrange, fontSize: 18)),
          ]
        )
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          padding: const EdgeInsets.all(10),
          child: QrImageView(
            data: qrData,
            version: QrVersions.auto,
            size: 200,
          )
        ),
        Container(
          padding: const EdgeInsets.all(5),
          child: Text(
            'Your wallet\'s QR code',
            style: TextStyle(
              color: Colors.grey.shade600
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      border: Border.all(color: Colors.grey.shade300, width: 1),
    ),
        ),

        const Text('\nID: 87687923', 
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))
      ],
    ),
  );
}
