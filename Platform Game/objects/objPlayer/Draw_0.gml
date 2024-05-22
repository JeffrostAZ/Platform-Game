var _status = global.status_buttons;

draw_set_font(fnt_status);

draw_sprite_ext(sprPlayer, _animation, x, y, sign(_idle), 1, 0, c_white, 1);

if(global._item_menu){

	var _button_x = _get_camera_x + 125; // Posição X do botão ajustada para acompanhar a câmera

	// Desenha o texto do botão
	draw_text(_button_x, _get_camera_y + button_y + 0 * button_spacing + 10,": " + string(_str));
	draw_text(_button_x, _get_camera_y + button_y + 1 * button_spacing + 10,": " + string(_agi));
	draw_text(_button_x, _get_camera_y + button_y + 2 * button_spacing + 10,": " + string(_luk));
	draw_text(_button_x, _get_camera_y + button_y + 3 * button_spacing + 10,": " + string(_def));
	draw_text(_button_x, _get_camera_y + button_y + 4 * button_spacing + 10,": " + string(_atk));
	draw_text(_button_x, _get_camera_y + button_y + 5 * button_spacing + 10,": " + string(_shoot_spd));
	draw_text(_button_x, _get_camera_y + button_y + 6 * button_spacing + 10,": " + string(_shoot_frequency));

}