draw_set_color(c_white);


#region City

//meio
if(point_in_rectangle(mouse_x, mouse_y, room_width / 2 - 64, room_height / 2 - 64, room_width / 2 + 64, room_height / 2 + 64)){
	draw_rectangle(room_width / 2 - 64, room_height / 2 - 64, room_width / 2 + 64, room_height / 2 + 64, 0);
	if(mouse_check_button_pressed(mb_left)){
		_centro++;
		_building_selected = 1;
	}
} else {
	draw_rectangle(room_width / 2 - 64, room_height / 2 - 64, room_width / 2 + 64, room_height / 2 + 64, 1);		
}


//meio esqueda
if(point_in_rectangle(mouse_x, mouse_y, 128, room_height / 2 - 64, 128 + 128, room_height / 2 + 64)){
	draw_rectangle(128, room_height / 2 - 64, 128 + 128, room_height / 2 + 64, 0);	
	if(mouse_check_button_pressed(mb_left)){
		_centro_esquedo++;
		_building_selected = 2;
	}
} else {
	draw_rectangle(128, room_height / 2 - 64, 128 + 128, room_height / 2 + 64, 1);		
}


//meio direita
if(point_in_rectangle(mouse_x, mouse_y, room_width - (128 + 128), room_height / 2 - 64, room_width - 128, room_height / 2 + 64)){
	draw_rectangle(room_width - (128 + 128), room_height / 2 - 64, room_width - 128, room_height / 2 + 64, 0);
	if(mouse_check_button_pressed(mb_left)){
		_centro_direito++;
		_building_selected = 3;
	}
} else {
	draw_rectangle(room_width - (128 + 128), room_height / 2 - 64, room_width - 128, room_height / 2 + 64, 1);		
}


//cima esquerda
if(point_in_rectangle(mouse_x, mouse_y, (room_width / 2) - 521, 64, (room_width / 2) - (512 - 128), 128 + 64)){
	draw_rectangle((room_width / 2) - 512, 64, (room_width / 2) - (512 - 128), 128 + 64, 0);	
	if(mouse_check_button_pressed(mb_left)){
		_topo_esquedo++;
		_building_selected = 4;
	}
} else {
	draw_rectangle((room_width / 2) - 512, 64, (room_width / 2) - (512 - 128), 128 + 64, 1);		
}


//baixo esquerda
if(point_in_rectangle(mouse_x, mouse_y, (room_width / 2) - 521,room_height - (128 + 64), (room_width / 2) - (512 - 128),room_height - 64)){
	draw_rectangle((room_width / 2) - 512,room_height - (128 + 64), (room_width / 2) - (512 - 128),room_height - 64, 0);	
	if(mouse_check_button_pressed(mb_left)){
		_base_esquerdo++;
		_building_selected = 5;
	}
} else {
	draw_rectangle((room_width / 2) - 512,room_height - (128 + 64), (room_width / 2) - (512 - 128),room_height - 64, 1);		
}


//cima direita
if(point_in_rectangle(mouse_x, mouse_y, (room_width / 2) + (512 - 128), 64, (room_width / 2) + 512, 128 + 64)){
	draw_rectangle((room_width / 2) + (512 - 128), 64, (room_width / 2) + 512, 128 + 64, 0);
	if(mouse_check_button_pressed(mb_left)){
		_topo_direito++;
		_building_selected = 6;
	}
} else {
	draw_rectangle((room_width / 2) + (512 - 128), 64, (room_width / 2) + 512, 128 + 64, 1);
}


//baixo direita
if(point_in_rectangle(mouse_x, mouse_y, (room_width / 2) + (512 - 128), room_height - (128 + 64), (room_width / 2) + 512, room_height - 64)){
	draw_rectangle((room_width / 2) + (512 - 128), room_height - (128 + 64), (room_width / 2) + 512, room_height - 64, 0);
	if(mouse_check_button_pressed(mb_left)){
		_base_direito++;
		_building_selected = 7;
	}
} else {
	draw_rectangle((room_width / 2) + (512 - 128), room_height - (128 + 64), (room_width / 2) + 512, room_height - 64, 1);
}


	
#endregion

