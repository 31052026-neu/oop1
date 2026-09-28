import 'tiere.dart';

void main() {
  final myFish = GoldFish('dori');
  myFish.makeSound();
  myFish.breatheUnderWater();
  myFish.move();
  globalFly(myFish);

  final myDog = Dog('Franklin');
  myDog.makeSound();
  myDog.walk();
  globalFly(myDog);

  final myCat = Cat('Kurama');
  myCat.makeSound();
  myCat.walk();
  globalFly(myCat);

  final myBird = Bird('Tweety');
  myBird.makeSound();
  globalFly(myBird);
}
