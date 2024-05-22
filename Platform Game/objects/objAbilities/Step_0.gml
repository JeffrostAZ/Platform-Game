x = objPlayer.x;
y = objPlayer.y;


// Get the position of the player
var _player_x = objPlayer.x;
var _player_y = objPlayer.y;

// Get the position of the mouse
var _mouse_x_pos = mouse_x;
var _mouse_y_pos = mouse_y;

// Calculate the angle from the player to the mouse
_angle_to_mouse = point_direction(_player_x, _player_y, _mouse_x_pos, _mouse_y_pos);

//if(object_exists(objEnemy)){
//	if(place_meeting(x, y, objEnemy)){
//		objEnemy.id._health -= 5;	
//	}
//}