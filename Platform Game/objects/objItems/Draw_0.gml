// Variáveis de configuração
var _num_buttons = ds_list_size(_displayed_items);  // Número de botões
var _button_width = room_width / 5;  // Cada botão tem um quinto da largura da tela
var _pos_x = (room_width - _button_width * _num_buttons) / 2;  // Centraliza os botões horizontalmente
var _height_btn = 350;
var _button_y = room_height / 2 - (_num_buttons * button_spacing) / 2;  // Centraliza verticalmente baseado no número de botões

draw_set_font(fnt_items);

// Inicializa arrays para _card_size e _card_alpha se ainda não existirem
if (!is_array(global._card_size)) {
    global._card_size = array_create(_num_buttons, 0);
}
if (!is_array(global._card_alpha)) {
    global._card_alpha = array_create(_num_buttons, 0);
}

if (global._item_menu){
    for (var _i = 0; _i < _num_buttons; _i++) {
        // Coordenadas do botão
        var _button_x = _pos_x + _i * _button_width;
        
        var _item = ds_list_find_value(_displayed_items, _i);
        
        // Desenho do texto do botão
        draw_sprite_ext(spr_select_card_01, 0, _button_x + (_button_width / 2) - 150, _button_y + 10, 1 + global._card_size[_i], 1 + global._card_size[_i], 0, c_white, 0.5 + global._card_alpha[_i]);
		
		draw_set_color(c_white);
        draw_text(_button_x + (_button_width / 2) - 75, _button_y - 75, global.items[_item][0]);
		draw_set_color(c_yellow);
		draw_text(_button_x + (_button_width / 2) - 25, _button_y - 35, string(global.items[_item][1]) + string("$"));
		
        // Interatividade e visualização do botão
        if (point_in_rectangle(mouse_x, mouse_y, _button_x, _button_y, _button_x + _button_width, _button_y + _height_btn + 100)) {
			
			if(mouse_check_button_pressed(mb_left)){
				_selected = _i;
			}
			
			
            global._card_size[_i] = min(global._card_size[_i] + 0.05, 0.05);
            global._card_alpha[_i] = min(global._card_alpha[_i] + 0.5, 0.05);
            
        } else {
            global._card_size[_i] = max(global._card_size[_i] - 0.05, 0);
            global._card_alpha[_i] = max(global._card_alpha[_i] - 0.5, 0);
        }
        
        // Mantém o item selecionado
        if(_selected == _i){
            global._card_alpha[_i] = 1;
        } else {
            if (!point_in_rectangle(mouse_x, mouse_y, _button_x, _button_y, _button_x + _button_width, _button_y + _height_btn + 100)) {
                global._card_alpha[_i] = 0;
            }
        }
    }

    if (point_in_rectangle(mouse_x, mouse_y, room_width / 2 - 60, room_height - 150, room_width / 2 + 60, room_height - 60)) {
        //draw_rectangle(room_width / 2 - 60, 925, room_width / 2 + 60, 1025, false);
		draw_sprite(spr_status_btn_02, 0, room_width / 2, room_height - 150);
        if(mouse_check_button_pressed(mb_left)){
            global._item_menu = -1;
			global.buying_limit = 2;
			global.coin -= global.items[_selected][ATRIBUTES.VALUE];
			_selected = -1;
            room_goto(rm_world_01);
        }
    } else {
        draw_sprite(spr_status_btn_02, 0, room_width / 2, room_height - 150);
    }   
}
