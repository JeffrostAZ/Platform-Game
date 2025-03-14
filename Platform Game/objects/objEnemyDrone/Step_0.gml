#region Atacar e Rondar

if (_follow == -1) {
    // Atualiza o contador de tempo para movimento
    _time_since_last_move++;

    // Distância até o jogador
    var _player_dist = point_distance(x, y, _player._pos_x, _player._pos_y);

    // Se o jogador estiver perto, o inimigo deve seguir lentamente
    if (_player_dist <= 300) {  // 300 é o alcance de detecção
        // Move-se em direção ao jogador suavemente
        move_towards_point(_player._pos_x, _player._pos_y, 2); // Mova a uma velocidade de 2 pixels por step
        _state = "atacar";
    } else {
        // Se o jogador estiver fora de alcance, entra no estado de "rondar"
        _state = "rondar";
    }

    // Comportamento de rondar: o inimigo se move ao redor de uma região circular
    if (_state == "rondar") {
        if (_time_since_last_move >= 100) {  // Muda de direção a cada 100 steps

            // Escolhe um ângulo aleatório e uma distância para rondar
            var _rondar_radius = 100;  // Raio de movimentação da patrulha (ajustável)
            var _rondar_angle = irandom_range(0, 360);  // Ângulo aleatório para rondar
            var _rondar_distance = irandom_range(50, _rondar_radius);  // Distância aleatória dentro do raio

            // Define a nova posição para patrulhar com base no ângulo e na distância
            var _pos_x = lengthdir_x(_rondar_distance, _rondar_angle);
            var _pos_y = lengthdir_y(_rondar_distance, _rondar_angle);

            // Move-se em torno de um ponto fixo (ajuste conforme necessário)
            var _fixed_x = _fixed_pos_x;  // O inimigo ronda sua posição atual
            var _fixed_y = _fixed_pos_y;  // O inimigo ronda sua posição atual

            move_towards_point(_fixed_x + _pos_x, _fixed_y + _pos_y, 1); // Move-se lentamente para a posição calculada
            _time_since_last_move = 0;  // Reseta o contador de movimento
        }
    }
} 


#endregion

if(place_meeting(x, y, objProjectil)){
	_health -= 5;	
}

if(_health <= 0){
	global.exp += 10 * (global.level + 2);
	global.coin += 5 * global.level;
	
	var _ammo = irandom(100);
	
	if(_ammo <= 10){
		var _inst = instance_create_layer(x, y, "Controller", objAmmo);
		_inst.y = y - 64;
	}
	
	instance_create_depth(x, y, depth, objTrash);
	
	instance_destroy();
	

}