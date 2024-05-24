_move_y += _grav;

if(place_meeting(x, y, objCollision)){
			
	var _reg = -15;
	_reg += 1;
			
	_move_y = _reg;
	_move_y = 0;
			
	#region Collision objEnemy

	if(place_meeting(x, y, objEnemy)){
		audio_play_sound(sndShoot, 1, 0);
		objEnemy.id._health -= objController._atk;
				
		repeat(10){
			var _rand_dir = irandom_range(0, 359);
			var _rand_spd = irandom_range(5, 15);
			var _inst = instance_create_depth(x, y, depth, objFragment);
					
			_inst.direction = _rand_dir;
			_inst.speed = _rand_spd
		}
	instance_destroy();
	}

	#endregion
}
		
y += _move_y;

	// Calcular a nova posição X e Y
//x = objPlayer.x + _orbit_radius * cos(_orbit_angle);
//y = objPlayer.y + _orbit_radius * sin(_orbit_angle);