draw_set_font(_font); // Define a fonte desejada uma vez

var _cell_1 = display_get_width() - 500; // Define a posição inicial X mais perto da borda direita
var _cell_2 = _cell_1 + 225; // Ajusta a largura da célula para 225 pixels
var _cell_height = 50; // Aumenta a altura da célula
var _menu_height = ds_list_size(_menu_options) * _cell_height; // Altura total do menu
var _start_y = (display_get_height() - _menu_height) / 2; // Posiciona o menu no meio verticalmente

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
