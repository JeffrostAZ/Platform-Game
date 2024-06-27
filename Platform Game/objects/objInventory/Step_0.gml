var _key_1 = keyboard_check_pressed(ord("1"));
var _key_2 = keyboard_check_pressed(ord("2"));
var _key_3 = keyboard_check_pressed(ord("3"));
var _key_4 = keyboard_check_pressed(ord("4"));
var _key_5 = keyboard_check_pressed(ord("5"));
var _next_item = keyboard_check_pressed(ord("E"));
var _preview_item = keyboard_check_pressed(ord("Q"));

if(_hotbar_item > 4){
	_hotbar_item = 0;	
} else if(_hotbar_item < 0){
	_hotbar_item = 4;	
}

if(_key_1){
	_hotbar_item = 0;
} else if(_key_2){
	_hotbar_item = 1;
} else if(_key_3){
	_hotbar_item = 2;
} else if(_key_4){
	_hotbar_item = 3;	
}else if(_key_5){
	_hotbar_item = 4;	
}

if(_next_item){
	_hotbar_item++;
} else if(_preview_item){
	_hotbar_item--;
}

if(mouse_wheel_up()){
	_hotbar_item++;
}else if(mouse_wheel_down()){
	_hotbar_item--;
}