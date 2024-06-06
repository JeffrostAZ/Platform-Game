// Desenha a sprite do drone
draw_self();

draw_sprite(spr_drone, 0, x, y);

if (_state == "atacar" && instance_exists(_target)) {
    draw_line_color(x, y, _target.x, _target.y, c_red, c_red);
}
