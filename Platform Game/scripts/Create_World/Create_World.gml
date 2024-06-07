// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_World(_first_call, _quantity, _world_pos, _object){
	
	var _cell = 64;
	var _width = room_width / _cell;

	repeat(_width){
		var _parlin_1 = 0;
		
		var _height = irandom(100);
		
		if(_height > 10){
			_parlin_1 = 0;
		} else if(_height < 10){
			_parlin_1 = choose(1, -1);
		}
		
		_noise += _parlin_1;
		
		instance_create_layer((_cell * global.size), room_height / 2 - (_cell * _noise), "Instances", objCollision);
		global.size++;
		
		if(_first_call == 1){
			var _spawn = irandom(_world_pos);
			if(instance_number(_object) < _quantity){
				instance_create_layer((_cell * _spawn), ((room_height / 2) - 200) - (_cell * _noise), "Instances", _object);
			}
		}

		
		if(global.size == _width / 2) && (instance_number(objPlayer) < 1){
			instance_create_layer((_cell * global.size), ((room_height / 2) - 200) - (_cell * _noise), "Instances", objPlayer);
		}
		
	}
}