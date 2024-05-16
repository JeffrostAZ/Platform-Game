// Variáveis de configuração

var _num_buttons = ds_list_size(global.displayed_items);  // Número de botões
var _button_width = room_width / 5;  // Cada botão tem um quinto da largura da tela
var _pos_x = (room_width - _button_width * _num_buttons) / 2;  // Centraliza os botões horizontalmente
var _height_btn = 350;
var _button_y = room_height / 2 - (_num_buttons * button_spacing) / 2;  // Centraliza verticalmente baseado no número de botões

if (_item_menu){
	
	for (var _i = 0; _i < _num_buttons; _i++) {
	    // Coordenadas do botão
	    var _button_x = _pos_x + _i * _button_width;

	    // Desenho do texto do botão
	    draw_text(_button_x + (_button_width / 2) - 60, _button_y + 10, global.items[_i][0] + ": " + string(global.items[_i][1]));

	    // Interatividade e visualização do botão
	    if (point_in_rectangle(mouse_x, mouse_y, _button_x, _button_y, _button_x + _button_width, _button_y + _height_btn)) {
	        draw_rectangle(_button_x, _button_y, _button_x + _button_width, _button_y + _height_btn, false);
	        if ( global.coin > 0) {
				if(mouse_check_button_pressed(mb_left)){
		            global.items[_i][1] += 1;  // Aumenta o valor do item
					global.coin--;
				}
	        } else {
				global.coin = 0;
			}
	    } else {
	        draw_rectangle(_button_x, _button_y, _button_x + _button_width, _button_y + _height_btn, true);
	    }
	}
}