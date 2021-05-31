import 'package:flutter/material.dart';
import 'dart:io';
// ignore: import_of_legacy_library_into_null_safe
import 'package:random_string/random_string.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:retry/retry.dart';
import 'package:vet_flutter/constants.dart';
import 'package:vet_flutter/generated/service.pb.dart';
import 'package:vet_flutter/google/protobuf/timestamp.pb.dart';
import 'package:vet_flutter/screens/discover/discover.dart';
import 'package:vet_flutter/widgets/schedule_appointment/send_email.dart';
import 'package:webview_flutter/platform_interface.dart';

import 'package:webview_flutter/webview_flutter.dart';

class MakePaymentWebView extends StatelessWidget {
  final Farmer farmer;
  final double amount;
  final Timestamp time;
  final Veterinary vet;
  final List<Map<String, dynamic>> serviceRequests;

  MakePaymentWebView(
      {required this.farmer,
      required this.time,
      required this.amount,
      required this.vet,
      required this.serviceRequests});
  late final WebViewController controller;

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

    String url =
        'https://ipay-payment-container-p2gh3d44pq-uc.a.run.app?email=${farmer.email}&phone=${farmer.phone}&amount=$amount&client=vets&customer=${farmer.firstName} ${farmer.lastName},${farmer.phone}&items=';

    for (var serviceRequest in serviceRequests) {
      url +=
          '${serviceRequest["service"]},,${serviceRequest["units"]},${serviceRequest["unitCost"]},${serviceRequest["units"] * serviceRequest["unitCost"]}';
      url += ';';
    }
    return SafeArea(
        child: WebView(
      initialUrl: url,
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        controller = webViewController;
      },
      onWebResourceError: (webResourceError) {
        retry(() {
          print(webResourceError.failingUrl);
          controller.loadUrl(webResourceError.failingUrl!);
        }, maxAttempts: 5);
      },
      onPageFinished: (url) {
        controller.currentUrl().then((url) {
          if (url!.contains("success.php")) {
            //_loadHtmlFromAssets("success");
            //_showSuccessDialog(context);
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Appointment Booked Successfully'),
                duration: Duration(seconds: -1),
                action: SnackBarAction(
                    label: "HOME",
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Discover(null)));
                    })));
            sendEmail(
                time.toDateTime().toIso8601String(),
                "${vet.firstName} ${vet.lastName}",
                "${farmer.firstName}  ${farmer.lastName}",
                farmer.email);
          }
        });
      },
    ));
  }

  Future<void> _showSuccessDialog(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 3,
          actions: [buildHomeButton(context)],
          content: Container(
            height: 100,
            color: Colors.white,
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  Container(
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                      size: 40,
                    ),
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                  Text(
                    "Appointment booked successfully!",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  _loadHtmlFromAssets(String data) async {
    controller.loadUrl(Uri.dataFromString(data,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  buildHomeButton(BuildContext context) {
    return TextButton(
        onPressed: () => {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Discover(null)))
            },
        child: Text('BACK HOME', style: TextStyle(color: kColorPrimary)),
        style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith(
                (states) => Colors.blueGrey.shade100)));
  }
}
