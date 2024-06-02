// Desenha a sprite do drone
draw_self();

draw_sprite(spr_drone, 0, x, y);

if(_state == "atacar"){
	draw_line_color(x, y, objEnemy.id.x, objEnemy.id.y, c_red, c_red);
}