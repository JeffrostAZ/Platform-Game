// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_Spawn(_x, _y){
	
	var _enemy = instance_create_layer(_x, _y, "Collision", objEnemy_1);  // Cria o inimigo na borda da room
	
	if (global.state == "rondar") {
	    // Atualiza o contador de tempo para disparos
	    _time_since_last_shot++;
	    _time_since_last_move++;

	    // Encontra o inimigo mais próximo que não está sendo atacado
	    var _nearest_enemy = noone;
	    var _nearest_dist = 10000;  // Define uma distância inicial grande

	    with (objPlayer) {  // Substitua objEnemy pelo nome do seu objeto de inimigo
	        if (!other._being_attacked) {
	            var _dist_player = point_distance(other.x, other.y, x, y);
	            if (_dist_player < _nearest_dist) {
	                _nearest_dist = _dist_player;
	                _nearest_enemy = id;
	            }
	        }
	    }


	    // Verifica se há um inimigo próximo para entrar no estado "atacar"
	    if (_nearest_enemy != noone && _nearest_dist < 500) {  // 500 é a distância de detecção do inimigo
	        global.state = "atacar";
	        _target = _nearest_enemy;
	    } else {
	        global.state = "rondar";
	    }
	}

	    // Comportamento baseado no estado atual
	if (global.state == "atacar" && _target != noone) {
		_grv = 0;
	
	    var _pos_x = irandom_range(-600, 600);
	    var _pos_y = irandom_range(100, 200);

	    move_towards_point(objController._pos_x + _pos_x, objController._pos_y - _pos_y, 1);

	    // Gira em direção ao inimigo
	    var _angle_to_target = point_direction(x, y, _target.x, _target.y);
	    image_angle = _angle_to_target;

	    // Dispara no inimigo
	    if (_time_since_last_shot > _shoot_interval) && (global.drone_bullet > 0) {
	        // Cria o projétil (substitua objProjectil pelo nome do seu objeto de projétil)
	        var _bullet = instance_create_layer(x, y, "Collision", objProjectil);
	        _bullet.direction = _angle_to_target;
	        _bullet.speed = 100;

			global.drone_bullet--;

	        // Reseta o contador de disparo
	        _time_since_last_shot = 0;
	    }

	    // Volta ao estado "rondar" se o inimigo for destruído
	    if (!instance_exists(_target)) {
	        global.state = "rondar";
	        _target = noone;
	    }
	}
	//}


	if (_follow == 1) {
	    if ((x > objController._pos_x - 32) && (x < objController._pos_x + 32)) {
	        y = objController._pos_y + 50;
	        x = objController._pos_x;
	        global.jumping = 0.87;
	        _speed = 0;
	    } else {
	        _speed = 1;
	        move_towards_point(objController._pos_x, objController._pos_y + 64, _speed);
	    }
	} else {
	    global.jumping = 0;
	}

}
