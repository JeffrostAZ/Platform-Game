#region select menu system

// Defina _cell_1 e _cell_2 com valores numéricos antes de usá-los
var _cell_1 = display_get_width() - 500;  // Ajuste este valor conforme necessário para a sua interface
var _cell_2 = _cell_1 + 225; // Ajuste este valor conforme necessário (por exemplo, 3 vezes _cell_1)
var _cell_height = 50; // Altura da célula
var _menu_height = ds_list_size(_menu_options) * _cell_height; // Altura total do menu
var _start_y = (display_get_height() - _menu_height) / 2; // Posiciona o menu no meio verticalmente

// Usando uma variável de script para armazenar a função
var _update_selected_option = function(direction) {
    _selected_option = (_selected_option + direction + ds_list_size(_menu_options)) mod ds_list_size(_menu_options);
};

// Atualizar a opção selecionada com base na entrada do usuário
if (keyboard_check_pressed(vk_down)) {
    _update_selected_option(1);
}
if (keyboard_check_pressed(vk_up)) {
    _update_selected_option(-1);
}

// Detecção de clique do mouse e execução de ação com base na opção selecionada

var _mouse_x = mouse_x;
var _mouse_y = mouse_y;
for (var _i = 0; _i < ds_list_size(_menu_options); _i++) {
    var _option_y = _start_y + _i * _cell_height;
    if (point_in_rectangle(_mouse_x, _mouse_y, _cell_1, _option_y, _cell_2, _option_y + _cell_height)) {
        _selected_option = _i;
			if (mouse_check_button_pressed(mb_left)) {
				switch (_selected_option) {
				    case 0: room_goto(rm_world_01); break; // Novo jogo
					case 2: room_goto(rm_config); break; //Opções
				    case 3: game_end(); break;         // Sair
				}
			} 
        break; // Sai do loop assim que a opção é selecionada
    }
}


// Executar ação com base na opção selecionada (teclado ou mouse)
if (keyboard_check_pressed(vk_enter)) {
    switch (_selected_option) {
        case 0: room_goto(rm_world_01); break; // Novo jogo
		case 2: room_goto(rm_config); break; //Opções
        case 3: game_end(); break;         // Sair
    }
}

#endregion

// Desenhar o menu
draw_set_font(_font); // Define a fonte desejada uma vez

for (var _i = 0; _i < ds_list_size(_menu_options); _i++) {
    var _option_y = _start_y + _i * _cell_height;
    var _option_text = ds_list_find_value(_menu_options, _i);
    var _is_selected = (point_in_rectangle(mouse_x, mouse_y, _cell_1, _option_y, _cell_2, _option_y + _cell_height) || _i == _selected_option);

    // Calcular a posição horizontal para centralizar o texto
    var _text_width = string_width(_option_text);
    var _text_x = _cell_1 + (_cell_2 - _cell_1 - _text_width) / 2;

    // Defina a cor e o texto com base na seleção
    if (_is_selected) {
        draw_set_color(c_lime); // Cor de fundo para a opção selecionada
        draw_rectangle(_cell_1, _option_y, _cell_2, _option_y + _cell_height, false); // Desenha um retângulo sem preenchimento
        draw_set_color(c_black); // Cor do texto para a opção selecionada
        draw_text(_text_x, _option_y + (_cell_height - string_height(_option_text)) / 2, "> " + _option_text); // Ajusta a posição do texto
    } else {
        draw_set_color(c_white); // Cor do texto para as outras opções
        draw_text(_text_x, _option_y + (_cell_height - string_height(_option_text)) / 2, _option_text); // Ajusta a posição do texto
    }
}
