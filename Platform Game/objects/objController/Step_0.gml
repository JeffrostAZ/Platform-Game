global.change_world++;

if(keyboard_check_pressed(ord("R"))){
	game_restart();	
}

if(global.coin < 0){
	global.coin = 0;	
}

if(global.exp >= global._exp_level_needs){
	room_goto(rm_build);
	global._item_menu = 1;
	global._exp_level_needs *= global.level;
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

if(keyboard_check_pressed(ord("T")) && global.change_world >= (60 * 60 * 0.5)){
	var _room = choose(rm_world_01, rm_world_02, rm_world_03, rm_world_04, rm_world_05);
	room_goto(_room);
}

//if(objController._pos_x > room_width - 400){
//	_room_width += 64;
//	room_width = _room_width;
	
//	var _range = room_width / 64;
	
//	Create_World(1, global.level * 3, _range, objSpawner);
//}
	
