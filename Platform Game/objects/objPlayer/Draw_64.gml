#region Teste angulo
// Variáveis de inicialização (você pode alterar esses valores)
var _start_x = x; // Ponto inicial X do lançamento
var _start_y = 800; // Ponto inicial Y do lançamento
var _mouse_aim = mouse_x / 10;
var _velocity = 10 + (_mouse_aim / 10); // Velocidade inicial do lançamento
var _angle = 45 + _move_angle_y; // Ângulo de lançamento em graus
var _gravity_force = 0.3; // Gravidade aplicada

// Converte o ângulo para radianos para usar em funções trigonométricas
var _rad_angle = degtorad(_angle);



// Calcula as componentes X e Y da velocidade
var _velocity_x = _velocity * cos(_rad_angle);
var _velocity_y = _velocity * sin(_rad_angle);

// Parâmetros de tempo
var _time_step = 1; // Intervalo de tempo entre cada ponto desenhado
var _max_time = 50; // Tempo máximo (afeta o comprimento da parábola)

// Inicializa variáveis para a posição
var _t = 0;
var _current_x, _current_y;

// Desenha a parábola
draw_set_color(c_orange);
while (_t < _max_time) {
    // Calcula a posição atual
    _current_x = _start_x + _velocity_x * _t;
    _current_y = _start_y - (_velocity_y * _t - 0.5 * _gravity_force * _t * _t);
    
    // Desenha um ponto na posição calculada
    draw_circle(_current_x, _current_y, 2, false);
    
    // Incrementa o tempo
    _t += _time_step;
}

// Opcional: desenhar o ponto inicial e final
draw_set_color(c_red);

draw_circle(_start_x, _start_y, 4, false); // Ponto inicial
draw_circle(_current_x, _current_y, 4, false); // Ponto final

_cur_x = _current_x;
_cur_y = _current_y;
#endregion

if(keyboard_check_pressed(ord("C"))){
	var _inst = instance_create_depth(x, y - 54, depth, objProjectilTest);
	_inst.direction = _angle;
	_inst._gravity = _gravity_force;
	_inst.speed = _velocity + 0.3;
}


