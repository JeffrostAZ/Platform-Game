// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Save(){
	var _collisionCount = instance_number(objCollision);
	
		show_message(_collisionCount);
	
	var _rootStruct = {
		collision_count : _collisionCount,
		collision : array_create(_collisionCount)
	};
	for (var _i = 0; _i < _collisionCount; _i++) {
	   var _collision = instance_find(objCollision, _i);
	   
	   _rootStruct.collision[_i] = {
			_x : _collision.x,
			_y : _collision.y
	   }
	}
	var _json = json_stringify(_rootStruct);
	
	SaveString(_json, "save");
}

function Load(){
	
	if(!file_exists("save")) return;
	
	var _json = LoadString("save");
	var _rootStruct = json_parse(_json);
	
	var _collision_count = _rootStruct.collision_count;
	var _collision = _rootStruct.collision;
	
	show_message(_collision_count);
	
	for(var _i = 0; _i < _collision_count; _i++){
		
		var _collisionData = _collision[_i];
		
		var _inst = instance_create_layer(_collisionData._x, _collisionData._y, "Collision", objCollision);
		
	}
}