if(global.exp >= _exp_level_needs){
	global.level++;	
	_exp_level_needs += global.exp * global.level;
	global.exp_point_skill += 5;
	global._item_menu = 1;
	objPlayer.x = 10000;
	room_goto(rm_build);
}
