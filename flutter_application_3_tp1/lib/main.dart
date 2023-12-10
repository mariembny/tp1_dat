
class User {
  String name;
  int age;

  User(
    this.name,
    this.age,
  );
  Iterable<User> filterOutUnder21(Iterable<User> users) {
  return users.where((user) => user.age < 21);
}

User? findFirstShortNamed(Iterable<User> users) {
  return users.firstWhere((user) => user.name.length < 3);
}

}