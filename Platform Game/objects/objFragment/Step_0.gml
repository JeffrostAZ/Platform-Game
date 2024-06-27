_countdown -= 0.01;
image_alpha = _countdown;

if(place_meeting(x, y, objCollision) || place_meeting(x, y, objEnemy_1) || _countdown <= 0){
	instance_destroy();	
}