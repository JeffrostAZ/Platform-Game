// Evento Step do objDrone

var _key_fly = keyboard_check(vk_space);

#region Atacar e Rondar
if (_follow == -1) {
    // Atualiza o contador de tempo para disparos
    _time_since_last_shot++;
    _time_since_last_move++;

    // Encontra o inimigo mais próximo que não está sendo atacado
    var _nearest_enemy = noone;
    var _nearest_dist = 10000;  // Define uma distância inicial grande

    with (objEnemy_1) {  // Substitua objEnemy pelo nome do seu objeto de inimigo
        if (!other._being_attacked) {
            var _dist = point_distance(other.x, other.y, x, y);
            if (_dist < _nearest_dist) {
                _nearest_dist = _dist;
                _nearest_enemy = id;
            }
        }
    }
	
	with (objEnemyDrone) {  // Substitua objEnemy pelo nome do seu objeto de inimigo
        if (!other._being_attacked) {
            var _dist = point_distance(other.x, other.y, x, y);
            if (_dist < _nearest_dist) {
                _nearest_dist = _dist;
                _nearest_enemy = id;
            }
        }
    }

    if (point_distance(objController._pos_x, objController._pos_y, x, y) > 800) {
        _move_init_x = 10;
        _move_init_y = 10;
        _move_end_x = 10;
        _move_end_y = 10;
        speed = 10;
    } else {
        _move_init_x = -600;
        _move_init_y = 100;
        _move_end_x = 600;
        _move_end_y = 200;
    }

    // Verifica se há um inimigo próximo para entrar no estado "atacar"
    if (_nearest_enemy != noone && _nearest_dist < 500) {  // 500 é a distância de detecção do inimigo
        _state = "atacar";
        _target = _nearest_enemy;
    } else {
        _state = "rondar";
    }

    // Comportamento baseado no estado atual
    if (_state == "rondar") {
        if (_time_since_last_move >= 100) {
            var _pos_x = irandom_range(_move_init_x, _move_init_y);
            var _pos_y = irandom_range(_move_init_y, _move_end_y);

            move_towards_point(objController._pos_x + _pos_x, objController._pos_y - _pos_y, 1);

            _time_since_last_move = 0;
        }
    } else if (_state == "atacar" && _target != noone) {
        var _pos_x = irandom_range(-600, 600);
        var _pos_y = irandom_range(100, 200);

        move_towards_point(objController._pos_x + _pos_x, objController._pos_y - _pos_y, 1);

        // Gira em direção ao inimigo
        var _angle_to_target = point_direction(x, y, _target.x, _target.y);
        image_angle = _angle_to_target;

        // Dispara no inimigo
        if (_time_since_last_shot > _shoot_interval) && (global.drone_bullet > 0) {
            // Cria o projétil (substitua objProjectil pelo nome do seu objeto de projétil)
            var _bullet = instance_create_layer(x, y, "Instances", objProjectil);
            _bullet.direction = _angle_to_target;
            _bullet.speed = 100;

			global.drone_bullet--;

            // Reseta o contador de disparo
            _time_since_last_shot = 0;
        }

        // Volta ao estado "rondar" se o inimigo for destruído
        if (!instance_exists(_target)) {
            _state = "rondar";
            _target = noone;
        }
    }
}
#endregion

if (_follow == 1) {
    if ((x > objController._pos_x - 32) && (x < objController._pos_x + 32)) {
        y = objController._pos_y + 50;
        x = objController._pos_x;
        global.jumping = 0.87;
        _speed = 0;
        if (_key_fly) {
            objPlayer._move_y -= 0.1;
        }
    } else {
        _speed = 5;
        move_towards_point(objController._pos_x, objController._pos_y + 64, _speed);
    }
} else {
    global.jumping = 0;
}

if (keyboard_check_pressed(vk_control)) {
    _follow *= -1;
    if (_follow == -1) {
        global.jumping = 0;
    }
}
