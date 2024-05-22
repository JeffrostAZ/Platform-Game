instance_create_depth(x, y, depth, objAbilities);


_grv = 0.9;

_sprite_enemy = sprEnemyRed;

_health = global.level * (global.exp / 100) + 10;

_move_x = 0;
_move_y = 0;

_speed = 2 + (global.level / 10);

_shoot_countdown = 0;
_shot_limit = 75;
_shoot_spd = 5;

global.enemy = [
	["Red", 0, c_red, sprEnemyRed],
	["Blue", 1, c_blue, sprEnemyBlue],
	["Yellow", 2, c_yellow, sprEnemyYellow],
	["Green", 3, c_green, sprEnemyGreen],
	["White", 4, c_white, sprEnemyRedWhite],
	["Black", 5, c_black, sprEnemyRedBlack]
];
var _find = array_length(global.enemy) - 1;
var _enemy = irandom_range(0, _find);

switch(_enemy){
		case 0:
		_sprite_enemy = sprEnemyRed;
		_shoot_spd = 15;
		_speed = 5;
		_shot_limit = 35;
	break;
		case 1:
		_sprite_enemy = sprEnemyBlue;
		_shoot_spd = 10;
		_speed = 3;
		_shot_limit = 50;
	break;
		case 2:
		_sprite_enemy = sprEnemyYellow;
		_shoot_spd = 5;
		_speed = 5;
		_shot_limit = 75;
	break;
		case 3:
		_sprite_enemy = sprEnemyGreen;
		_shoot_spd = 20;
		_speed = 3;
		_shot_limit = 60;
	break;
		case 4:
		_sprite_enemy = sprEnemyRedWhite;
		_shoot_spd = 10;
		_speed = 8;
		_shot_limit = 25;
	break;
		case 5:
		_sprite_enemy = sprEnemyRedBlack;
		_shoot_spd = 25;
		_speed = 15;
		_shot_limit = 20;
	break;
}

