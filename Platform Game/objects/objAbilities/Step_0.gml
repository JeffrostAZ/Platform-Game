#region Abilities

switch(global.ability){
	case 0:
	//if(_current_inst != undefined){
	//	instance_destroy(_current_inst);
	//}
	//_current_inst = instance_create_depth(objController._pos_x, objController._pos_y, depth, objPolearm);
		
	break;
	
	case 1:
	//if(_current_inst != undefined){
	//	instance_destroy(_current_inst);
	//}
	//_current_inst = instance_create_depth(objController._pos_x, objController._pos_y, depth, objRifle);
	break;
	
	case 2:
		//if(_current_inst != undefined){
		//	instance_destroy(_current_inst);
		//}
		
		//Create_Object_Limit(objController._pos_x, objController._pos_y, objDrone, 1);

	break;
}
global.ability = -1;

#endregion

#region Control


if(keyboard_check_pressed(ord("1"))){
	global.ability = 0;
}


if(keyboard_check_pressed(ord("2"))){
	global.ability = 1;	
}

if(keyboard_check_pressed(ord("3"))){
	global.ability = 2;	
}
	
#endregion

