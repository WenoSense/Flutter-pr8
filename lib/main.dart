import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'app.dart';
import 'data/payment_repository.dart';


void main() {
  GetIt.I.registerSingleton<PaymentRepository>(PaymentRepository());
  runApp(const RegularPaymentsApp());
}
