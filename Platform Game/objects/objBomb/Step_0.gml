_move_y += 0.3;

if(place_meeting(x, y + sign(_move_y), objCollision)){
	repeat(100){
		var _rand = irandom_range(0, 359);
		var _dir = _rand;
		var _speed = irandom_range(10, 15);
		var _inst = instance_create_layer(x, y, "Collision", objFragment);
		_inst.direction = _dir;
		_inst.speed = _speed;
	}
	instance_destroy(id); 
}



y += _move_y;