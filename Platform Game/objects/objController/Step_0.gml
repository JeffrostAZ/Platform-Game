if(keyboard_check_pressed(vk_enter)){
	game_restart();	
}


if(keyboard_check(vk_space) && _rocket_fuel > 10){
	objPlayer._move_y -= 1.5;	
	
	
	repeat(10){
		var _inst = instance_create_depth(objPlayer.x, objPlayer.y, depth, objFragment);
		var _dir = irandom_range(260, 280);
		_inst.direction = _dir;
		_inst.speed = 5;
	}
	
	_rocket_fuel -= 1;
}
