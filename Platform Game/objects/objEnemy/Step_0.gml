//move_towards_point(objPlayer.x, y, 3);

// Reduz o tempo de contagem do movimento
_countdown--;

// Define a distância até o jogador (ou outro alvo)
var _enemy_dist = point_distance(x, y, objController._pos_x, objController._pos_y);

// Verifica se o inimigo está a uma distância próxima do jogador (300 unidades)
if (_enemy_dist <= 300) {
    // Move em direção ao jogador
    _move_x = sign(objController._pos_x - x);
} else {
    // Se o inimigo não está próximo ao jogador, ronda o ambiente
    if (_countdown <= 0) {
        // Muda aleatoriamente a direção a cada intervalo de tempo (_countdown)
        _move_x = choose(-1, 1);  // Direção aleatória (esquerda ou direita)
        _countdown = 200;         // Reseta o tempo de contagem para o próximo movimento
    }
}

if(_move_x != 0){
	image_xscale = _move_x * -1;
	_idle = choose(1, -1);
} else {
	image_xscale = _idle;
}

// Verifica colisão com as paredes (objCollision)
if (place_meeting(x + _move_x * 2, y, objCollision)) {
    // Inverte a direção se houver colisão
    _move_x = -_move_x;
}


_move_y += _grv;

_shoot_countdown += 1;

#region Create Block System

_pos = point_distance(mouse_x, mouse_y, x, y);

if(point_in_rectangle(mouse_x, mouse_y, x ,y - 64, x + 64, y)){
	if(global.blocks > 0 && _pos > 200){
		if(_count == 1 && mouse_check_button_pressed(mb_left)){
		
			instance_create_layer(x, y - 64, "Collision", objCollision);
			_count = 0;
			
			global.blocks--;
		}
	}
}

#endregion

#region Collision objCollision
// Verifica a colisão com as paredes (horizontal)
if (place_meeting(x + _move_x, y, objCollision)) {
    while (!place_meeting(x + sign(_move_x), y, objCollision)) {
        x += sign(_move_x);
    }
    _move_x = 0;
}

// Verifica a colisão com o chão (vertical)
if (place_meeting(x, y + _move_y, objCollision)) {
    while (!place_meeting(x, y + sign(_move_y), objCollision)) {
        y += sign(_move_y);
    }
    _move_y = 0;
}
#endregion

#region Collision Projetil
if (place_meeting(x, y, objProjectil)) {
	_health -= 5;
	instance_destroy(objProjectil.id);
}

#endregion

#region Shoot

var _dist = point_distance(x, y, objController._pos_x, objController._pos_y);

if(_shoot_countdown > _shot_limit && _dist <= 500){
	var _inst = instance_create_depth(x, y, depth, objFragment);
	var _dir = direction;
	var _point_dir = point_direction(x,y, objController._pos_x, objController._pos_y);
	_dir = _point_dir;
	_inst.direction = _dir;
	_inst.speed = _shoot_spd;
	_shoot_countdown = 0;
}

#endregion

 

//if(place_meeting(x, y, objFragment)){
//	_health -= 10;
//}

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


x += _move_x;
y += _move_y; 