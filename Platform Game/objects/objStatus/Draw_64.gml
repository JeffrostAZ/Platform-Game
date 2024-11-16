// Acessa o array global de botões
var _status = global.status_buttons;
// Armazena o array de botões de status em uma variável local para facilitar o acesso.

draw_set_font(fnt_status);
draw_set_color(c_white);
// Define a fonte usada para desenhar o texto dos botões e a cor como branca.


// Desenhar botões
if (global._item_menu == 1) {
    // Verifica se o menu de itens está aberto (se global._item_menu for igual a 1).

    for (var _i = 0; _i < array_length(_status); _i++) {
        // Loop através de todos os botões disponíveis no array global.status_buttons.

        var _button_x = _get_camera_x + 10; 
        // Define a posição X do botão, ajustada para acompanhar a câmera (câmera vista pelo jogador).

        var _button_y_position = _get_camera_y + button_y + _i * button_spacing; 
        // Define a posição Y do botão, ajustada para cada botão com base no índice (_i) e no espaçamento entre botões (button_spacing).

        // Checa a interação do mouse com o botão
        if (point_in_rectangle(mouse_x, mouse_y, _button_x, _button_y_position, _button_x + 125, _button_y_position + 80)) {
            // Verifica se o mouse está dentro do retângulo do botão (125x80 de tamanho) para realizar a interação de hover (quando o mouse passa por cima do botão).

            // Desenha a sprite do botão em estado de interação (hover)
            draw_sprite(spr_status_btn_01, 0, _button_x, _button_y_position);
            // Desenha uma sprite visual para o botão quando o mouse está sobre ele.

            if (mouse_check_button_pressed(mb_left) && global.exp_point_skill > 0) {
                // Se o botão esquerdo do mouse foi pressionado e o jogador tem pontos de experiência disponíveis (global.exp_point_skill > 0), aplica o efeito do botão.

                switch(_i) {
                    // Aplica o efeito baseado no índice do botão selecionado (_i).
                    case 0:
                        objController._str_status += 1;
                        // Aumenta o atributo de força (_str_status) do controlador do personagem.
                        global.exp_point_skill -= 1;
                        // Diminui o ponto de experiência disponível.
                        break;

                    case 1:
                        objController._agi_status += 1;
                        // Aumenta o atributo de agilidade (_agi_status).
                        global.exp_point_skill -= 1;
                        break;

                    case 2:
                        objController._luk_status += 1;
                        // Aumenta o atributo de sorte (_luk_status).
                        global.exp_point_skill -= 1;
                        break;

                    case 3:
                        objController._def_status += 1;
                        // Aumenta o atributo de defesa (_def_status).
                        global.exp_point_skill -= 1;
                        break;

                    case 4:
                        objController._atk_status += 1;
                        // Aumenta o atributo de ataque (_atk_status).
                        global.exp_point_skill -= 1;
                        break;

                    case 5:
                        objController._shoot_frequency_status += 1;
                        // Aumenta a frequência de tiro (_shoot_frequency_status).
                        global.exp_point_skill -= 1;
                        break;                    
                }
            }
        } else {
            // Desenha a sprite do botão em estado normal (sem interação do mouse).
            draw_sprite(spr_status_btn_01, 0, _button_x, _button_y_position);
        }
        
        // Variáveis auxiliares para ajustar a posição do texto dentro do botão
        var _x_text = -25;
        var _y_text = 25;
        
        // Desenha o texto do botão
        draw_text(_button_x + 25, _button_y_position + 25, _status[_i][0]);
        // Desenha o texto descritivo do botão com base no array _status. O texto fica dentro do botão, a 25 pixels do canto.

        var _button_value_x = _get_camera_x + 175; 
        // Define a posição X onde os valores dos atributos serão desenhados, acompanhando a câmera.

        // Desenha os valores dos atributos do personagem, baseados no status do controlador.
        draw_text(_button_value_x + _x_text, _get_camera_y + button_y + 0 * button_spacing + _y_text, string(objController._str_status));
        // Desenha o valor do atributo de força (_str_status) ao lado do primeiro botão.
        
        draw_text(_button_value_x + _x_text, _get_camera_y + button_y + 1 * button_spacing + _y_text, string(objController._agi_status));
        // Desenha o valor do atributo de agilidade (_agi_status) ao lado do segundo botão.

        draw_text(_button_value_x + _x_text, _get_camera_y + button_y + 2 * button_spacing + _y_text, string(objController._luk_status));
        // Desenha o valor do atributo de sorte (_luk_status) ao lado do terceiro botão.
    }
}
