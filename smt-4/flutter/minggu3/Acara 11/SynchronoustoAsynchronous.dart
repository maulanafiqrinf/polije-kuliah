void main(List<String> args) {
  var h = Human();

  print("luffy");
  print("zoro");
  print("killer");
  h.getData();

  print(h.name);
}

class Human {
  String name = "nama character one piece";

  void getData() {
    name = "hilmy";
    print("get data [done]");
  }
}
