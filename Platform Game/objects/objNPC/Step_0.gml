var _dist = point_distance(x, y, objController._pos_x, objController._pos_y);
var _e_key = keyboard_check_pressed(ord("E"));

if(_dist <= 100 && _e_key){
	room_goto(rm_build);
	global._item_menu = 1;
}