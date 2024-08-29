//move_towards_point(objPlayer.x, y, 3);
_move_x = sign(objController._pos_x - x);

_move_y += _grv;

_shoot_countdown += 1;

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
	_health -= objController._atk;
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
	
	instance_destroy();
}

x += _move_x;
y += _move_y; 