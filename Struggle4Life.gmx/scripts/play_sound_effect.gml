var new_sound = argument0;
var loop = argument1;
var sound;

if (!audio_is_playing(new_sound)) { 
    sound = audio_play_sound(new_sound, 11, loop);
    audio_sound_gain(sound, glb_sound_volume, 0)
}
