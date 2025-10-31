import 'package:flutter/material.dart';
import 'router.dart';
import 'shared/app_theme.dart';
import 'data/payment_repository.dart';
import 'features/payments/payment_provider.dart';

class RegularPaymentsApp extends StatelessWidget {
  const RegularPaymentsApp({super.key});

  @override
  Widget build(BuildContext context) {
    final paymentRepo = PaymentRepository();
    return PaymentProvider(
      paymentRepo: paymentRepo,
      child: MaterialApp.router(
        title: 'Регулярные платежи',
        theme: AppTheme.light,
        debugShowCheckedModeBanner: false,
        routerConfig: appRouter,
      ),
    );
  }
}
