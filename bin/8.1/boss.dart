import 'game_character.dart';
import 'super_ability.dart';
import 'hero.dart';
import 'rpg_game.dart';

class Boss extends GameCharacter {
  SuperAbility? defence;
  bool isStunned = false;

  Boss(super.name, super.health, super.damage);

 void attack(List<Hero> heroes) {
  // Находим живого Golem (если есть)
  Golem? golem = _findAliveGolem(heroes);
  int totalAbsorbed = 0; // Счетчик поглощенного урона за раунд
  
  for (var hero in heroes) {
    if (hero.isAlive()) {
      int finalDamage = damage; // Изначальный урон
       int healthBefore = hero.health;
      // Если есть живой Golem и это не сам Golem
      if (golem != null && hero != golem) {
        // 1/5 урона уходит в Golem
        int damageToGolem = damage ~/ 5; 
        totalAbsorbed += damageToGolem; // Добавляем в общий счетчик
        
        // Уменьшаем урон по текущему герою
        finalDamage = damage - damageToGolem;
        
        // Наносим урон Golem'у (если он еще жив)
        if (golem.isAlive()) {
          golem.health -= damageToGolem;
          
          // Проверяем, не умер ли Golem
          if (!golem.isAlive()) {
            golem = null; // Golem мертв, защита больше не работает
          }
        }
      }
     
      
      if (hero is Berserk && defence != hero.ability) {
        int blocked = (RpgGame.random.nextInt(2) + 1) * 5; // 5 или 10
        hero.blockedDamage = blocked;
        hero.health -= (finalDamage - blocked);
      } else {
        hero.health -= finalDamage;
      }

      if (hero is Lucky) {
        // 25% шанс уклониться
        if (RpgGame.random.nextInt(100) < 25) {
          print('Lucky ${hero.name} dodged the attack!');
          continue; // Пропускаем нанесение урона
        }
      }
       // Проверяем, умер ли герой В ЭТОМ УДАРЕ
      if (healthBefore > 0 && !hero.isAlive()) {
        // Если герой умер - применяем его способность (для Bomber)
        hero.applySuperPower(this, heroes);
      }
    }
  }
   
  if (totalAbsorbed > 0 && golem != null) {
    print('Golem ${golem.name} absorbed $totalAbsorbed damage');
  } else if (totalAbsorbed > 0 && golem == null) {
  }
}

// Вспомогательный метод для поиска живого Golem
Golem? _findAliveGolem(List<Hero> heroes) {
  for (var hero in heroes) {
    if (hero is Golem && hero.isAlive()) {
      return hero;
    }
  }
  return null;
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
