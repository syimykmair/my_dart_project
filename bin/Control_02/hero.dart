import 'game_character.dart';
import 'super_ability.dart';
import 'boss.dart';
import 'rpg_game.dart';

abstract class Hero extends GameCharacter {
  SuperAbility ability;

  Hero(super.name, super.health, super.damage, this.ability);

  void attack(Boss boss) {
    boss.health -= damage;
  }

  void applySuperPower(Boss boss, List<Hero> heroes);
}

class Warrior extends Hero {
  Warrior(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.criticalDamage);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    int crit = (RpgGame.random.nextInt(5) + 2) * damage; // 2,3,4,5,6
    boss.health -= crit;
    print('Warrior $name hits critically $crit');
  }
}

class Magic extends Hero {
  Magic(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.boost);

  void applySuperPower(Boss boss, List<Hero> heroes) {}
}

class Medic extends Hero {
  int healPonts;
  Medic(String name, int health, int damage, this.healPonts)
    : super(name, health, damage, SuperAbility.heal);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    for (var hero in heroes) {
      if (hero.isAlive() && this != hero) {
        hero.health += healPonts;
      }
    }
  }
}

class Berserk extends Hero {
  int blockedDamage = 0;
  Berserk(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.blockRevert);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    boss.health -= blockedDamage;
    print('Berserk $name is reverted $blockedDamage');
  }
}
class Ludoman extends Hero {
  Ludoman(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.play);

@override
void applySuperPower(Boss boss, List<Hero> heroes) {
  if (!isAlive()) return;
  
  int dice1 = RpgGame.random.nextInt(6) + 1;
  int dice2 = RpgGame.random.nextInt(6) + 1;
  
  print('Ludoman $name rolls: $dice1 and $dice2');
  
  if (dice1 == dice2) {
    int damageToBoss = dice1 * dice2;
    boss.health -= damageToBoss;
    print('Ludoman $name deals $damageToBoss damage to ${boss.name}!');
  } else {
    int damageToHero = dice1 + dice2;
    
    int aliveCount = 0;
    for (var hero in heroes) {
      if (hero.isAlive() && hero != this) {
        aliveCount++;
      }
    }
    
    if (aliveCount > 0) {
      int randomIndex = RpgGame.random.nextInt(aliveCount);
      int currentIndex = 0;
      
      for (var hero in heroes) {
        if (hero.isAlive() && hero != this) {
          if (currentIndex == randomIndex) {
            
            hero.health -= damageToHero;
            print('Ludoman $name deals $damageToHero damage to ally ${hero.name}!');
            
            if (!hero.isAlive()) {
              print('${hero.name} died from Ludoman\'s bad luck!');
            }
            break;
          }
        }
      }
    }
  }
}
}