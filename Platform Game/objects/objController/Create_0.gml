// No evento Create do objeto controlador
// Obtém a câmera ativa
_cam = view_get_camera(0);
_get_camera_x = camera_get_view_width(_cam);
_get_camera_y = camera_get_view_height(_cam);

// Define posições relativas para os botões
button_y = 100;
button_spacing = 100;

_size = 0;
_noise = 0;
_room_width = 0;
_room_growth = 0;

#region Global Variables
global.items = [];
global.ability = 0;
global.status_buttons = [];
global.coin = 200;
global.level = 1;
global.exp  = 0;
global.exp_point_skill = 5;
global._item_menu = -1; 
global._exp_level_needs = 300;
global.buying_limit = 2;
global.upgrade = false;
global.map = 4
global.change_world = -1;
global.jumping = 0;
global.follow = false;
global.size = 0;
global.drone_bullet = 50;
#endregion

#region Status Attributes

_max_health_status = 0;
_str_status = 0;
_agi_status = 0;
_luk_status = 0;
_def_status = 0;
_atk_status = 0;
_shoot_frequency_status = 0;

#endregion

#region Item Status Attributes

_max_health_item_status = 0;
_str_item_status = 0;
_agi_item_status = 0;
_luk_item_status = 0;
_def_item_status = 0;
_atk_item_status = 0;
_shoot_frequency_item_status = 0;

#endregion

#region Player Attributes
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
_pos_x = 0;
_pos_y = 0;
#endregion


instance_create_layer(0, 0, "Instances", objStatus);

instance_create_layer(0, 0, "Instances", objItems);

instance_create_layer(0, 0, "Instances", objHud);

var _range = irandom(room_width / 64);

Create_World(1, global.level * 3, _range, objSpawner);
