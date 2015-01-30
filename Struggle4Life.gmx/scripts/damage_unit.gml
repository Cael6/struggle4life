//for now just destroy
var unit = argument0;
var damage = argument1;
unit.hp -= damage;
c_log("damage was: " + string(damage), C_LOG__DEBUG);

if (unit.hp <= 0) {
    unit.alive = false;
}
