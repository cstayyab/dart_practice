abstract class Person {
  final _name;

  Person(this._name);

  String greet(String who) => 'Hello, $who! I am $_name';
  String getResponsibilities();
}

class Imposter implements Person {
  @override
  String get _name => '';

  @override
  String getResponsibilities() => 'No Responsibilities';

  @override
  String greet(String who) => 'Hi, $who. Do you know who I am?';
}

class MailMan extends Person {
  MailMan(name) : super(name);

  @override
  String getResponsibilities() => 'Delivers Mail';
}
