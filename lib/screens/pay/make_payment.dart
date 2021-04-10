import 'package:flutter/material.dart';
import 'dart:io';
// ignore: import_of_legacy_library_into_null_safe
import 'package:random_string/random_string.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';

import 'package:webview_flutter/webview_flutter.dart';

class MakePaymentWebView extends StatelessWidget {
  late final WebViewController controller;

  //final String sessionDetails;

  // MakePaymentWebView({required this.sessionDetails});

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

    return WebView(
      initialUrl: 'https://payments.ipayafrica.com/v3/ke',
      javascriptMode: JavascriptMode.unrestricted,
      onWebViewCreated: (WebViewController webViewController) {
        controller = webViewController;
        _loadHtmlFromAssets(controller);
      },
    );
  }

  String buildHtml() {
    var url = "https://payments.ipayafrica.com/v3/ke";

    String transactionId = randomAlphaNumeric(10);
    Map requestParams = Map<String, dynamic>();

    requestParams["live"] = 0;
    requestParams["oid"] = transactionId;
    requestParams["inv"] = transactionId;
    requestParams["ttl"] = 0;
    requestParams["tel"] = "";
    requestParams["eml"] = "";
    requestParams["vid"] = "demo";
    requestParams["crl"] = 2;
    //requestParams["p1"] = sessionDetails;

    String datastring =
        "${requestParams["live"]}${requestParams["oid"]}${requestParams["inv"]}${requestParams["ttl"]}${requestParams["tel"]}${requestParams["eml"]}${requestParams["vid"]}${requestParams["crl"]}";
    String hashkey = "demoCHANGED";

    Hmac hmacSha1 = Hmac(sha1, utf8.encode(hashkey)); // HMAC-SHA256
    Digest digest = hmacSha1.convert(utf8.encode(datastring));
    requestParams["hsh"] = "$digest";

    String form = "";
    requestParams.forEach((key, value) {
      String input = "<input name='$key' type='text' value='$value'></br>";
      form = "$form$input";
    });
    print(form);

    String htmlPage =
        "<html><form method='POST' action='$url'>$form<button type='submit'>Lipa</button></form></html>";
    print("\n");
    print(htmlPage);
    return htmlPage;

    // TODO SHOULD GET A HTTP RESPONSE STREAM
  }

  _loadHtmlFromAssets(WebViewController _controller) async {
    _controller.loadUrl(Uri.dataFromString(buildHtml(),
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}
