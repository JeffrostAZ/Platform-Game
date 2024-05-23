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
}