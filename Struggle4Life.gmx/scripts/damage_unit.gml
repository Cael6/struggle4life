//for now just destroy
var unit = argument0;
var damage = argument1;
unit.hp -= damage;

if (unit.hp <= 0) {
    unit.alive = false;
}
