// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_Object_Limit(_x, _y, _obj, _limit){
	if(instance_number(_obj) < _limit){
		instance_create_layer(_x, _y, "Controller", _obj);
	}
}