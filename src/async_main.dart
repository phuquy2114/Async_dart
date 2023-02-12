String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Imagine that this function is more complex and slow.
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte 2',
    );

Future<String> fetchUserOrder5Second() =>
    // Imagine that this function is more complex and slow.
    Future.delayed(
      const Duration(seconds: 5),
      () => 'Large Latte 5 ',
    );

Future<void> normalFunc() async {
  // Imagine that this function is more complex and slow.
  for (int i = 0; i < 1000; i++) {
    print(i);
  }
}
// handle Error

Future handleError() async {
  try {
    var order = await fetchUserOrder(); // 2second
    var order2 = fetchUserOrder5Second(); // 5second
    normalFunc();
    print('A waiting user order...$order $order2');
  } catch (err) {
    print('Caught error: $err');
  }
}

void main() {
  // print(createOrderMessage());
  handleError();
}
