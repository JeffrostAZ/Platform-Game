_bounce_strength = 15;  // Força de quique ao atingir o chão
_max_bounces = 3;  // Número máximo de quicadas permitidas

_speed = 10;
_grv = 0.3;
// Variáveis de movimento da bomb
_side = sign(x - mouse_x);

_vx = 0;
_vy = -15;

// Contador de quicadas
_bounces = 0;
_dano_bomba = 10;
direction = point_direction(x, y, mouse_x, mouse_y);
speed = 10;

_move_y = 0;