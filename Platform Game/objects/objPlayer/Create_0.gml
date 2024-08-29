instance_create_layer(0, 0, "Controller", objAbilities);

_grv = 0.9;



#region Attributes

_health = 10;
_max_health = 10;
_energy = 10;
_max_energy = 10;
_str = 2;
_agi = 3;
_luk = 5;
_jump = -1;
_def = 5;
_atk = 15;
_shoot_spd = 60;
_shoot_frequency = 10;

#endregion

_rocket_fuel = 1000;

_shoot_countdown = 100;

_move_x = 0;
_move_y = 0; 

_box__existence = false;

_instance = 0;

// Obtém a câmera ativa
_cam = view_get_camera(0);
_get_camera_x = camera_get_view_width(_cam);
_get_camera_y = camera_get_view_height(_cam);

// Define posições relativas para os botões
button_y = 100;
button_spacing = 50;

alarm[0] = 60 * 0.4;

_animation = 0;
_idle = 1;