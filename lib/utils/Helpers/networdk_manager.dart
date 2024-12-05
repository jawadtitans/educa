import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'loader.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  /// Initialize the network manager and set up a stream to continually check the connection status
  @override
  void onInit() {
    super.onInit();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(
      (ConnectivityResult result) {
        _updateConnectionStatus(result);
      } as void Function(List<ConnectivityResult> event)?,
    ) as StreamSubscription<ConnectivityResult>;
  }

  /// Update connection status and show a popup for no internet connection
  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    _connectionStatus.value = result;
    if (_connectionStatus.value == ConnectivityResult.none) {
      _showNoInternetDialog();
    }
  }

  /// Show a popup dialog when there is no internet connection
  void _showNoInternetDialog() {
    if (Get.isDialogOpen != true) {
      Get.dialog(
        AlertDialog(
          title: const Text('No Internet Connection'),
          content: const Text(
            'Please check your internet connection and try again.',
          ),
          actions: [
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.green, width: 1),
              )),
              onPressed: () async {
                final isConnected = await this.isConnected();
                if (isConnected) {
                  Get.back(); // Close the dialog if connection is restored
                } else {
                  // Optionally show a message if still no connection
                  TLoaders.customToast(message: 'Still no internet connection');
                }
              },
              child: const Text(
                'Try Again',
                style: TextStyle(color: Colors.green, fontSize: 16),
              ),
            ),
          ],
        ),
        barrierDismissible:
            false, // Prevent dismissing the dialog by tapping outside
      );
    }
  }

  /// Check the internet connection status
  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return result != ConnectivityResult.none;
    } on PlatformException catch (_) {
      return false;
    }
  }

  /// Dispose or close the active connectivity stream
  @override
  void onClose() {
    super.onClose();
    _connectivitySubscription.cancel();
  }
}
