import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

///Base Class for encapsulating logic related to Loading Status management, and error handling
///Use of this class is helpful while using classes such as
///[LoadingIndicatorConsumer], [CommonButtonLoading], [ScreenBase]
///All of the above mentioned classes take generic parameters
class ViewModel extends ChangeNotifier {
  static const genericErrorMessage =
      "Something went wrong, Please try again later";
  static const deviceErrorMessage = "Device Id updating failed";
  bool _isLoading = false;

  set isLoading(value) {
    _isLoading = value;
    notifyListeners();
  }

  bool get isLoading => _isLoading;

  ///error message for showing in snackBar
  ValueChanged<String?>? onError;

  void callApi(AsyncCallback api) {
    isLoading = true;
    api().then((_) {
      isLoading = false;
    }).catchError((th, stackTrace) {
      isLoading = false;
      if (th is SocketException) {
        onError?.call("Please Check Your Internet Connection.");
      } else if (th is FormatException) {
        onError?.call("Format Exception Found. ${th.message}");
      } else if (th is HttpException) {
        onError?.call(th.message);
      } else if (th is TimeoutException) {
        onError?.call("Server Error , Try again later.");
      } else {
        onError?.call(genericErrorMessage);
      }

      log("Caught Error while calling api: $th");
      log("Type of Exception: ${th.runtimeType}");
      log('Stack Trace: $stackTrace');
    });
  }

  ///subclasses should override this method.
  ///in order to reset the state of this ViewModel.
  void invalidate() {}
}

///should be used if we want to access viewModel inside initState method of a StateFul Widget.
///@author simarjot singh kalsi
void withViewModel<VIEW_MODEL extends ViewModel>(
  BuildContext context,
  void Function(VIEW_MODEL viewModel) function,
) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    final provider = Provider.of<VIEW_MODEL>(context, listen: false);
    function.call(provider);
  });
}
