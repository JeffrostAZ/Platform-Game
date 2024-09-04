// Atualiza a posição com base na gravidade e na velocidade
_vp += _gravity;
y += _vp;

// Destrói o projétil se sair da tela (ou ao colidir)
if (y > room_height || x < 0 || x > room_width) {
    instance_destroy();
}
