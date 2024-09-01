// Evento Step do objPlayer

var _key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _key_up = keyboard_check_pressed(ord("W"));
var _key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

var _move = _key_right - _key_left;

_move_x = _move * _agi;

_move_y += (_grv - global.jumping);

_shoot_countdown -= 1;

var _dir = sign(mouse_x - x);
image_xscale = _dir;

#region Jumping
if (place_meeting(x, y + 1, objCollision) && _key_up && global.jumping < 0.5) {
    _move_y = -15;
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

// Verifica a colisão com o chão e o teto (vertical)
if (place_meeting(x, y + _move_y, objCollision)) {
    while (!place_meeting(x, y + sign(_move_y), objCollision)) {
        y += sign(_move_y);
    }
    _move_y = 0;
}
#endregion

#region Animation
 //Comentado para focar na lógica de movimento e colisão
 if (_key_left) {
     _animation -= 0.2;
     _idle = -1;
 } else if (_key_right) {
     _animation += 0.2;
     _idle = 1;
 } else {
     _animation = 4;
	 _idle = sign(mouse_x - x);
 }
#endregion

#region Shared Attributes
// SHARED VALUES
objController._pos_x = x;
objController._pos_y = y;

// UPDATE VALUES
_health = objController._health;
_max_health = objController._max_health_status + objController._max_health_item_status;
_energy = objController._energy;
_max_energy = objController._max_energy;
_str = objController._str + objController._str_item_status;
_agi = objController._agi + objController._agi_item_status;
_luk = objController._luk + objController._luk_item_status;
_jump = objController._jump;
_def = objController._def + objController._def_item_status;
_atk = objController._atk + objController._atk_item_status;
_shoot_spd = objController._shoot_spd;
_shoot_frequency = objController._shoot_frequency + objController._shoot_frequency_item_status;
#endregion

#region Death System
if (place_meeting(x, y, objFragment)) {
    objController._health -= 0;
}

if (_health <= 0) {
    game_restart();
}
#endregion

#region Spawn System

switch(global.room_change){

	case 1: 
		x = objPreviewRoom.x + 128;
		y = objPreviewRoom.y + 64;
		global.room_change = 0;
		
		break;
		
	case 2:
		x = objNextRoom.x - 128;
		y = objNextRoom.y + 64;
		global.room_change = 0;
		
		break;
}
#endregion

// Atualiza a posição do jogador
x += _move_x;
y += _move_y;
