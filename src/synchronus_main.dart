Future write(List<int> values) async {
  for (int value in values) {
    await Future.delayed(new Duration(seconds: 5));
    print(value);
  }
}

void main() {
  List<int> list = [1, 2, 3, 4];
  write(list);
}
