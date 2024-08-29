//#region Follow Mouse
//_angle_to_mouse = point_direction(objController._pos_x, objController._pos_y, mouse_x, mouse_y);

//image_angle = _angle_to_mouse;

var _dir = sign(mouse_x - x);
image_xscale = _dir;


_countdown -= 1;

if(place_meeting(x, y, objEnemy_1) && _countdown <= 0){
	objEnemy_1.id._health -= 15;
	_countdown = 25;
}
//#endregion

#region Attack Slam

// Inicia a animação ao clicar com o mouse
if (mouse_check_button_pressed(mb_left)) {
    _animating = true;
    image_angle = _start_angle;
}

// Atualiza a animação
if (_animating) {
    image_angle -= _animation_speed;


    // Verifica se a animação chegou ao fim
    if (image_angle <= _end_angle) {
        image_angle = _end_angle;
        _animating = false;  // Termina a animação
    }
}


#endregion

#region Follow Slam

// Verifica se o mouse foi clicado e se o objeto ainda não foi lançado
if (mouse_check_button_pressed(mb_left) && !_launched) {

    // Calcula a direção em relação ao mouse
    var _point_dir = point_direction(x, y, mouse_x, mouse_y);
    
    // Ajusta o ângulo da imagem e a direção do movimento
    image_angle = _point_dir;
    direction = _point_dir;
    
    // Define a velocidade do objeto
    speed = 15;
    
    // Marca o objeto como lançado
    _launched = true;
}

// Se a lança está em movimento, crie objetos ao longo do caminho
if (_launched) {
    // Calcula a posição da lâmina da lança
    var _blade_x = x + lengthdir_x(sprite_width, image_angle);
    var _blade_y = y + lengthdir_y(sprite_height, image_angle);
    
    // Cria um objeto na posição da lâmina se a distância percorrida for suficiente
    _distance_traveled += speed * _dir;
    if (_distance_traveled >= _create_interval) {
        instance_create_layer(_blade_x, _blade_y, "Collision", objFragment); // Substitua "Instances" pelo nome da camada e "obj_trail" pelo nome do objeto a ser criado
        _distance_traveled = 0; // Reseta a distância percorrida
    }
    
    // Verifica se o objeto chegou próximo ao mouse
    if (point_distance(x, y, mouse_x, mouse_y) < 5) {
        speed = 0;
        _launched = false;  // Reseta a variável caso você queira permitir relançamentos
    }
}


#endregion

x = objController._pos_x;
y = objController._pos_y;