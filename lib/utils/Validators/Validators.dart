import 'dart:core';

import 'package:flutter/material.dart';

class VAlidators_filds {
  static String? ValidateEmptyField(String? fildname, String? value) {
    if (value == null || value.isEmpty) {
      return "this field can not be empty";
    }
    return null;
  }

  static String? ValidateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return " your email field is required ";
    }
    final emailRegExp = RegExp(r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return "your email field is invalid";
    }
    return null;
  }

  static String? passwordValidateField(String? value) {
    if (value == null || value.isEmpty) {
      return "your password field is required";
    }
    if (value.length < 6) {
      return "your password length should be 6 at least";
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return "Enter a Strong password";
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return "enter a Strong password";
    }
    //check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Enter a Strong password';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'phone number field is required';
    }

    //regex for phone number validation (assuming 10-digit us number format)
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Enter you validate phone number';
    }
    final afghanPhoneRegExp = RegExp(r'^(?:\+93|0093|0)?(7\d{8})$');
//+93 as a prefix format for phone number in here:
    if (!afghanPhoneRegExp.hasMatch(value)) {
      return 'Enter you validate phone number';
    }

    return null;
  }
}
