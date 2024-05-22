// In the Step Event of objPlayer
if(_rot > 180 && _dir == 1){
	_rot -= 180;	
} else if(_rot < 180 && _dir == -1){
	_rot += 180;	
}




direction = _angle_to_mouse;
draw_sprite_ext(_sprite, 0, x, y, 1, 1, _angle_to_mouse, c_white, 1);