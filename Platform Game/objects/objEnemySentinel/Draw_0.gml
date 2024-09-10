
draw_self();

// Definir o ponto inicial (objEnemy)
var _start_x = x;  // Posição inicial no eixo X (inimigo)
var _start_y = y;  // Posição inicial no eixo Y (inimigo)

// Definir o ponto final (objPlayer, o alvo)
var _target_x = objController._pos_x;  // Posição final no eixo X (jogador)
var _target_y = objController._pos_y;  // Posição final no eixo Y (jogador)

// Calcular a distância horizontal e vertical entre o ponto inicial e o alvo
var _dx = _target_x - _start_x;  // Distância horizontal entre o inimigo e o jogador
var _dy = _target_y - _start_y;  // Distância vertical entre o inimigo e o jogador

// Ajuste do alcance e da velocidade para garantir que o projétil atinja o jogador
var _velocity = 15;  // Velocidade inicial ajustada
var _gravity_force = 0.5;  // Gravidade (ajustada para uma curva mais natural)

// Para garantir que o projétil atinja o ponto final, precisamos calcular o ângulo correto
// usando uma fórmula para lançamentos projetados com uma altura máxima (acima do jogador)
var _time_to_hit = 2 * (abs(_dx) / _velocity);  // Usar a distância absoluta no tempo de impacto
var _velocity_y = (_dy + (0.5 * _gravity_force * sqr(_time_to_hit))) / _time_to_hit;  // Velocidade vertical necessária

// Componente horizontal é a velocidade dividida pelo tempo (ajuste para direção)
var _velocity_x = _dx / _time_to_hit;

// Desenho da trajetória
var _t = 0;
var _current_x, _current_y;

draw_set_color(c_orange);
while (_t < _time_to_hit) {
    // Recalcula a posição atual do projétil
    _current_x = _start_x + _velocity_x * _t;
    _current_y = _start_y - (_velocity_y * _t - 0.7 * _gravity_force * _t * _t);
    
    // Desenha um ponto na posição calculada
    draw_circle(_current_x, _current_y, 2, false);
    
    // Incrementa o tempo
    _t += 0.9;  // Intervalo mais preciso para desenhar a trajetória
}

_cur_x = _current_x;
_cur_y = _current_y;

// Desenhar o ponto inicial e o ponto final
draw_set_color(c_red);
draw_circle(_start_x, _start_y, 4, false);  // Ponto inicial (inimigo)
draw_circle(_target_x, _target_y, 4, false);  // Ponto final (jogador)


