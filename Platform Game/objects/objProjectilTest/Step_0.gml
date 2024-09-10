// Atualiza a posição com base na gravidade e na velocidade
_vp += _gravity;
y += _vp;

// Destrói o projétil se sair da tela (ou ao colidir)
if (y > room_height || x < 0 || x > room_width) {
    instance_destroy();
}

// Definir velocidade do projétil
var _velocity = 10;

// Calcular direção
var _angle = point_direction(x, y, mouse_x, mouse_y);
direction = _angle;
speed = _velocity;