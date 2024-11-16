// Variáveis de configuração

var _num_buttons = ds_list_size(_displayed_items);  // Número de botões baseado no tamanho da lista de itens exibidos
var _button_width = _get_camera_x / 10;  // A largura de cada botão é um décimo da largura da tela
var _pos_x = (_get_camera_x - _button_width * _num_buttons) / 2;  // Calcula a posição X inicial para centralizar os botões na tela
var _height_btn = 125;  // Altura de cada botão
var _button_y = _get_camera_y / 2 - (_num_buttons * button_spacing) / 2 + (room_height / 2);  // Centraliza os botões verticalmente baseado no número de botões
draw_set_font(fnt_items);  // Define a fonte para o texto dos itens

// Inicializa arrays para _card_size e _card_alpha se ainda não existirem
if (!is_array(global._card_size)) {
    global._card_size = array_create(_num_buttons, 0);  // Cria um array para armazenar o tamanho dos cards dos itens
}

if (!is_array(global._card_alpha)) {
    global._card_alpha = array_create(_num_buttons, 0);  // Cria um array para armazenar a transparência (alpha) dos cards
}

// Controle de rolagem (scroll) com o mouse
if (mouse_wheel_up()) {
    _scroll += 125;  // Ao rolar para cima, aumenta o valor de _scroll
}

if (mouse_wheel_down()) {
    _scroll -= 125;  // Ao rolar para baixo, diminui o valor de _scroll
}

// Limita os valores de _scroll para não exceder os limites da área de rolagem
if (_scroll >= 1975) {
    _scroll = 1975;  // Limite superior
} else if (_scroll <= -1725) {
    _scroll = -1725;  // Limite inferior
}

// Se o menu de itens estiver ativo (global._item_menu == 1)
if (global._item_menu == 1) {
    // Loop pelos botões (itens)
    for (var _i = 0; _i < _num_buttons; _i++) {
        // Calcula a posição X do botão, considerando a rolagem (_scroll)
        var _button_x = _pos_x + _i * _button_width + _scroll;

        // Obtém o item da lista de itens exibidos
        var _item = ds_list_find_value(_displayed_items, _i);

        // Desenha o sprite do card do item, centralizando o sprite e ajustando o tamanho e a transparência
        draw_sprite_ext(spr_select_card_01, 0, _button_x + (_button_width / 2) - 150, _button_y + 10, 1 + global._card_size[_i], 1 + global._card_size[_i], 0, c_white, 0.5 + global._card_alpha[_i]);

        // Desenha o nome do item e o preço
        draw_set_color(c_white);  // Define a cor do texto para branco
        draw_text(_button_x + (_button_width / 2) - 150, _button_y - 75, global.items[_item][0]);  // Nome do item
        draw_set_color(c_yellow);  // Define a cor do preço para amarelo
        draw_text(_button_x + (_button_width / 2) - 100, _button_y - 35, string(global.items[_item][1]) + string("$"));  // Preço do item

        // Desenha o botão de compra
        var _compra_pos = 250;  // Posição Y do botão de compra
        draw_rectangle(_button_x + (_button_width / 2) - 150, _button_y + _compra_pos, _button_x + (_button_width / 2), _button_y + _compra_pos + 50, 1);  // Desenha o retângulo do botão de compra
        draw_text(_button_x + (_button_width / 2) - 145, _button_y + _compra_pos, "COMPRAR");  // Desenha o texto "COMPRAR" no botão

        // Verifica se o mouse está sobre o botão do item
        if (point_in_rectangle(mouse_x, mouse_y, _button_x - 50, _button_y, _button_x + _button_width - 100, _button_y + _height_btn + 100)) {
            // Exibe atributos do item (Força, Velocidade, Vida)
            draw_set_color(c_black);
            draw_text(350 - 50, 720, "Strength");
            draw_text(350 - 50, 750, "Agility");
            draw_text(350 - 50, 780, "Health");

            draw_set_color(c_red);
            draw_text(350 + 80, 720, global.items[_item][ATRIBUTES.FORCA]);
            draw_text(350 + 80, 750, global.items[_item][ATRIBUTES.VELOCIDADE]);
            draw_text(350 + 80, 780, global.items[_item][ATRIBUTES.VIDA]);

            // Aumenta o tamanho e a transparência do card quando o mouse está sobre ele
            global._card_size[_i] = min(global._card_size[_i] + 0.05, 0.05);
            global._card_alpha[_i] = min(global._card_alpha[_i] + 0.5, 0.05);

        } else {
            // Reduz o tamanho e a transparência do card quando o mouse não está sobre ele
            global._card_size[_i] = max(global._card_size[_i] - 0.05, 0);
            global._card_alpha[_i] = max(global._card_alpha[_i] - 0.5, 0);
        }

        // Mantém o item selecionado visível
        if (_selected == _i) {
            global._card_alpha[_i] = 1;  // Mantém o card selecionado totalmente visível
        } else {
            // Se o mouse não estiver sobre o card, ele fica invisível
            if (!point_in_rectangle(mouse_x, mouse_y, _button_x, _button_y, _button_x + _button_width, _button_y + _height_btn + 100)) {
                global._card_alpha[_i] = 0;
            }
        }

        // Verifica se o mouse está sobre o botão "COMPRAR"
        if (point_in_rectangle(mouse_x, mouse_y, _button_x + (_button_width / 2) - 150, _button_y + _compra_pos, _button_x + (_button_width / 2), _button_y + _compra_pos + 50)) {
            // Muda a cor do botão quando o mouse está sobre ele
            var _color = c_black;
            draw_text_color(_button_x + (_button_width / 2) - 145, _button_y + _compra_pos, "COMPRAR", _color, _color, _color, _color, 1);
            draw_set_color(c_yellow);
            draw_rectangle(_button_x + (_button_width / 2) - 150, _button_y + _compra_pos, _button_x + (_button_width / 2), _button_y + _compra_pos + 50, 0);

            // Quando o botão de compra é clicado
            if (mouse_check_button_pressed(mb_left)) {
                _selected = _i;  // Define o item selecionado
                global.upgrade = true;  // Ativa o processo de compra
            }
        }
    }

    // Botão para finalizar a compra
    if (point_in_rectangle(mouse_x, mouse_y, _get_camera_x / 2 - 60, _get_camera_y - 150, _get_camera_x / 2 + 60, _get_camera_y - 60)) {
        draw_sprite(spr_status_btn_02, 0, _get_camera_x / 2, _get_camera_y - 150);  // Desenha o botão de status
        if (mouse_check_button_pressed(mb_left)) {
            global.buying_limit += 2;  // Aumenta o limite de compra
            if (_selected != -1) {
                global.coin -= global.items[_selected][ATRIBUTES.VALUE];  // Deduz o valor do item das moedas
            }
            _selected = -1;  // Desseleciona o item
            global._item_menu = -1;  // Fecha o menu
            room_goto(rm_world_01);  // Vai para a sala rm_world_01
        }
    } else {
        // Desenha o botão de status quando o mouse não está sobre ele
        draw_sprite(spr_status_btn_02, 0, _get_camera_x / 2, _get_camera_y - 150);
        draw_rectangle(_get_camera_x / 2 - 60, _get_camera_y - 150, _get_camera_x / 2 + 60, _get_camera_y - 60, false);
    }
}
