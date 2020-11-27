abstract class Person {
  final _name;

  Person(this._name);

  String greet(String who) => 'Hello, $who! I am $_name';
  String getResponsibilities();
}

class Imposter implements Person {
  @override
  String get _name => '';

  // @override
  // String getResponsibilities() => 'No Responsibilities';

  @override
  String greet(String who) => 'Hi, $who. Do you know who I am?';

  @override
  void noSuchMethod(Invocation invocation) =>
      print('No method named ${invocation.memberName}.');
}

class MailMan extends Person {
  MailMan(name) : super(name);

  @override
  String getResponsibilities() => 'Delivers Mail';
}

class Performer extends Person {
  Performer(name) : super(name);

  @override
  String getResponsibilities() => 'Performs Something';
}

abstract class Musician extends Performer {
  Musician(name) : super(name);
  void playSomething();
}

mixin MusicalPerformer on Musician {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

class Pianist extends Musician with MusicalPerformer {
  Pianist(name) : super(name) {
    canPlayPiano = true;
  }

  @override
  void playSomething() {
    print('Playing “The Promise” by Michael Nyman');
  }
}
