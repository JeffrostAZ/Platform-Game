if(global.exp >= global._exp_level_needs){
	global.level++;	
	global._exp_level_needs += global.exp * global.level;
	global.exp_point_skill += 5;
	global._item_menu = 1;
	global.upgrade = true;
	room_goto(rm_build);
}


if(global.change_world == 1){
	var _cell = 64;
	var _width = room_width / _cell;

	for(var _i = 0; _i <= _width; _i++){
		var _pos_x = _cell * _i;
		
		var _parlin_1 = choose(1, -1, 0);
		var _parlin_2 = choose(1, -1, 0);
		var _parlin_3 = choose(1, -1, 0);
		var _parlin_4 = choose(1, -1, 0);
		var _parlin_5 = choose(1, -1, 0);
	
		//var _inst = instance_create_depth(_pos_x, room_height - _cell, depth, objCollision);
	
	}
}