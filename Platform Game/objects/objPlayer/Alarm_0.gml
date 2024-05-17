var _key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _pitch = irandom_range(1, 5);
if(_key_left || _key_right){
	audio_sound_pitch(sndFootsteps, _pitch);
	audio_play_sound(sndFootsteps, 1, 0);
}
// Resetar o alarme
alarm[0] = 60 * 0.4;
