globalvar           
        //Variables
          glb_pause,
          glb_player_control,
          glb_animation,
          glb_selected,
          glb_characters,
          glb_level,
          glb_room,
          glb_room_count,
          glb_current_map_plot,
          glb_hide_map_help,
          glb_next_map_plot,
          glb_map_plots_ordered,
          glb_safe_zone_scenario_id,
          glb_has_map
          glb_music_volume,
          glb_sound_volume,
          glb_cheat_enemy_speed,
          glb_cheat_cool_down,
          glb_cheat_ammo,
          glb_cheat_fuel,
          glb_cheat_health,
          glb_game_bgs,
          glb_current_cutscene
          ;


/////////////////////////////////
// Variables
/////////////////////////////////

glb_pause = false;
glb_player_control = true;
glb_animation = false;
glb_selected = noone;
glb_characters = array_1d(noone);
glb_level = 0;
glb_room = 0;
glb_room_count = 0;
glb_current_map_plot = noone;
glb_hide_map_help = false;
glb_next_map_plot = noone;
glb_map_plots_ordered = false;
glb_safe_zone_scenario_id = SCENARIO_SAFE_ZONE;
glb_has_map = false;
glb_map_plots_ordered = false;
glb_music_volume = 1;
glb_sound_volume = 1;
glb_cheat_enemy_speed = 1;
glb_cheat_cool_down = 1;
glb_cheat_ammo = 0;
glb_cheat_fuel = 0;
glb_cheat_health = 0;
glb_game_bgs = array_1d(
    bg_road_1,
    bg_road_2,
    bg_road_3,
    bg_road_4,
    bg_road_5,
    bg_road_6,
    bg_road_7,
    bg_road_8,
    bg_road_9,
    bg_road_10,
    bg_road_11,
    bg_road_12,
    bg_road_13,
    bg_road_14,
    bg_road_15,
);
glb_current_cutscene = CUTSCENE_INTRO;
