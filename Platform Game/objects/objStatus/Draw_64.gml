// Acessa o array global de botões
var _status = global.status_buttons;

draw_set_font(fnt_status);
draw_set_color(c_white);

// Desenhar botões
if (global._item_menu == 1){
	
    for (var _i = 0; _i < array_length(_status); _i++) {
        var _button_x = _get_camera_x + 10; // Posição X do botão ajustada para acompanhar a câmera
        var _button_y_position = _get_camera_y + button_y + _i * button_spacing; // Posição Y do botão ajustada

        // Checa a interação do mouse com o botão
        if (point_in_rectangle(mouse_x, mouse_y, _button_x, _button_y_position, _button_x + 125, _button_y_position + 80)) {
            // Desenha a sprite do botão em estado de interação (hover)
            draw_sprite(spr_status_btn_01, 0, _button_x, _button_y_position);

            if (mouse_check_button_pressed(mb_left) && global.exp_point_skill > 0) {
                switch(_i){
                    case 0:
                        objController._str_status += 1;
                        global.exp_point_skill -= 1;
                        break;
                    case 1:
                        objController._agi_status += 1;
                        global.exp_point_skill -= 1;                        
                        break;
                    case 2:
                        objController._luk_status += 1;
                        global.exp_point_skill -= 1;
                        break;
                    case 3:
                        objController._def_status += 1;
                        global.exp_point_skill -= 1;
                        break;
                    case 4:
                        objController._atk_status += 1;
                        global.exp_point_skill -= 1;
                        break;
                    case 5:
                        objController._shoot_frequency_status += 1;
                        global.exp_point_skill -= 1;
                        break;                    
                }
            }
        } else {
            // Desenha a sprite do botão em estado normal
            draw_sprite(spr_status_btn_01, 0, _button_x, _button_y_position);
        }
		
		var _x_text = -25;
		var _y_text = 25;
		
        // Desenha o texto do botão
        draw_text(_button_x + 25, _button_y_position + 25, _status[_i][0]);
        var _button_value_x = _get_camera_x + 175; // Posição X do valor ajustada para acompanhar a câmera 
		
        draw_text(_button_value_x + _x_text, _get_camera_y + button_y + 0 * button_spacing + _y_text, string(objController._str_status));
        draw_text(_button_value_x + _x_text, _get_camera_y + button_y + 1 * button_spacing + _y_text, string(objController._agi_status));
        draw_text(_button_value_x + _x_text, _get_camera_y + button_y + 2 * button_spacing + _y_text, string(objController._luk_status));
        draw_text(_button_value_x + _x_text, _get_camera_y + button_y + 3 * button_spacing + _y_text, string(objController._def_status));
        draw_text(_button_value_x + _x_text, _get_camera_y + button_y + 4 * button_spacing + _y_text, string(objController._atk_status));
        draw_text(_button_value_x + _x_text, _get_camera_y + button_y + 5 * button_spacing + _y_text, string(objController._shoot_frequency_status));
    }
}
