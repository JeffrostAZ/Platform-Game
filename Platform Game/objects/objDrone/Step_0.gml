#region
// Atualiza o contador de tempo para disparos
_time_since_last_shot++;
_time_since_last_move++;

// Encontra o inimigo mais próximo
var _nearest_enemy = noone;
var _nearest_dist = 10000;  // Define uma distância inicial grande

with (objEnemy) {  // Substitua obj_enemy pelo nome do seu objeto de inimigo
    var _dist = point_distance(other.x, other.y, x, y);
    if (_dist < _nearest_dist) {
        _nearest_dist = _dist;
        _nearest_enemy = id;
    }
}

// Verifica se há um inimigo próximo para entrar no estado "atacar"
if (_nearest_enemy != noone && _nearest_dist < 500) {  // 300 é a distância de detecção do inimigo
    _state = "atacar";
    _target = _nearest_enemy;
} else {
    _state = "rondar";
}

// Comportamento baseado no estado atual
if (_state == "rondar") {
	if(_time_since_last_move >= 50){
		var _pos_x = irandom_range(-50, 50);
		var _pos_y = irandom_range(100, 200);
		
		move_towards_point(objController._pos_x + _pos_x, objController._pos_y - _pos_y, 1);
		
		_time_since_last_move = 0;
	}
	
	
	// // Atualiza o path dinâmico ao redor do personagem principal em intervalos regulares
    //_path_update_timer++;
	
	//if(_path_update_timer >= _path_update_interval){
    //// Atualiza o path dinâmico ao redor do personagem principal
	//	_create_random_path(_path);
	//	_path_update_timer = 0; // Reseta o contador de tempo para atualizar o path
	//}
    //// Move o drone ao longo do path
    //path_start(_path, path_speed, path_action_restart, true);
    
} else if (_state == "atacar" && _target != noone) {
    // Para o movimento do path
    path_end();

    // Gira em direção ao inimigo
    var _angle_to_target = point_direction(x, y, _target.x, _target.y);
    image_angle = _angle_to_target;
    
    // Dispara no inimigo
    if (_time_since_last_shot > _shoot_interval) {
        // Cria o projétil (substitua obj_bullet pelo nome do seu objeto de projétil)
        var _bullet = instance_create_layer(x, y, "Instances", objProjectil);
        _bullet.direction = _angle_to_target;
        _bullet.speed = 100;
        
        // Reseta o contador de disparo
        _time_since_last_shot = 0;
    }
    
    // Volta ao estado "rondar" se o inimigo for destruído
    if (!instance_exists(_target)) {
        _state = "rondar";
        _target = noone;
        path_start(_path, path_speed, path_action_restart, true);  // Reinicia o path ao redor do personagem principal
    }
}
#endregion