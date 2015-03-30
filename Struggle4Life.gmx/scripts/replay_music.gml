var new_music;
var music;

//Get current music
if audio_is_playing(so_bg_menu) {
    new_music = so_bg_menu
}
else {
    new_music = so_bg_game
}

//Stop music
audio_stop_sound(so_bg_menu);
audio_stop_sound(so_bg_game);

//Set sound and play again
music = audio_play_sound(new_music, 10, true);
audio_sound_gain(music, glb_music_volume, 0)

