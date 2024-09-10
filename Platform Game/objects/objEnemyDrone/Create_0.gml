#region

// Variáveis de controle
_state = "rondar";  // Estado inicial
_target = noone;    // Alvo inicial (nenhum)
_follow_distance = 200;  // Distância que o drone mantém do personagem principal
_shoot_interval = 30;  // Intervalo de tempo entre disparos
_time_since_last_shot = 0;  // Contador de tempo para disparos
_being_attacked = false;

_time_since_last_move = 0;
// Referência ao personagem principal
_player = objController;  // Substitua obj_player pelo nome do seu objeto de personagem principal

#endregion

_point_direction = 0;
_move = false;

_move_init_x = 0
_move_init_y = 0;
_move_end_x = 0;
_move_end_y = 0;

_follow = -1; 
_stop_move = 1;
_speed = 5;

_was_hited = 0;