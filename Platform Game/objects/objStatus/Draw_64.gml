// Acessa o array global de botões
var _status = global.status_buttons;

// Desenhar botões
for (var _i = 0; _i < array_length(_status); _i++) {
    var _button_x = _get_camera_x + 10; // Posição X do botão ajustada para acompanhar a câmera
    var _button_y_position = _get_camera_y + button_y + _i * button_spacing; // Posição Y do botão ajustada

    // Desenha o texto do botão
    draw_text(_button_x, _button_y_position + 10, _status[_i][0] + ": " + string(_status[_i][1]));

    // Checa a interação do mouse com o botão
    if (point_in_rectangle(mouse_x, mouse_y, _button_x, _button_y_position, _button_x + 100, _button_y_position + 30)) {
        draw_rectangle(_button_x, _button_y_position, _button_x + 100, _button_y_position + 30, false);
        if (mouse_check_button_pressed(mb_left)) {
            _status[_i][1] += 1; // Aumenta o status
        } else if (mouse_check_button_pressed(mb_right)) {
            _status[_i][1] -= 1; // Diminui o status
        }
    } else {
        draw_rectangle(_button_x, _button_y_position, _button_x + 100, _button_y_position + 30, true);
    }
}