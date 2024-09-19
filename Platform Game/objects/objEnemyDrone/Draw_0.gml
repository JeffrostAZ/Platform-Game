// Desenha a sprite do drone
draw_self();

//draw_sprite(spr_drone, 0, x, y);

//if (_state == "atacar" && instance_exists(_target)) {
//    draw_line_color(x, y, _target.x, _target.y, c_red, c_red);
//}

if(global.ability == 0){
	//Hacking Ability
	draw_set_alpha(0.5);
	draw_rectangle(x - 25, y - 200, x + 400, y - 45, 0);
	draw_text(x, y - 200,"Enemy" + string(id));
	draw_set_alpha(1);
}