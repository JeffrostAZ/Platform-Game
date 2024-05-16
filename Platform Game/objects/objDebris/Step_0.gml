// No evento Step de objOrbiter
// Atualizar o ângulo baseado na velocidade da órbita
_orbit_angle += _orbit_speed;



if (_shoot){
	
	
	
	
} else {
		// Calcular a nova posição X e Y
	x = objPlayer.x + _orbit_radius * cos(_orbit_angle);
	y = objPlayer.y + _orbit_radius * sin(_orbit_angle);
}

