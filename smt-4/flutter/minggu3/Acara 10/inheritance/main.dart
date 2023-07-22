import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';
import 'titan.dart';

void main() {
  ArmorTitan armorTitan = new ArmorTitan();
  AttackTitan attackTitan = new AttackTitan();
  BeastTitan beastTitan = new BeastTitan();
  Human human = new Human();

  armorTitan.powerPoint = 4;
  attackTitan.powerPoint = 8;
  beastTitan.powerPoint = 6;
  human.powerPoint = 2;

  printPowerPoint("Armor Titan", armorTitan.powerPoint);
  printPowerPoint("Attack Titan", attackTitan.powerPoint);
  printPowerPoint("Beast Titan", beastTitan.powerPoint);
  printPowerPoint("Human", human.powerPoint);

  printSkill("Armor Titan", armorTitan.terjang());
  printSkill("Attack Titan", attackTitan.punch());
  printSkill("Beast Titan", beastTitan.lempar());
  printSkill("Human", human.killAllTitan());
}

printPowerPoint(type, powerPoint) {
  print("Power point dari $type adalah $powerPoint");
}

printSkill(type, skill) {
  print("$type mengeluarkan special skill: $skill!!!");
}
