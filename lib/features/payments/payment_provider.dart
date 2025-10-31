import 'package:flutter/material.dart';

import '../../data/payment_repository.dart';

class PaymentProvider extends InheritedWidget {
  final PaymentRepository paymentRepo;

  const PaymentProvider({
    super.key,
    required this.paymentRepo,
    required Widget child,
  }) : super(child: child);

  static PaymentProvider of(BuildContext context) {
    final PaymentProvider? result =
    context.dependOnInheritedWidgetOfExactType<PaymentProvider>();
    assert(result != null, 'PaymentProvider not found');
    return result!;
  }

  @override
  bool updateShouldNotify(PaymentProvider oldWidget) =>
      paymentRepo != oldWidget.paymentRepo;
}
