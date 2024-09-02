global.change_world++;

if(keyboard_check_pressed(ord("R"))){
	game_restart();	
}

if(keyboard_check_pressed(ord("P"))){
	Save();
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

//if(keyboard_check(vk_control)){
//	room_goto(rm_build);
//	global._item_menu = 1;
//}
