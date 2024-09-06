draw_self();

#region Shield

// Obtém o número total de inimigos do tipo objEnemyDrone
var _numb_enemy = instance_number(objEnemyDrone);

// Define a força de expulsão (aumente ou diminua conforme necessário)
var _expel_force = 5;

// Itera sobre todos os inimigos
with (objEnemyDrone) {
    // Verifica se o inimigo está dentro da área circular
    if (point_in_circle(x, y, other.x, other.y, 100)) {
        // Se estiver, para de seguir e zera a velocidade
        _follow = 0;
        speed = 0;

        // Calcula a direção do inimigo em relação ao centro do círculo
        var _dir = point_direction(x, y, other.x, other.y);

        // Mova o inimigo na direção oposta (expulsão)
        var _distance = point_distance(x, y, other.x, other.y);

        if (_distance < 100) {
            // Calcula as componentes X e Y para "empurrar" o inimigo para fora do círculo
            x -= lengthdir_x(_expel_force, _dir);
            y -= lengthdir_y(_expel_force, _dir);
        }
    } else {
        // Caso contrário, mantém o comportamento de seguir o jogador
        _follow = -1;
    }
}

// Desenha o círculo de escudo ao redor do jogador
draw_set_color(c_white);
draw_set_alpha(0.5);
draw_circle(x, y, 100, false); // Desenha o círculo como uma linha (use true se quiser preenchido)
draw_set_alpha(1);

#endregion
