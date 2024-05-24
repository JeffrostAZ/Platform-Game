#region
// Variáveis de controle
_state = "rondar";  // Estado inicial
_target = noone;    // Alvo inicial (nenhum)
_follow_distance = 100;  // Distância que o drone mantém do personagem principal
_shoot_interval = 30;  // Intervalo de tempo entre disparos
_time_since_last_shot = 0;  // Contador de tempo para disparos

// Referência ao personagem principal
_player = objPlayer;  // Substitua obj_player pelo nome do seu objeto de personagem principal


// Função para criar um path dinâmico ao redor do personagem principal

function _create_random_path(_path) {
    path_clear_points(_path);
    
    var _segments = 8;  // Número de segmentos do path
    var _radius = _follow_distance;  // Distância do path ao redor do personagem

    for (var _i = 0; _i < _segments; _i++) {
        var _angle = _i * (360 / _segments);
        var _x_offset = _player.x + lengthdir_x(_radius, _angle);
        var _y_offset = _player.y + lengthdir_y(_radius, _angle);
        path_add_point(_path, _x_offset, _y_offset, 5);
    }
    
    path_set_closed(_path, true);  // Fecha o path para formar um loop
}


// Cria o path inicial
_path = path_add();
_create_random_path(_path);

// Variáveis para o path
path_speed = 5;
_path_update_interval = 60;  // Intervalo de tempo (em frames) para atualizar o path
_path_update_timer = 0;  // Contador de tempo para atualizar o path
#endregion
