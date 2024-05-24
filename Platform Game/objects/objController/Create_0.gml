// No evento Create do objeto controlador
#region Global Variables
global.items = 0;
global.ability = 0;
global.status_buttons = 0;
global.coin = 100;
global.level = 0;
global.exp  = 0;
global.exp_point_skill = 0;
global._item_menu = -1; 
global._exp_level_needs = 100;
global.buying_limit = 2;
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

instance_create_layer(0, 0, "Instances", objWorldGenerate);
