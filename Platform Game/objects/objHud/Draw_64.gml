#region	Barra de Vida

// No evento Draw GUI do objeto HUD
var _hud_x = 20; // Posição X do HUD na tela
var _hud_y = 20; // Posição Y do HUD na tela

// Exemplo de desenho de uma barra de vida
var _player_health = objController._health; // Assume que o objeto do jogador tem uma variável de saúde chamada 'health'
var _max_health = objController._max_health;
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

#endregion

#region Barra de Experiência

// No evento Draw GUI do objeto HUD
var _exp_hud_y = 60; // Posição Y do HUD na tela

// Exemplo de desenho de uma barra de vida
var _player_exp = global.exp; // Assume que o objeto do jogador tem uma variável de saúde chamada 'health'
var _exp_needed = global._exp_level_needs; // Experiência necessária para o próximo nível

var _exp_bar_width = 200; // Largura total da barra de experiência
var _exp_bar_height = 20; // Altura da barra de experiência

// Desenhar fundo da barra de vida
draw_set_color(c_black);
draw_rectangle(_hud_x, _exp_hud_y, _hud_x + _exp_bar_width, _exp_hud_y + _exp_bar_height, false);

// Desenhar a saúde atual
var _current_exp_width = (_player_exp / _exp_needed) * _exp_bar_width;
draw_set_color(c_yellow);
draw_rectangle(_hud_x, _exp_hud_y, _hud_x + _current_exp_width, _exp_hud_y + _exp_bar_height, false);

// Desenhar texto da saúde
draw_set_color(c_white);
draw_text(_hud_x + _exp_bar_width / 2, _exp_hud_y + _exp_bar_height / 2, string(_player_exp) + " / " + string(_exp_needed));


#endregion
