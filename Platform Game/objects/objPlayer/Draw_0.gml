draw_self();

#region Shield

if(global.ability == 1){
	// Obtém o número total de inimigos do tipo objEnemyDrone
	var _numb_enemy = instance_number(objEnemyDrone);

	// Define a força de expulsão (aumente ou diminua conforme necessário)
	var _expel_force = 5;

	// Itera sobre todos os inimigos
	with (objEnemyDrone) {
	    // Verifica se o inimigo está dentro da área circular
	    if (point_in_circle(x, y, other.x, other.y, 100)) {
	        // Se estiver, para de seguir e zera a velocidade
	        _follow = 0;
	        speed = 0;

	        // Calcula a direção do inimigo em relação ao centro do círculo
	        var _dir = point_direction(x, y, other.x, other.y);

	        // Mova o inimigo na direção oposta (expulsão)
	        var _distance = point_distance(x, y, other.x, other.y);

	        if (_distance < 100) {
	            // Calcula as componentes X e Y para "empurrar" o inimigo para fora do círculo
	            x -= lengthdir_x(_expel_force, _dir);
	            y -= lengthdir_y(_expel_force, _dir);
	        }
	    } else {
	        // Caso contrário, mantém o comportamento de seguir o jogador
	        _follow = -1;
	    }
	}

	// Desenha o círculo de escudo ao redor do jogador
	draw_set_color(c_white);
	draw_set_alpha(0.5);
	draw_circle(x, y, 100, false); // Desenha o círculo como uma linha (use true se quiser preenchido)
	draw_set_alpha(1);
}
#endregion

#region Teste angulo
// Variáveis de inicialização (você pode alterar esses valores)

if(global.ability == 2){
	
	var _start_x = x; // Ponto inicial X do lançamento
	var _start_y = y; // Ponto inicial Y do lançamento
	var _mouse_aim = mouse_x / 10;
	var _velocity = 10 + (_mouse_aim / 10); // Velocidade inicial do lançamento
	var _angle = 45 + _move_angle_y; // Ângulo de lançamento em graus
	var _gravity_force = 0.3; // Gravidade aplicada

	if(_angle >= 90){
		_angle = 135 - _move_angle_y
	}
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
	var _enemy = objEnemyDrone;

	if(point_in_circle(_enemy.x, _enemy.y, _cur_x, _cur_y, 50) && _shoot_countdown <= 0){
		var _inst = instance_create_depth(x, y, depth, objProjectilTest);
		_inst.direction = _angle;
		_inst._gravity = _gravity_force;
		_inst.speed = _velocity + 0.3;
		_shoot_countdown = 100;
	}
}


#endregion


