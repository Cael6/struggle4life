//if collise destroy innstance
var i = 0;

if(name = "shotgun"){
    while(true){
        instance = instance_find(o_runner, i);
        if(instance > 0){
           if(collision_circle(mouse_x,mouse_y, 16, instance,true,false)){
                with(instance){
                    instance_destroy()
                }
           }
        }
        else{
            break;
        }
        i++;
    }
}
else if(name = "sniper"){
    var pos_start;
    var pos_end;
    pos_start[0] = self.character.x + self.character.width / 2;
    pos_start[1] = self.character.y + self.character.height / 2;
    pos_end[0] = mouse_x;
    pos_end[1] = mouse_y;
    var extended_line = extend_past_screen(pos_start, pos_end);
    
    while(true){
        instance = instance_find(o_runner, i);
        if(instance > 0){
           if(collision_line( pos_start[0], pos_start[1], extended_line[0],extended_line[1],instance,true, false) > -1){
                with(instance){
                    instance_destroy()
                }
           }
        }
        else{
            break;
        }
        i++;
    }
}

self.curr_cooldown = self.cooldown;

with (self.character) {
    deselect_character();
}