#region Select
if(_centro > 0){
	draw_sprite(building_1, 0, room_width / 2, room_height / 2);
	draw_text(room_width / 2 - 64, room_height / 2 + 64, "Level: " + string(_centro));
}

if(_centro_direito > 0){
	draw_sprite(building_3, 0,room_width - (128 + 128) + 64, room_height / 2);
	draw_text(room_width - (128 + 128), room_height / 2 + 64, "Level: " + string(_centro_direito));
}


if(_centro_esquedo > 0){
	draw_sprite(building_2, 0, 128 + 64, room_height / 2 - 46);
	draw_text(128, room_height / 2 + 64, "Level: " + string(_centro_esquedo));
}


if(_topo_direito > 0){
	draw_sprite(building_4, 0, (room_width / 2) + (512 - 128) + 64, 64 + 32);
	draw_text((room_width / 2) + (512 - 128), 128 + 64, "Level: " + string(_topo_direito));
}


if(_topo_esquedo > 0){
	draw_sprite(building_1, 0, room_width / 2, room_height / 2);
	draw_text((room_width / 2) - 512, 128 + 64, "Level: " + string(_topo_esquedo));
}


if(_base_direito > 0){
	draw_sprite(building_1, 0, room_width / 2, room_height / 2);
	draw_text((room_width / 2) + (512 - 128), room_height - (128 + 64) + 128, "Level: " + string(_base_direito));
}


if(_base_esquerdo > 0){
	draw_sprite(building_1, 0, room_width / 2, room_height / 2);
	draw_text((room_width / 2) - 512,room_height - (128 + 64) + 128, "Level: " + string(_base_esquerdo));
}
#endregion

switch(_building_selected){
	case 1:
		if(global.coin >= 100){
			_hydrogen += 0.01;
			global.coin -= 100;
		}
	break;
	
	case 2:
		if(global.coin >= 200){
			_oxygen += 0.01;
			global.coin -= 200;
		}
	break;
	
	case 3:
		if(global.coin >= 300){
			_carbon += 0.01;
			global.coin -= 300;
		}
	break;
	
	case 4:
		if(global.coin >= 400){
			_nitrogen += 0.01;
			global.coin -= 400;
		}
	break;
	
	case 5:
		if(global.oxygen >= 400 && global.hydrogen >= 200){
			_water += 0.01;
			global.oxygen -= 400;
			global.hydrogen -= 200;
		}
	break;
	
	case 6:
		if(global.oxygen >= 200 && global.hydrogen >= 200 && global.carbon >= 200 && global.nitrogen >= 200){
			_food += 0.01;
			global.oxygen -= 200;
			global.hydrogen -= 200;
			global.carbon -= 200;
			global.nitrogen -= 200;
		}
	break;
	
	case 7:
		if(global.coin >= 100000){
			_other_elements += 0.01;
			global.coin -= 100000;
		}
	break;
	
}

_building_selected = -1;

global.hydrogen += _hydrogen;
global.oxygen += _oxygen;
global.carbon += _carbon;
global.nitrogen += _nitrogen;
global.water += _water;
global.food += _food;
global.other_elements += _other_elements;


draw_text(room_width - 256, 128 * 1, "Hydrogen: ");
draw_text(room_width - 256, 128 * 2, "Oxygen: ");
draw_text(room_width - 256, 128 * 3, "Carbon: ");
draw_text(room_width - 256, 128 * 4, "Nitrogen: ");
draw_text(room_width - 256, 128 * 5, "Water: ");
draw_text(room_width - 256, 128 * 6, "Food: ");
draw_text(room_width - 256, 128 * 7, "Other Elements: ");

draw_text(room_width - 64, 128 * 1,string(global.hydrogen));
draw_text(room_width - 64, 128 * 2,string(global.oxygen));
draw_text(room_width - 64, 128 * 3,string(global.carbon));
draw_text(room_width - 64, 128 * 4,string(global.nitrogen));
draw_text(room_width - 64, 128 * 5,string(global.water));
draw_text(room_width - 64, 128 * 6,string(global.food));
draw_text(room_width - 64, 128 * 7,string(global.other_elements));

for(var _i = 0; _i < 100; _i++){
	draw_line(room_width/2, room_height/2, mouse_x - 64 + (_i *2), mouse_y);
}