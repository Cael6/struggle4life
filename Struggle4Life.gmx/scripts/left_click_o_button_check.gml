charcter_instance = instance_find(o_character, 0)

//Give instance to nect room
charcter_instance.state = CHARACTER_STATE_BATTLE;
charcter_instance.persistent = true;
charcter_instance.weapon.persistent = true;
charcter_instance.pistol.persistent = true;
charcter_instance.x = 100;
charcter_instance.y = 600;

goto_r_test();
