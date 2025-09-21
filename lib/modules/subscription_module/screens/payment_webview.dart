import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:urfit/core/presentation/localization/l10n.dart';
import 'package:urfit/core/presentation/style/colors.dart';
import 'package:urfit/core/presentation/style/fonts.dart';

class PaymentWebView extends StatefulWidget {
  final String url;
  const PaymentWebView({super.key, required this.url});
  static const route = '/paymentWebView';

  @override
  State<PaymentWebView> createState() => _PaymentWebViewState();
}

class _PaymentWebViewState extends State<PaymentWebView> {
  late WebViewController controller;
  bool isLoading = true;
  @override
  void initState() {
    print("url ::: ${widget.url}");
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // تحديث شريط التحميل
            if (progress == 100 && mounted) {
              setState(() {
                isLoading = false;
              });
            }
          },
          onUrlChange: (UrlChange url) {
            print("url : ${url.url}");
            if (url.url != null &&
                (url.url!.contains("http://urfit-app.rmz.im/") ||
                    url.url!.contains("https://urfit-app.rmz.im/"))) {
              if (mounted) {
                context.pop(url.url);
              }
            }
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {
            print("http error : ${error.response?.uri?.data}");
            print("http error : ${error.response?.statusCode}");
          },
          onWebResourceError: (WebResourceError error) {
            print("web resource error : ${error.description}");
            print("web resource error : ${error.errorCode}");
            print("web resource error : ${error.errorType}");
          },
          onNavigationRequest: (NavigationRequest request) {
            print("request : ${request.url}");

            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  void dispose() {
    // تنظيف الموارد إذا لزم الأمر
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Co.backGround,
      appBar: AppBar(
        backgroundColor: Co.backGround,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          L10n.tr().payment,
          style: TStyle.bold_16.copyWith(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            WebViewWidget(controller: controller),
            if (isLoading)
              Container(
                color: Co.backGround,
                child: const Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
