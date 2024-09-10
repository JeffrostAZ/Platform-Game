// Definir os parâmetros da corda
var _segments = 10;  // Número de segmentos da corda
var _rope_length = 100;  // Comprimento máximo da corda
var _segment_length = _rope_length / _segments;  // Comprimento de cada segmento
var _gravity = 0.3;  // Força da gravidade

// Armazenar a posição de cada segmento da corda
var _rope_points = array_create(_segments);

// Ponto inicial (sempre no jogador)
var _start_x = objController._pos_x;
var _start_y = objController._pos_y;

// Inicializar os pontos da corda
for (var _i = 0; _i < _segments; _i++) {
    _rope_points[_i] = {x: lerp(_start_x, _end_x, _i / _segments), y: lerp(_start_y, _end_y, _i / _segments)};
}

// Evento Step: Simular a física da corda
for (var _i = 1; _i < _segments; _i++) {
    var _prev_x = _rope_points[_i - 1].x;
    var _prev_y = _rope_points[_i - 1].y;
    
    // Aplicar gravidade no ponto
    _rope_points[_i].y += _gravity;

    // Cálculo da distância atual entre o ponto e o ponto anterior
    var _dx = _rope_points[_i].x - _prev_x;
    var _dy = _rope_points[_i].y - _prev_y;
    var _distance = sqrt(sqr(_dx) + sqr(_dy));

    // Restringir o comprimento do segmento
    if (_distance > _segment_length) {
        var _angle = point_direction(_prev_x, _prev_y, _rope_points[_i].x, _rope_points[_i].y);
        _rope_points[_i].x = _prev_x + lengthdir_x(_segment_length, _angle);
        _rope_points[_i].y = _prev_y + lengthdir_y(_segment_length, _angle);
    }
}

// Evento Draw: Desenhar a corda
draw_set_color(c_black);
for (var _i = 1; _i < _segments; _i++) {
    draw_line(_rope_points[_i - 1].x, _rope_points[_i - 1].y, _rope_points[_i].x, _rope_points[_i].y);
}