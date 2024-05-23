var _key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _key_up = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
var _key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

var _move = _key_right - _key_left;

_move_x = _move * _agi;

_move_y += _grv;

_shoot_countdown -= 1;

#region Jumping

if(place_meeting(x, y+1, objCollision) && _key_up){
	_move_y = _jump * -1;
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

#region Shoot

if(mouse_check_button(mb_left) && _shoot_countdown <= _shoot_frequency){
	var _inst = instance_create_depth(x, y, depth, objDebris);
	var _dir = direction;
	var _point_dir = point_direction(x,y, mouse_x, mouse_y);
	_dir = _point_dir;
	_inst._shoot = true;
	_inst.direction = _dir;
	_inst.speed = _shoot_spd;
	_shoot_countdown = 100;
}

#endregion

#region Animation

if(_key_left){
	_animation -= 0.2;
	_idle = _move_x;
} else if(_key_right){
	_animation += 0.2;
	_idle = _move_x;
} else {
	_animation = 0;
}

#endregion

#region Shared Atributes
//SHARED VALUES
objController._pos_x = x;
objController._pos_y = y;

//UPDATE VALUES
_health = objController._health;
_max_health = objController._max_health;
_energy = objController._energy;
_max_energy = objController._max_energy;
_str = objController._str;
_agi = objController._agi;
_luk = objController._luk;
_jump = objController._jump;
_def = objController._def;
_atk = objController._atk;
_shoot_spd = objController._shoot_spd;
_shoot_frequency = objController._shoot_frequency;
#endregion

#region Jetpack


if(keyboard_check(vk_space) && _rocket_fuel > 10){
	_move_y -= 1.5;	
	
	repeat(10){
		var _inst = instance_create_depth(x, y, depth, objFragment);
		var _dir = irandom_range(260, 280);
		_inst.direction = _dir;
		_inst.speed = 5;
	}
	
	_rocket_fuel -= 1;
}

#endregion


x += _move_x;
y += _move_y;