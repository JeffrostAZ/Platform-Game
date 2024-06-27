draw_self();

if(point_in_rectangle(mouse_x, mouse_y, x ,y - 64, x + 64, y)){
	draw_set_color(c_lime);
	draw_rectangle(x, y - 64, x + 64, y, 1);
	//if(_count == 1 && mouse_check_button_pressed(mb_left)){
	//	instance_create_depth(x, y - 64, depth, objCollision);
	//	_count = 0;
		
	//	var _grid = ds_grid_create(2, 5);
		
		
	//	ds_grid_add(_grid, _grid_count, 0, mouse_x);
	//	ds_grid_add(_grid, _grid_count, 1, mouse_y);
	//	ds_grid_add(_grid, _grid_count, 2, x);
	//	ds_grid_add(_grid, _grid_count, 3, y);
		
	//	ds_map_add(global.map_save, "Item: " +  string(_grid_count),
	//	"pos_x:" + string(ds_grid_get(_grid, _grid_count, 0)) + " " +  
	//	"pos_y:" + string(ds_grid_get(_grid, _grid_count, 1)) + " " +  
	//	"x:" + string(ds_grid_get(_grid, _grid_count, 2)) + " " +
	//	"y:" + string(ds_grid_get(_grid, _grid_count, 3)));
		
	//	var _str = json_encode( global.map_save);
	//	var _dir = working_directory + "highscore.txt"
		
	//	show_debug_message(_grid_count);
		
	//	var _file = file_text_open_write(_dir);

	//	file_text_write_string(_file, _str);
		
	//	file_text_close(_file);

	//}
}
	
draw_set_color(c_white);