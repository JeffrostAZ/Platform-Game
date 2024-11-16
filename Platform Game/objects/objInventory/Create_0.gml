_cell = 64;
// Define o tamanho de uma célula (provavelmente usada para organizar itens ou botões em uma grade). 
// Neste caso, o tamanho de cada célula é 64 pixels de largura e altura.

_hotbar_item = 0;
// Inicializa a variável `_hotbar_item` com 0. 
// Isso provavelmente representa o item atualmente selecionado na barra de atalhos (hotbar) do jogador.


// Obtém a câmera ativa
_cam = view_get_camera(0);
// Obtém o identificador da câmera ativa associada à view 0. 
// As views em GameMaker controlam o que o jogador vê na tela e cada view pode ter uma câmera associada. 
// A função `view_get_camera(0)` retorna o identificador da câmera da view 0.

_get_camera_x = camera_get_view_width(_cam);
// Obtém a largura da área visível da câmera (_cam) e armazena na variável `_get_camera_x`.
// Isso é usado para calcular posições na interface com base no tamanho da tela visível (da câmera).

_get_camera_y = camera_get_view_height(_cam);
// Obtém a altura da área visível da câmera (_cam) e armazena na variável `_get_camera_y`.
// Isso é usado para garantir que elementos da interface estejam corretamente posicionados verticalmente de acordo com a tela visível.


// Define posições relativas para os botões
button_y = 100;
// Define a posição Y inicial onde os botões serão desenhados na interface, começando a 100 pixels a partir do topo da tela.

button_spacing = 50;
// Define o espaçamento vertical entre os botões (50 pixels de distância entre cada botão).
