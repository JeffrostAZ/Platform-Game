draw_set_font(_font); // Define a fonte desejada uma vez
var _cell_1 = display_get_width() - 300; // Defina a posição inicial X mais perto da borda direita
var _cell_2 = _cell_1 + 225; // Ajuste a largura da célula para 225 pixels
var _menu_height = ds_list_size(_menu_options) * 30; // Altura total do menu
var _start_y = (display_get_height() - _menu_height) / 2; // Posiciona o menu no meio verticalmente

for (var _i = 0; _i < ds_list_size(_menu_options); _i++) {
    var _option_y = _start_y + _i * 30;
    var _option_text = ds_list_find_value(_menu_options, _i);
    var _is_selected = (point_in_rectangle(mouse_x, mouse_y, _cell_1, _option_y, _cell_2, _option_y + 30) || _i == _selected_option);

    // Defina a cor e o texto com base na seleção
    if (_is_selected) {
        draw_set_color(c_lime); // Cor de fundo para a opção selecionada
        draw_rectangle(_cell_1, _option_y, _cell_2, _option_y + 30, false); // Desenha um retângulo sem preenchimento
        draw_set_color(c_black); // Cor do texto para a opção selecionada
        draw_text(_cell_1 + 25, _option_y, "> " + _option_text);
    } else {
        draw_set_color(c_white); // Cor do texto para as outras opções
        draw_text(_cell_1 + 25, _option_y, _option_text);
    }
}
