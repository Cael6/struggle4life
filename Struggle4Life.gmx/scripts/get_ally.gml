var returnNum = 0;
var sniper =  0;
var shotgun =  0;
var assault =  0;

with(o_character) {
    if(weapon.name == "Sniper") {
        sniper = 1;
    }
    if(weapon.name == "shotgun") {
        shotgun = 1;
    }
    if(weapon.name == "Assault Rifle") {
       assault = 1;
    }     
}  

if(assault == 1 && shotgun =  1){
    returnNum = SCENARIO_ALLY_SNIPER;
}
else if(assault == 1 && sniper =  1){
    returnNum = SCENARIO_ALLY_SHOTGUN;
}
else if(sniper == 1 && shotgun =  1){
    returnNum = SCENARIO_ALLY_ASSAULT;
}
else if(assault == 1) {
    returnNum = irandom_range(SCENARIO_ALLY_SNIPER, SCENARIO_ALLY_SHOTGUN);
}
else if(sniper == 1) {
    returnNum = irandom_range(SCENARIO_ALLY_SHOTGUN, SCENARIO_ALLY_ASSAULT);
}
else if(shotgun == 1) {
    returnNum = SCENARIO_ALLY_ASSAULT;
}
else {
    returnNum = irandom_range(SCENARIO_ALLY_SNIPER, SCENARIO_ALLY_ASSAULT);
}

return returnNum;
