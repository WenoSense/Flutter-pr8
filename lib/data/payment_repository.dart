import '../features/payments/models/payment.dart';

class PaymentRepository {
  final List<Payment> _payments = [];

  List<Payment> get payments => _payments;

  void addPayment(Payment payment) {
    _payments.add(payment);
  }

  void deletePayment(String id) {
    _payments.removeWhere((p) => p.id == id);
  }

  void markAsPaid(String id) {
    final index = _payments.indexWhere((p) => p.id == id);
    if (index != -1) {
      _payments[index].nextDate = _payments[index].updatedNextDate;
    }
  }
}
