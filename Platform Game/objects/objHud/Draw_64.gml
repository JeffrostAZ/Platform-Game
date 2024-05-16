// No evento Draw GUI do objeto HUD
var _hud_x = 20; // Posição X do HUD na tela
var _hud_y = 20; // Posição Y do HUD na tela

// Exemplo de desenho de uma barra de vida
var _player_health = objPlayer._health; // Assume que o objeto do jogador tem uma variável de saúde chamada 'health'
var _max_health = objPlayer._max_health;
var _health_bar_width = 200;
var _health_bar_height = 20;

// Desenhar fundo da barra de vida
draw_set_color(c_black);
draw_rectangle(_hud_x, _hud_y, _hud_x + _health_bar_width, _hud_y + _health_bar_height, false);

// Desenhar a saúde atual
var _current_health_width = (_player_health / _max_health) * _health_bar_width;
draw_set_color(c_red);
draw_rectangle(_hud_x, _hud_y, _hud_x + _current_health_width, _hud_y + _health_bar_height, false);

// Desenhar texto da saúde
draw_set_color(c_white);
draw_text(_hud_x + _health_bar_width / 2, _hud_y + _health_bar_height / 2, string(_player_health) + " / " + string(_max_health));
