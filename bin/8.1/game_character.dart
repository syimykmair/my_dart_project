abstract class GameCharacter {
  String name;
  int _health;
  int damage;

  GameCharacter(this.name, this._health, this.damage);

  int get health => _health;

  set health(int value) {
    if (value < 0) {
      _health = 0;
    } else {
      _health = value;
    }
  }
  int get displayDamage {
    return isAlive() ? damage : 0;
  }

  bool isAlive() {
    return _health > 0;
  }

  @override
  String toString() {
    int displayDmg = _health > 0 ? damage : 0;
    return '${this.runtimeType.toString()} $name Health: $_health Damage: $displayDmg';
  }
}
