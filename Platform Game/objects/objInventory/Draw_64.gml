var _num_buttons = 5;  // Número de botões
var _button_width = 300 / _num_buttons;  // Cada botão tem um quinto da largura da tela
var _pos_x = (300 - _button_width * _num_buttons) / 2;  // Centraliza os botões horizontalmente
var _height_btn = _cell;
var _button_y = _get_camera_y - _cell - (_num_buttons * button_spacing) / 2;  // Centraliza verticalmente baseado no número de botões

var _item_hotbar_x = (room_width / 2 - 172) + _pos_x + _hotbar_item * _button_width;
switch(_hotbar_item){
	case 0:
		draw_rectangle(_item_hotbar_x, _button_y, _item_hotbar_x + _button_width, _button_y + _height_btn, 0);
	break;
		
	case 1:
		draw_rectangle(_item_hotbar_x, _button_y, _item_hotbar_x + _button_width, _button_y + _height_btn, 0);
	break;
		
	case 2:
		draw_rectangle(_item_hotbar_x, _button_y, _item_hotbar_x + _button_width, _button_y + _height_btn, 0);
	break;
		
	case 3:
		draw_rectangle(_item_hotbar_x, _button_y, _item_hotbar_x + _button_width, _button_y + _height_btn, 0);
	break;
	
	case 4:
		draw_rectangle(_item_hotbar_x, _button_y, _item_hotbar_x + _button_width, _button_y + _height_btn, 0);
	break;
}

for(var _i = 0; _i < _num_buttons; _i++){
    // Coordenadas do botão
    var _button_x = (room_width / 2 - 172) + _pos_x + _i * _button_width;
	

	
	if (point_in_rectangle(mouse_x, mouse_y, _button_x, _button_y, _button_x + _button_width, _button_y + _height_btn)) {
		//draw_rectangle(_button_x, _button_y, _button_x + _button_width, _button_y + _height_btn, 0);
	} else {
		draw_rectangle(_button_x, _button_y, _button_x + _button_width, _button_y + _height_btn, 1);
	}
}