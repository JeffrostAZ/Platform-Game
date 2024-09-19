var _pos_x = x - objController._pos_x;

draw_self();

if(global.ability == 0){
	//Hacking Ability
	draw_set_alpha(0.5);
	draw_rectangle(x - 25, y - 200, x + 400, y - 45, 0);
	draw_text(x, y - 200,"Enemy" + string(id));
	draw_set_alpha(1);
}