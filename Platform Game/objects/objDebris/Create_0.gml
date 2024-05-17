
// No evento Create de objOrbiter
_orbit_radius = 100; // Raio da órbita
_orbit_speed = 0.05; // Velocidade da órbita em radianos por step
_orbit_angle = 0; // Ângulo inicial da órbita em radianos

_x_pos = objPlayer.x;
_y_pos = objPlayer.y;

_shoot_length_line = 0;

_shoot = false;


move_towards_point(mouse_x, mouse_y, 5);