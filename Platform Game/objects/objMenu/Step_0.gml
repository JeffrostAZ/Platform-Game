#region select menu system

// Defina _cell_1 e _cell_2 com valores numéricos antes de usá-los
var _cell_1 = 75;  // Ajuste este valor conforme necessário para a sua interface
var _cell_2 = 225; // Ajuste este valor conforme necessário (por exemplo, 3 vezes _cell_1)

// Usando uma variável de script para armazenar a função
var _update_selected_option = function(direction) {
    _selected_option = (_selected_option + direction + _option_count) mod _option_count;
};

// Atualizar a opção selecionada com base na entrada do usuário
if (keyboard_check_pressed(vk_down)) {
    _update_selected_option(1);
}
if (keyboard_check_pressed(vk_up)) {
    _update_selected_option(-1);
}

// Detecção de clique do mouse e execução de ação com base na opção selecionada
if (mouse_check_button_pressed(mb_left)) {
    var _mouse_x = mouse_x;
    var _mouse_y = mouse_y;
    for (var _i = 0; _i < _option_count; _i++) {
        var _option_y = 100 + _i * 30;
        if (point_in_rectangle(_mouse_x, _mouse_y, _cell_1, _option_y, _cell_2, _option_y + 30)) {
            _selected_option = _i;
            break; // Sai do loop assim que a opção é selecionada
        }
    }
}

// Executar ação com base na opção selecionada (teclado ou mouse)
if (keyboard_check_pressed(vk_enter)) {
    switch (_selected_option) {
        case 0: room_goto(rm_world); break; // Novo jogo
		case 2: room_goto(rm_menu); break; //Opções
        case 3: game_end(); break;         // Sair
    }
}

#endregion
