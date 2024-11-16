draw_self();

// Calcula a distância entre o objNPC e o objController
var _dist = point_distance(x, y, objController._pos_x, objController._pos_y);
var _item_size = objItems._displayed_items;
var _selected;
// Se o NPC estiver dentro da distância de 100, mostrar o texto e desenhar os quadrados
if (_dist <= 100) {
    // Exibe a mensagem "Aperte E" acima do objNPC
	draw_set_color(c_yellow);
    draw_text(x, y - 35, "Aperte E");

    // Desenha dois quadrados em cima do objNPC
    for (var _i = 0; _i < 2; _i++) {
        // Calcula a posição X do quadrado, ajustando para que fiquem lado a lado e centralizados no NPC
        var _square_x1 = x - 32 + (_i * 64); // Ajuste para centralizar os quadrados
        var _square_x2 = _square_x1 + 50;    // Quadrado de 50x50
		
        // Desenha o quadrado (mesma largura e altura)
		draw_set_color(c_gray);
        draw_rectangle(_square_x1, y - 100, _square_x2, y - 50, false);

        // Verifica se o mouse está dentro do quadrado
        if (point_in_rectangle(mouse_x, mouse_y, _square_x1, y - 100, _square_x2, y - 50)) {
            // Desenha o texto "Objeto" sobre o 
			
			if(mouse_check_button_pressed(mb_left)){
				_selected = _i;
			}
			
			
			 
			draw_set_color(c_white);
            draw_text(_square_x1, y - 100, string(ds_list_find_value(_item_size, _i)));
        }
    }
}
