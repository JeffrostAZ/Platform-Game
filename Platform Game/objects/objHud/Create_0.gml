// Obtém a câmera ativa
_cam = view_get_camera(0);
// Obtém o identificador da câmera associada à view 0 (a primeira view) e armazena o resultado na variável `_cam`.
// As views em GameMaker controlam o que o jogador vê na tela, e cada view pode ter uma câmera associada.
// A função `view_get_camera(0)` retorna o identificador da câmera ativa na view 0.

_get_camera_x = camera_get_view_width(_cam);
// Obtém a largura da câmera (_cam) e armazena na variável `_get_camera_x`.
// `camera_get_view_width(_cam)` retorna a largura da área visível da câmera, o que é útil para calcular posições e elementos na tela com base no tamanho da câmera.

_get_camera_y = camera_get_view_height(_cam);
// Obtém a altura da câmera (_cam) e armazena na variável `_get_camera_y`.
// `camera_get_view_height(_cam)` retorna a altura da área visível da câmera.
// Isso é usado para definir elementos da interface ou objetos em posições relativas à altura da tela visível.
