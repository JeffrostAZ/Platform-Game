_move_y += _grav;
	
// Verifica se o mouse foi clicado e se o objeto ainda não foi lançado
if (mouse_check_button_pressed(mb_left) && !_launched) {
    // Calcula a direção em relação ao mouse
    var _dir = point_direction(x, y, mouse_x, mouse_y);
    
    // Ajusta o ângulo da imagem e a direção do movimento
    image_angle = _dir;
    direction = _dir;
    
    // Define a velocidade do objeto
    speed = 5;
    
    // Marca o objeto como lançado
    _launched = true;
}

// Para o objeto quando atingir o alvo
if (_launched) {
    // Verifica se o objeto chegou próximo ao mouse
    if (point_distance(x, y, mouse_x, mouse_y) < 5) {
        _launched = false;  // Reseta a variável caso você queira permitir relançamentos
    }
}


if(place_meeting(x, y, objCollision)){
	move_bounce_all(true);		
}

#region Collision objEnemy

if(place_meeting(x, y, objEnemy)){
	audio_play_sound(sndShoot, 1, 0);
	objEnemy.id._health -= objController._atk;
				
	repeat(10){
		var _rand_dir = irandom_range(0, 359);
		var _rand_spd = irandom_range(5, 15);
		var _inst = instance_create_depth(x, y, depth, objFragment);
					
		_inst.direction = _rand_dir;
		_inst.speed = _rand_spd
	}
instance_destroy();
}

#endregion
		

	// Calcular a nova posição X e Y
//x = objPlayer.x + _orbit_radius * cos(_orbit_angle);
//y = objPlayer.y + _orbit_radius * sin(_orbit_angle);