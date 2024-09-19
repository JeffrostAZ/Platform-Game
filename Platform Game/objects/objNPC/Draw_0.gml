draw_self();

var _dist = point_distance(x, y, objController._pos_x, objController._pos_y);

if(_dist <= 100){
	draw_text(x, y - 45, "Aperte E");
}
