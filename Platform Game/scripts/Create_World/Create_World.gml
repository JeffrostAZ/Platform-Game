// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Create_World(){
	
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
		
		var _inst = instance_create_depth((_cell * _size), room_height / 2 - (_cell * _noise), depth, objCollision);
		_size++;
		
		
		if(_size == _width / 2){
			instance_create_layer((_cell * _size), ((room_height / 2) - 100) - (_cell * _noise), "Instances", objPlayer);	
		}
		
	}
}