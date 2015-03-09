var new_music = argument0;
var music;

if (!audio_is_playing(new_music)) {
    audio_stop_sound(so_bg_menu);
    audio_stop_sound(so_bg_game);
    music = audio_play_sound(new_music, 10, true);
    audio_sound_gain(music, glb_music_volume, 0)
}
