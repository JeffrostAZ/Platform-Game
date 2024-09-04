#region Teste angulo

var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);


if(_right){
	_move_x++;
}

if(_left){
	_move_x--;
}

if(_up){
	_move_y--;	
}

if(_down){
	_move_y++;	
}

if(point_in_circle(mouse_x, mouse_y, _cur_x, _cur_y, 20)){
	show_message("TOCOU no Player");
}


if(keyboard_check(vk_space)){
	_launch_power += 0.01;
}
if(keyboard_check(vk_control)){
	if(_launch_power > 0){
		_launch_power -= 0.01;
	}
}

//x += _move_x;
//y += _move_y;

#endregion