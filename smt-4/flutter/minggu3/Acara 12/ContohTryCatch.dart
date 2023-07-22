Future<void> printOrderMessage() async {
  try {
    var order = await fetchUserOrder();
    print('Awaiting user order...');
    print(order);
  } catch (err) {
    print('Caught error: $err');
  }
}

Future<String> fetchUserOrder() {
// Imagine that this function is more complex.
var str = Future.delayed(
    Duration(seconds: 4),
    () => throw 'Cannot locate user order');
  return str;
}

Future<void> main() async {
  await printOrderMessage();
}