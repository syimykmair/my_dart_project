import 'game_character.dart';
import 'super_ability.dart';
import 'hero.dart';
import 'rpg_game.dart';

class Boss extends GameCharacter {
  SuperAbility? defence;

  Boss(super.name, super.health, super.damage);

  void attack(List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive()) {
        if (hero is Berserk && defence != hero.ability) {
          int blocked = (RpgGame.random.nextInt(2) + 1) * 5; //1,2
          hero.blockedDamage = blocked;
          hero.health -= (damage - blocked);
        } else {
          hero.health -= damage;
        }
      }
    }
  }

  void chooseDefence() {
    List<SuperAbility> variants = SuperAbility.values;
    int randomIndex = RpgGame.random.nextInt(variants.length); // 0,1,2,3
    defence = variants[randomIndex];
  }

  @override
  String toString() {
    String d = 'No Defence';
    if (defence != null) {
      d = defence!.name;
    }
    return '${super.toString()} Defence: $d';
  }
}
