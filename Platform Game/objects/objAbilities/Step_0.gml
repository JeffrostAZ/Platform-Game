#region

switch(global.ability){
	case 0:
	if(_current_inst != undefined){
		instance_destroy(_current_inst);
	}
	_current_inst = instance_create_depth(objController._pos_x, objController._pos_y, depth, objPolearm);
		
	break;
	
	case 1:
	if(_current_inst != undefined){
		instance_destroy(_current_inst);
	}
	_current_inst = instance_create_depth(objController._pos_x, objController._pos_y, depth, objRifle);
	break;
	
	case 2:
		if(_current_inst != undefined){
			instance_destroy(_current_inst);
		}
		_current_inst = instance_create_depth(objController._pos_x, objController._pos_y, depth, objDrone);
	break;
}
global.ability = -1;
#endregion


