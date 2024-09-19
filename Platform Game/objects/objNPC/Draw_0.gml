draw_self();

// Calcula a distância entre o objNPC e o objController
var _dist = point_distance(x, y, objController._pos_x, objController._pos_y);
var _item_size = objItems._displayed_items;
// Se o NPC estiver dentro da distância de 100, mostrar o texto e desenhar os quadrados
if (_dist <= 100) {
    // Exibe a mensagem "Aperte E" acima do objNPC
    draw_text(x, y - 60, "Aperte E");

    // Desenha dois quadrados em cima do objNPC
    for (var _i = 0; _i < 2; _i++) {
        // Calcula a posição X do quadrado, ajustando para que fiquem lado a lado e centralizados no NPC
        var _square_x1 = x - 32 + (_i * 64); // Ajuste para centralizar os quadrados
        var _square_x2 = _square_x1 + 50;    // Quadrado de 50x50

        // Desenha o quadrado (mesma largura e altura)
        draw_rectangle(_square_x1, y - 50, _square_x2, y, false);

        // Verifica se o mouse está dentro do quadrado
        if (point_in_rectangle(mouse_x, mouse_y, _square_x1, y - 50, _square_x2, y)) {
            // Desenha o texto "Objeto" sobre o quadrado
            draw_text(_square_x1, y - 75, string(ds_list_find_value(_item_size, _i)));
        }
    }
}
