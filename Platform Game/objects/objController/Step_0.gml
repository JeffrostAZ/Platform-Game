if(keyboard_check_pressed(ord("R"))){
	game_restart();	
}

if(global.exp >= global._exp_level_needs){
	room_goto(rm_build);
	global._item_menu = 1;
	global.exp = 0;
}
switch(global._item_menu){
	case -1:
		instance_activate_all();
	break;
	
	case 1:
		instance_deactivate_object(objPlayer);
		instance_deactivate_object(objAbilities);
		instance_deactivate_object(objDrone);
	break;
}

show_debug_message(room_width / 64);

if(objController._pos_x > room_width - 100){
	_room_width += 1920;
	room_width = _room_width;
	
	var _range = room_width / 64;
	
	Create_World(1, global.level * 10, _range, objEnemy);
}
	
