//move_towards_point(objPlayer.x, y, 3);
_move_x = sign(objPlayer.x - x);
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

#region Collision objEnemy
// Verifica a colisão com as paredes (horizontal)
if (place_meeting(x + _move_x, y, objEnemy)) {
    while (!place_meeting(x + sign(_move_x), y, objEnemy)) {
        x += sign(_move_x);
    }
    _move_x = 0;
}

#endregion

#region Collision objDebris

if(place_meeting(x, y, objDebris)){
	audio_play_sound(sndShoot, 1, 0);
	_health -= objPlayer._atk;
	instance_destroy(objDebris.id);
	if(_health <= 0){
		global.exp += 10;
		instance_destroy();	
	}
}

#endregion

#region Shoot

if(_shoot_countdown > _shot_limit){
	var _inst = instance_create_depth(x, y, depth, objFragment);
	var _dir = direction;
	var _point_dir = point_direction(x,y, objPlayer.x, objPlayer.y);
	_dir = _point_dir;
	_inst.direction = _dir;
	_inst.speed = _shoot_spd;
	_shoot_countdown = 0;
}

#endregion


x += _move_x;
y += _move_y;