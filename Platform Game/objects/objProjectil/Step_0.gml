

if(place_meeting(x, y, objEnemy_1)){
	audio_play_sound(sndShoot, 1, 0);
	objEnemy_1.id._health -= objController._atk;
				
	repeat(10){
		var _rand_dir = irandom_range(0, 359);
		var _rand_spd = irandom_range(5, 15);
		var _inst = instance_create_depth(x, y, depth, objSteam);
					
		_inst.direction = _rand_dir;
		_inst.speed = _rand_spd
	}
	instance_destroy();
}