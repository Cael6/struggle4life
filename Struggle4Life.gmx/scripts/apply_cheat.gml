var code = argument0;
var applied = true;

switch(code){
     case "Come and beat me":
        glb_cheat_enemy_speed = 3;
        break;
     
     case "Sonic the infected":
        glb_cheat_enemy_speed = 6;
        break;
        
    case "Faster than light":
         glb_cheat_enemy_speed = 20;
         break;
    
    case "I hate to wait":
        glb_cheat_cool_down = 3;
        break;
        
    case "Give me more ammo":
        glb_cheat_ammo += 10;
        break;
        
    case "I am trigger happy":
        glb_cheat_ammo = 999;
        break;
        
    case "Give me more fuel":
        glb_cheat_fuel += 10;
        break;
    
    case "I came from Saudi":
        glb_cheat_fuel = 999;
        break;
        
    case "Hungry for Lobster":
        glb_cheat_health = 9999;
        break;
        
    default:
        applied = false;
        c_log("No Cheat code: " + code, C_LOG__INFO);
        break;
}

return applied;
