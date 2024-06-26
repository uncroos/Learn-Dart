String SPAM({required String name, required int age, required String school}) {
  return "${name} / ${age} / ${school}";
}

void main() {
  print(SPAM(name: "정현서", age: 19, school: "서울로봇고"));
}
