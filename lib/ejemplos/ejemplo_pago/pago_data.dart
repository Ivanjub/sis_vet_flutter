import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class PayuMoneyFlutter {
  static const MethodChannel _channel =
      const MethodChannel('payu_money_flutter');
  String _merchantKey = "fdsf";
  String _merchantID = "sdf";
  bool _isProduction = false;

  Future<bool> setupPaymentKeys(
      {
      required String merchantKey,
      required String merchantID,
      required bool isProduction,
      required String activityTitle,
      required bool disableExitConfirmation}) async {
    bool response = await _channel.invokeMethod("setupDetails", {
      "merchantKey": merchantKey,
      "merchantID": merchantID,
      "isProduction": isProduction,
      "activityTitle": activityTitle,
      "disableExitConfirmation": disableExitConfirmation,
    });

    if (response) {
      _merchantID = merchantID;
      _merchantKey = merchantKey;
      _isProduction = isProduction;
    }
    return response;
  }


  Future<dynamic> startPayment(
      {
      required String txnid,
      required String amount,
      required String name,
      required String email,
      required String phone,
      required String productName,
      required String hash}) async {
    try {
      var data = await _channel.invokeMethod("startPayment", {
        "txnid": txnid,
        "hash": hash,
        "amount": amount,
        "phone": phone,
        "email": email,
        "productName": productName,
        "firstname": name
      });
      return data;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}