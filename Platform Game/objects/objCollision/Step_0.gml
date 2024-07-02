if(point_in_rectangle(mouse_x, mouse_y, x ,y - 64, x + 64, y)){
	if(_count == 1 && mouse_check_button_pressed(mb_left)){
		
		instance_create_depth(x, y - 64, depth, objCollision);
		_count = 0;
		

	}
	
}
