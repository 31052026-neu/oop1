import 'dart:collection';

class GameObject {
  String? name;
  int? posX;
  int? posY;

  GameObject(this.posX, this.posY);

  void despawn() {
    print('$posX, $posY');
  }
}

abstract class DamageableObject extends GameObject {
  int maxHealth;
  int _health;
  int damage = 0;

  DamageableObject(super.posX, super.posY, this.maxHealth)
    : _health = maxHealth;

  bool isDead() {
    print('Dead.');
    return true;
  }

  void takeDamage() {
    print('$damage');
  }

  void onKilled() {
    print('You have been killed');
  }
}

class Player extends DamageableObject {
  int score = 0;
  int livesRemaining = 5;

  Player(super.posX, super.posY, super.maxHealth);

  void checkLives() {
    if (livesRemaining == 0) {
      print('No lives remaining');
    }
  }
}

enum Color { red, green, blue }

class Monster extends DamageableObject {
  int threatLevel;
  Color color;

  Monster(
    super.posX,
    super.posY,
    super.maxHealth,
    this.threatLevel,
    this.color,
  );
}
