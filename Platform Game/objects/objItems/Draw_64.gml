 // Variáveis de configuração

var _num_buttons = ds_list_size(_displayed_items);  // Número de botões
var _button_width = _get_camera_x / 10;  // Cada botão tem um quinto da largura da tela
var _pos_x = (_get_camera_x - _button_width * _num_buttons) / 2;  // Centraliza os botões horizontalmente
var _height_btn = 125;
var _button_y = _get_camera_y / 2 - (_num_buttons * button_spacing) / 2 + (room_height / 2);  // Centraliza verticalmente baseado no número de botões
draw_set_font(fnt_items);

// Inicializa arrays para _card_size e _card_alpha se ainda não existirem
if (!is_array(global._card_size)) {
    global._card_size = array_create(_num_buttons, 0);
}

if (!is_array(global._card_alpha)) {
    global._card_alpha = array_create(_num_buttons, 0);
}

if(mouse_wheel_up()){
	_scroll += 125;	
}
		
if(mouse_wheel_down()){
	_scroll -= 125;	
}

if(_scroll >= 1975 ){
	_scroll = 1975;
} else if(_scroll <= -1725){
	_scroll = -1725;	
}

show_debug_message(_scroll);

if (global._item_menu == 1){
    for (var _i = 0; _i < _num_buttons; _i++) {
        // Coordenadas do botão
		
        var _button_x = _pos_x + _i * _button_width + _scroll;

         
        var _item = ds_list_find_value(_displayed_items, _i);

        // Desenho do texto do botão
        draw_sprite_ext(spr_select_card_01, 0, _button_x + (_button_width / 2) - 150, _button_y + 10, 1 + global._card_size[_i], 1 + global._card_size[_i], 0, c_white, 0.5 + global._card_alpha[_i]);
		
		draw_set_color(c_white);
        draw_text(_button_x + (_button_width / 2) - 150, _button_y - 75, global.items[_item][0]);
		draw_set_color(c_yellow);
		draw_text(_button_x + (_button_width / 2) - 100, _button_y - 35, string(global.items[_item][1]) + string("$"));
		
		//botão de compra
		var _compra_pos = 250;
		draw_rectangle(_button_x + (_button_width / 2) - 150, _button_y + _compra_pos, _button_x + (_button_width / 2), _button_y + _compra_pos + 50 , 1);
		draw_text(_button_x + (_button_width / 2) - 145, _button_y + _compra_pos, "COMPRAR");
		
        // Interatividade e visualização do botão
        if (point_in_rectangle(mouse_x, mouse_y, _button_x - 50, _button_y, _button_x + _button_width - 100, _button_y + _height_btn + 100)) {
			
			draw_set_color(c_black);
			draw_text(350 - 50, 720, "Strength");
			draw_text(350 - 50, 750, "Agility");
			draw_text(350 - 50, 780, "Health");
		
			draw_set_color(c_red);
			draw_text(350 + 80, 720, global.items[_item][ATRIBUTES.FORCA]);
			draw_text(350 + 80, 750, global.items[_item][ATRIBUTES.VELOCIDADE]);
			draw_text(350 + 80, 780, global.items[_item][ATRIBUTES.VIDA]);
			
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
		
		//campo do botão de compra
		if (point_in_rectangle(mouse_x, mouse_y, _button_x + (_button_width / 2) - 150, _button_y + _compra_pos, _button_x + (_button_width / 2), _button_y + _compra_pos + 50)) {
			var _color = c_black;
			draw_text_color(_button_x + (_button_width / 2) - 145, _button_y + _compra_pos, "COMPRAR", _color, _color, _color, _color, 1);
			draw_set_color(c_yellow);
			draw_rectangle(_button_x + (_button_width / 2) - 150, _button_y + _compra_pos, _button_x + (_button_width / 2), _button_y + _compra_pos + 50, 0);
			
			if(mouse_check_button_pressed(mb_left)){
				_selected = _i;
				global.upgrade = true;
			}
		}

    }

    if (point_in_rectangle(mouse_x, mouse_y,_get_camera_x / 2 - 60, _get_camera_y - 150, _get_camera_x / 2 + 60, _get_camera_y - 60)) { 
        
		draw_sprite(spr_status_btn_02, 0, _get_camera_x / 2, _get_camera_y - 150);
        if(mouse_check_button_pressed(mb_left)){
			global.buying_limit += 2;
			if(_selected != -1){
				global.coin -= global.items[_selected][ATRIBUTES.VALUE];
			}
			_selected = -1;
			global._item_menu = -1;
			room_goto(rm_world_01);
        }
    } else {
        draw_sprite(spr_status_btn_02, 0, _get_camera_x / 2, _get_camera_y - 150);
		draw_rectangle(_get_camera_x / 2 - 60, _get_camera_y - 150, _get_camera_x / 2 + 60, _get_camera_y - 60, false);
    }   
}
