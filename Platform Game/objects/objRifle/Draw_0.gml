
direction = _angle_to_mouse;
var _dir_rifle = sign(x - mouse_x);
draw_sprite_ext(_sprite, 0, x, y, 1, _dir_rifle * -1, _angle_to_mouse, c_white, 1);

if(object_exists(objProjectil)){
	
} else {
	draw_line_color(x , y, objProjectil.x, objProjectil.y, c_yellow, c_white);
}	
