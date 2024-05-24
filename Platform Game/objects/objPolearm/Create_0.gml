_angle_to_mouse = 0;
_sprite = spr_spearl_01;


// Variáveis de controle
_animating = false;  // Indica se a animação está ocorrendo
_start_angle = 359;  // Ângulo inicial (de cima)
_end_angle = 0;      // Ângulo final (para baixo)
_animation_speed = 25;  // Velocidade de rotação

_countdown = 25;

// Variável de controle para verificar se o objeto já foi lançado
_launched = false;

// Variáveis para controle de criação de objetos
_create_interval = 5; // Intervalo em pixels para criar novos objetos
_distance_traveled = 0; // Distância total percorrida desde o último objeto criado