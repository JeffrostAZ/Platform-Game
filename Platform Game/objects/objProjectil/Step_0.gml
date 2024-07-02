

if(place_meeting(x, y, objEnemy_1)){		
	repeat(10){
		var _rand_dir = irandom_range(0, 359);
		var _rand_spd = irandom_range(5, 15);
		var _inst = instance_create_depth(x, y, depth, objSteam);
					
		_inst.direction = _rand_dir;
		_inst.speed = _rand_spd
	}
}