if(keyboard_check_pressed(vk_enter)){
	game_restart();	
}


switch(global._item_menu){
	case -1:
		instance_create_layer(room_width / 2, room_height / 2, "Instances", objPlayer);
		instance_create_layer(0, 0, "Instances", objHud);
		instance_create_layer(0, 0, "Instances", objEnemySpawner);

		global._item_menu = 0;
	break;
	
	case 1:
		if(global.upgrade == true){
			
			instance_create_depth(0, 0, depth, objItems);
			instance_create_depth(0, 0, depth, objStatus);
			global.upgrade = false;
		
		}
		
	break;
}

if(keyboard_check_pressed(ord("1"))){
	global.ability = 0;
}


if(keyboard_check_pressed(ord("2"))){
	global.ability = 1;	
}

if(keyboard_check_pressed(ord("3"))){
	global.ability = 2;	
}