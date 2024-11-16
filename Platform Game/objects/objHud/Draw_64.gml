
#region Barra de Vida

// No evento Draw GUI do objeto HUD
// A função Draw GUI desenha elementos na interface, como barras de vida e experiência, independentemente da câmera.

var _hud_x = 20; // Posição X do HUD na tela (onde a barra de vida será desenhada).
var _hud_y = 20; // Posição Y do HUD na tela (posição vertical da barra de vida).

// Exemplo de desenho de uma barra de vida
var _player_health = objController._health; 
// Armazena a saúde atual do jogador, assumindo que o controlador do personagem (objController) possui a variável _health.
var _max_health = objController._max_health;
// Armazena a saúde máxima do jogador.

var _health_bar_width = 200; 
// Define a largura da barra de vida (200 pixels de largura).
var _health_bar_height = 20; 
// Define a altura da barra de vida (20 pixels de altura).

// Desenhar o fundo da barra de vida
draw_set_color(c_black); 
// Define a cor preta para desenhar o fundo da barra.
draw_rectangle(_hud_x, _hud_y, _hud_x + _health_bar_width, _hud_y + _health_bar_height, false); 
// Desenha o retângulo preto (fundo da barra de vida) com a largura e altura especificadas.

// Desenhar a saúde atual
var _current_health_width = (_player_health / _max_health) * _health_bar_width;
// Calcula a largura da barra de saúde atual com base na proporção de vida atual (_player_health) em relação à vida máxima (_max_health).

draw_set_color(c_red); 
// Define a cor vermelha para representar a saúde atual.
draw_rectangle(_hud_x, _hud_y, _hud_x + _current_health_width, _hud_y + _health_bar_height, false);
// Desenha a barra de saúde vermelha com base na largura calculada (_current_health_width).

// Desenhar texto da saúde
draw_set_color(c_white);
// Define a cor branca para o texto.
draw_text(_hud_x + _health_bar_width / 2, _hud_y + _health_bar_height / 2, string(_player_health) + " / " + string(_max_health));
// Desenha o texto que exibe a saúde atual sobre a barra, centralizando o texto (usando a metade da largura e altura da barra).

#endregion


#region Barra de Experiência

// No evento Draw GUI do objeto HUD
var _exp_hud_x = 0; 
// Define a posição X da barra de experiência (neste caso, começa na borda esquerda da tela).

var _exp_hud_y = _get_camera_y - 100; 
// Define a posição Y da barra de experiência, 100 pixels acima da borda inferior da tela (com base na altura da câmera).

// Exemplo de desenho de uma barra de experiência
var _player_exp = global.exp; 
// Armazena a experiência atual do jogador (global.exp).

var _exp_needed = global._exp_level_needs; 
// Armazena a quantidade de experiência necessária para o próximo nível (global._exp_level_needs).

var _exp_bar_width = 1920; 
// Define a largura total da barra de experiência (1920 pixels, cobrindo toda a largura da tela).
var _exp_bar_height = 10; 
// Define a altura da barra de experiência (10 pixels de altura).

// Desenhar fundo da barra de experiência
draw_set_color(c_black); 
// Define a cor preta para o fundo da barra.
draw_rectangle(_exp_hud_x, _exp_hud_y, _exp_hud_x + _exp_bar_width, _exp_hud_y + _exp_bar_height, false);
// Desenha o fundo da barra de experiência em preto, usando a largura e altura especificadas.

// Desenhar a experiência atual
var _current_exp_width = (_player_exp / _exp_needed) * _exp_bar_width;
// Calcula a largura da barra de experiência atual com base na proporção de experiência atual (_player_exp) em relação à experiência necessária (_exp_needed).

draw_set_color(c_yellow); 
// Define a cor amarela para a barra de experiência.
draw_rectangle(_exp_hud_x, _exp_hud_y, _exp_hud_x + _current_exp_width, _exp_hud_y + _exp_bar_height, false);
// Desenha a barra de experiência atual em amarelo, com a largura calculada (_current_exp_width).

draw_set_color(c_white);
// Define a cor branca, embora não esteja sendo usada para desenhar texto diretamente aqui, ela está pronta para quando for necessário.

#endregion
