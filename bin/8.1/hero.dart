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
// Реализация воина
class Warrior extends Hero {
  Warrior(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.criticalDamage);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    int crit = (RpgGame.random.nextInt(5) + 2) * damage; // 2,3,4,5,6
    boss.health -= crit;
    print('Warrior $name hits critically $crit');
  }
}
//Реализация Мага
class Magic extends Hero {
  Magic(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.boost);

  void applySuperPower(Boss boss, List<Hero> heroes) {
    if (RpgGame.roundNumber <= 4){
      int increase=[3,5,10][RpgGame.random.nextInt(3)];
      for (var hero in heroes) {
        if(hero.isAlive()&& this !=hero && hero is! Witcher){
          hero.damage+=increase;
          print('Magic $name increased damage by $increase');
        }
      }
    }
  }
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
//Реализация голема 
class Golem extends Hero {
  Golem(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.absorption);
    
      @override
      void applySuperPower(Boss boss, List<Hero> heroes) {
      }
}
class Lucky extends Hero {
  Lucky(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.dodge);
    
      @override
      void applySuperPower(Boss boss, List<Hero> heroes) {
      }
      
}
class Witcher extends Hero {
   bool hasResurrect = false;
  Witcher(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.resurrect);
    
      @override
      void applySuperPower(Boss boss, List<Hero> heroes) {
        if (!isAlive() || hasResurrect) return;// "Если Witcher мертв ИЛИ уже воскрешал кого-то - выйти из метода"

        for (var hero in heroes) {
          if (!hero.isAlive()&& this != hero){
          hero.health = this.health;  
          this.health = 0;
          hasResurrect = true;
          print('Witcher $name sacrificed himself to resurrect ${hero.name}');
          break;
        }
      }
      }
}
class Thor extends Hero {
 Thor(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.stun);
    
      @override
      void applySuperPower(Boss boss, List<Hero> heroes) {
    if (!isAlive()) return;
    
    // 50% шанс оглушить босса
    if (RpgGame.random.nextBool()) {
      boss.isStunned = true;
      print('Thor $name stunned the boss!');
    }
  }
}
class Bomber extends Hero {
  int bomb=100;
  bool hasExploded = false;
 Bomber(String name, int health, int damage)
    : super(name, health, damage, SuperAbility.bum);
    
      @override
      void applySuperPower(Boss boss, List<Hero> heroes) {
    if (!hasExploded && !isAlive()) {
      boss.health-=bomb;
      hasExploded = true;
      print("Bomber $name's dealt $bomb damage to ${boss.name}'s boss after his death.");
    }
  }
}