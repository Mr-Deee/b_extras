import 'package:flutter/material.dart';

void showAlert(String message) {
  //Fluttertoast.showToast(msg: message);
  SnackBar(
    content: Text(message),
  );
}
