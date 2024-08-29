instance_create_layer(x, y, "Controller", objAbilities);


_grv = 0.9;

_sprite_enemy = sprEnemyRed;

_health = global.level * (global.exp / 100) + 10;

_move_x = 0;
_move_y = 0;

_speed = 2 + (global.level / 10);

_shoot_countdown = 0;
_shot_limit = 75;
_shoot_spd = 5;


#region

// Variáveis de controle
_target = noone;    // Alvo inicial (nenhum)
_follow_distance = 200;  // Distância que o drone mantém do personagem principal
_shoot_interval = 30;  // Intervalo de tempo entre disparos
_time_since_last_shot = 0;  // Contador de tempo para disparos
_being_attacked = false;

_time_since_last_move = 0;
// Referência ao personagem principal
_player = objPlayer;  // Substitua obj_player pelo nome do seu objeto de personagem principal

_point_direction = 0;
_move = false;

_follow = 1; 
_stop_move = 1;
_speed_to_target = 5;

#endregion
