
//// Calculate the angle from the player to the mouse
_angle_to_mouse = point_direction(x, y, mouse_x, mouse_y);

_shoot_countdown -= 1;

#region Shoot

if(mouse_check_button(mb_left) && _shoot_countdown <= objController._shoot_frequency){
	show_debug_message("TIRO");
	var _inst = instance_create_depth(x, y, depth, objProjectil);
	var _dir = point_direction(x, y, mouse_x, mouse_y);
	_inst.direction = _dir;
	_inst.image_angle = _dir;
	_inst.speed = objController._shoot_spd;
	_shoot_countdown = 100;
}

#endregion

x = objController._pos_x;
y = objController._pos_y;