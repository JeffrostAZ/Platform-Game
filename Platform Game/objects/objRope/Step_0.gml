with(objEnemyDrone){
	if(place_meeting(x, y, objProjectilTest)){
	_was_hited = 1;
	}

	if(_was_hited == 1){
		objRope._end_x = x;
		objRope._end_y = y;
	}	
}