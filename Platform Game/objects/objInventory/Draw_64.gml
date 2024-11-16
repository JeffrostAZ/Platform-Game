var _num_buttons = 5;  
// Define o número de botões na hotbar (barra de atalhos) como 5.

var _button_width = 300 / _num_buttons;  
// Calcula a largura de cada botão dividindo 300 pixels (largura total da hotbar) pelo número de botões. 
// Isso significa que cada botão terá uma largura de 60 pixels.

var _pos_x = (300 - _button_width * _num_buttons) / 2;  
// Calcula a posição inicial X para centralizar os botões horizontalmente na tela, garantindo que a hotbar fique no centro da interface.

var _height_btn = _cell;  
// Define a altura dos botões igual ao valor da variável `_cell`, que é o tamanho da célula da interface (provavelmente 64 pixels).

var _button_y = _get_camera_y - _cell - (_num_buttons * button_spacing) / 2;  
// Calcula a posição Y dos botões, posicionando-os verticalmente na parte inferior da tela, com base na altura da câmera e no número de botões.

var _item_hotbar_x = (room_width / 2 - 172) + _pos_x + _hotbar_item * _button_width;  
// Calcula a posição X do item atualmente selecionado na hotbar, com base na largura da sala, na posição horizontal centralizada e no índice do item selecionado na hotbar (_hotbar_item).

switch (_hotbar_item) {
    // Desenha um retângulo em volta do item selecionado na hotbar. O item selecionado é determinado por _hotbar_item, que pode variar entre 0 e 4.
    case 0:
        draw_rectangle(_item_hotbar_x, _button_y, _item_hotbar_x + _button_width, _button_y + _height_btn, 0);
        break;
        
    case 1:
        draw_rectangle(_item_hotbar_x, _button_y, _item_hotbar_x + _button_width, _button_y + _height_btn, 0);
        break;
        
    case 2:
        draw_rectangle(_item_hotbar_x, _button_y, _item_hotbar_x + _button_width, _button_y + _height_btn, 0);
        break;
        
    case 3:
        draw_rectangle(_item_hotbar_x, _button_y, _item_hotbar_x + _button_width, _button_y + _height_btn, 0);
        break;
    
    case 4:
        draw_rectangle(_item_hotbar_x, _button_y, _item_hotbar_x + _button_width, _button_y + _height_btn, 0);
        break;
}
// Para cada caso (0 a 4, correspondendo aos cinco botões da hotbar), o código desenha um retângulo ao redor do botão selecionado, indicando qual item da hotbar está ativo.

for (var _i = 0; _i < _num_buttons; _i++) {
    // Loop que percorre todos os botões da hotbar, de 0 a 4.
    
    var _button_x = (room_width / 2 - 172) + _pos_x + _i * _button_width;
    // Calcula a posição X de cada botão, garantindo que todos os botões sejam distribuídos uniformemente ao longo da hotbar.

    if (point_in_rectangle(mouse_x, mouse_y, _button_x, _button_y, _button_x + _button_width, _button_y + _height_btn)) {
        // Verifica se o mouse está dentro do retângulo do botão. Se o mouse estiver sobre o botão, uma ação pode ser realizada (o código para desenhar um retângulo foi comentado).
    } else {
        draw_rectangle(_button_x, _button_y, _button_x + _button_width, _button_y + _height_btn, 1);
        // Se o mouse não estiver sobre o botão, desenha o retângulo normal do botão.
    }
}
// Este loop percorre todos os botões, desenhando um retângulo em torno de cada um e verificando se o mouse está sobre o botão (para ações de interação).
