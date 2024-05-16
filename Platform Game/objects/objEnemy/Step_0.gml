//move_towards_point(objPlayer.x, y, 3);
_move_x = sign(objPlayer.x - x);
_move_y += _grv;

#region Collision objCollision
// Verifica a colisão com as paredes (horizontal)
if (place_meeting(x + _move_x, y, objCollision)) {
    while (!place_meeting(x + sign(_move_x), y, objCollision)) {
        x += sign(_move_x);
    }
    _move_x = 0;
}

// Verifica a colisão com o chão (vertical)
if (place_meeting(x, y + _move_y, objCollision)) {
    while (!place_meeting(x, y + sign(_move_y), objCollision)) {
        y += sign(_move_y);
    }
    _move_y = 0;
}
#endregion

#region Collision objEnemy
// Verifica a colisão com as paredes (horizontal)
if (place_meeting(x + _move_x, y, objEnemy)) {
    while (!place_meeting(x + sign(_move_x), y, objEnemy)) {
        x += sign(_move_x);
    }
    _move_x = 0;
}

#endregion
x += _move_x;
y += _move_y;