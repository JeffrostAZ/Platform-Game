_pos = point_distance(x, y, objNextRoom.x, objNextRoom.y);

if(point_in_rectangle(mouse_x, mouse_y, x ,y - 64, x + 64, y)){
	if(global.blocks > 0 && _pos > 300){
		if(_count == 1 && mouse_check_button_pressed(mb_left)){
		
			instance_create_layer(x, y - 64, "Collision", objCollision);
			_count = 0;
			
			global.blocks--;
		}
	}
}
