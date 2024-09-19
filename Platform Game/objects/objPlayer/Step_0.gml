// Evento Step do objPlayer

var _key_right = keyboard_check(ord("D"));
var _key_left = keyboard_check(ord("A"));
var _key_up = keyboard_check_pressed(ord("W"));

var _move = _key_right - _key_left;

_move_x = _move * _agi;
_point_view = _move;

_move_y += (_grv - global.jumping);

_shoot_countdown--;

var _dir = sign(mouse_x - x);
image_xscale = _dir;

#region Jumping
if (place_meeting(x, y + 1, objCollision) && _key_up && global.jumping < 0.5) {
    _move_y = -15 - _jump;
	
	objController._jump = 0;
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
_item_level = objController._item_level;
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

#region Tiro em Ângulo

var _right = keyboard_check(vk_right);
var _left = keyboard_check(vk_left);
var _up = keyboard_check(vk_up);
var _down = keyboard_check(vk_down);


if(_right){
	_move_angle_x++;
}

if(_left){
	_move_angle_x--;
}

if(_up){
	_move_angle_y--;	
}

if(_down){
	_move_angle_y++;	
}


if(keyboard_check(vk_space)){
	_launch_power += 0.01;
}
if(keyboard_check(vk_control)){
	if(_launch_power > 0){
		_launch_power -= 0.01;
	}
}

//x += _move_x;
//y += _move_y;

#endregion

// Atualiza a posição do jogador
x += _move_x;
y += _move_y;
