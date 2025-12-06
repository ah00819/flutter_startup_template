
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> openUrl(BuildContext context, String url,
    [String errMsg = "Failed to Open Url"]) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri, mode: LaunchMode.inAppWebView);
  } else if (context.mounted) {
    showErrorToast(context, errMsg);
  }
}

void showErrorToast(BuildContext context, String errMsg) {
  toastification.show(
    context: context,
    type: ToastificationType.error,
    title: Text(errMsg),
    autoCloseDuration: const Duration(seconds: 3),
    alignment: Alignment.bottomCenter,
  );
}

void showWarningToast(BuildContext context, String warnMsg) {
  toastification.show(
    context: context,
    type: ToastificationType.warning,
    title: Text(warnMsg),
    autoCloseDuration: const Duration(seconds: 3),
    alignment: Alignment.bottomCenter,
  );
}

void showSuccessToast(BuildContext context, String successMsg) {
  toastification.show(
    context: context,
    type: ToastificationType.success,
    title: Text(successMsg),
    autoCloseDuration: const Duration(seconds: 3),
    alignment: Alignment.bottomCenter,
  );
}