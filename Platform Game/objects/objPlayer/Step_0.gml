var _key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
var _key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var _key_up = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W"));
var _key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

//var _str = global.status_buttons[0][1];
//var _agi = global.status_buttons[1][1];
//var _luk = global.status_buttons[2][1];

var _move = _key_right - _key_left;

_move_x = _move * _agi;

_move_y += _grv;

if(place_meeting(x, y+1, objCollision) && _key_up){
	_move_y = _jump;
}
	
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

if(mouse_check_button(mb_left)){
	var _inst = instance_create_depth(x, y, depth, objDebris);
	var _dir = direction;
	var _point_dir = point_direction(x,y, mouse_x, mouse_y);
	_dir = _point_dir;
	_inst._shoot = true;
	_inst.direction = _dir;
	_inst.speed = _shoot_spd;
}

#endregion

#region Menu

if(keyboard_check_pressed(vk_escape)){
	objItems._item_menu *= -1;	
}

#endregion

x += _move_x;
y += _move_y;