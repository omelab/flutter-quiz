class Person {
  String name;
  int age;

  Person({this.name = '', this.age = 30});
}

double addNumbers(double num1, double num2) {
  return num1 + num2;
}

void main() {
  var p1 = Person(name: "Shamim");
  var p2 = Person(age: 35, name: "Rahim");

  print(p1.age);
  print(p2.name);
}
