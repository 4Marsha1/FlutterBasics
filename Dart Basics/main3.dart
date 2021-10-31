void main() {
  // --------- Basic Variable declaration
  int age = 21;
  String name = 'Abhishek';
  bool isTrue = false;
  print(age);
  print(name);
  print(isTrue);

  // -------- Dynamic Variable declaration
  dynamic Age = 21;
  print(Age);
  Age = 'Twenty-one';
  print(Age);

  // -------- List
  List<String> colors = ['red', 'blue', 'green'];
  List<int> ages = [1, 2, 3];
  print(ages);
  print(colors);
  colors.add('yellow');
  colors.remove('red');
  print(colors);

  // -------- Funtions
  printAge(age);
  //when a single return is to be done without doing much ...
  print(returnNum(90));

  // --------- classes
  User userOne = new User(101, 'Mary');
  print(userOne.id);
  print(userOne.username);
  userOne.printLog();

  SuperUser userTwo = new SuperUser(1010, 'Abhishek');
  print(userTwo.id);
  print(userTwo.username);
  userTwo.printLog();
  userTwo.printSuperLog();
}

void printAge(int age) {
  print('Printing age --->');
  print(age);
}

int returnNum(int num) => num + 10;

class User {
  int id = -1;
  String username = '';
  User(int _id, String _username) {
    this.id = _id;
    this.username = _username;
  }
  void printLog() {
    print('user created!');
  }
}

class SuperUser extends User {
  SuperUser(int _id, String _username) : super(_id, _username);
  void printSuperLog() {
    print('SuperUser Created');
  }
}
