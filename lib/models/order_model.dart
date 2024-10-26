// models/order_model.dart
enum OrderStatus { pending, preparing, onTheWay, delivered }

class Order {
  final String orderId;
  final DateTime date;
  final double total;
  final OrderStatus status;

  Order({
    required this.orderId,
    required this.date,
    required this.total,
    required this.status,
  });
}
