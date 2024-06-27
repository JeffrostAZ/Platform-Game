if(point_in_rectangle(mouse_x, mouse_y, x ,y - 64, x + 64, y)){
	if(_count == 1 && mouse_check_button_pressed(mb_left)){
		
		instance_create_depth(x, y - 64, depth, objCollision);
		_count = 0;
		
		ds_map_add(global.map_save, "Item" +  string(global.grid_count),
		"\"_object\":\"" + string(object_get_name(object_index)) + "\" " +
		"\"_sprite\":\"" + string(sprite_get_name(sprite_index)) + "\" " +
		"\"_save_count\":\"" + string(global.grid_count) + "\" " +
		"\"_pos_x\":\"" + string(mouse_x) + "\" " +  
		"\"_pos_y\":\"" + string(mouse_y) + "\" " +
		"\"_x\":\"" + string(x) + "\" " +
		"\"_y\":\"" + string(y));
		
		global.grid_count++;

	}
}

if(keyboard_check_pressed(ord("P"))){
			
	var _test = json_parse(ds_map_find_value(global.map_save, "Item1"));
	
	show_message(_test);
			
	var _str = json_encode(global.map_save);
	var _dir = working_directory + "highscore.txt";
		
	var _file = file_text_open_write(_dir);
	file_text_write_string(_file, _str);
			
	file_text_close(_file); 
}