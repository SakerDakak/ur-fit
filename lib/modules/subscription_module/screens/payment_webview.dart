import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:urfit/modules/subscription_module/controller/subscription_cubit.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebView extends StatefulWidget {
  final String url;
  const PaymentWebView({super.key, required this.url});
  static const route = '/paymentWebView';

  @override
  State<PaymentWebView> createState() => _PaymentWebViewState();
}

class _PaymentWebViewState extends State<PaymentWebView> {
  late WebViewController controller;
  @override
  void initState() {
    print("url ::: ${widget.url}");
    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onUrlChange: (UrlChange url) {
            print("url : ${url.url}");
            if (url.url != null &&
                (url.url!.contains("http://urfit-app.rmz.im/") || url.url!.contains("https://urfit-app.rmz.im/"))) {
              context.pop();
              context.read<SubscriptionCubit>().paymentResponse(url.url!);
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
  Widget build(BuildContext context) {
    return WebViewWidget(controller: controller);
  }
}
