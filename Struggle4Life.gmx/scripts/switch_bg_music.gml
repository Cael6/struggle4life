var new_music = argument0;

if (!audio_is_playing(new_music)) {
    audio_stop_sound(so_bg_menu);
    audio_stop_sound(so_bg_game);
    audio_play_sound(new_music, 10, true);
}