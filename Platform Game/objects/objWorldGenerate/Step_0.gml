if(global.exp >= global._exp_level_needs){
	global.level++;	
	global._exp_level_needs += global.exp * global.level;
	global.exp_point_skill += 5;
	global._item_menu = 1;
	global.upgrade = true;
	room_goto(rm_build);
}
