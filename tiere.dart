void globalFly(Object? object) {
  if (object is CanFly) {
    object.fly();
  }
}

abstract class Animal {
  String name;

  Animal(this.name);

  void move() {
    print('$name bewegt sich');
  }

  //Methode
  void makeSound() {
    print('$name macht "Blubb".');
  }
}

class Bird extends Animal implements CanFly {
  Bird(String name) : super(name);

  @override
  void makeSound() {
    print('$name zwitschert!');
  }

  @override
  void fly() {
    print('$name fliegt durch die Luft');
  }
}

class Fish extends Animal {
  Fish(super.name);

  @override
  void move() {
    print('$name schwimmt.');
  }
}

class GoldFish extends Fish implements CanBreatheUnderWater {
  GoldFish(super.name);

  @override
  void breatheUnderWater() {
    print('$name kann unter Wasser atmen.');
  }
}

class Dog extends Animal implements CanWalk {
  Dog(super.name);
  //Methode wird mit einer anderen Methode überschrieben
  @override
  void makeSound() {
    print('$name macht "Wuff!, Wuff!');
  }

  @override
  void walk() {
    print('$name kann laufen.');
  }
}

class Cat extends Animal implements CanWalk {
  Cat(super.name);
  @override
  void makeSound() {
    print('$name macht "Miau".');
  }

  @override
  void walk() {
    print('$name kann laufen.');
  }
}

abstract class CanFly {
  void fly();
}

abstract class CanWalk {
  void walk();
}

abstract class CanBreatheUnderWater() {
  void breatheUnderWater();
}
