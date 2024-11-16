enum BASEATRIBUTES {
    // Enumeração para os atributos base, definindo os índices correspondentes a cada atributo.
    FORCA,        // Índice para o atributo de Força (STR).
    VELOCIDADE,   // Índice para o atributo de Velocidade (AGI).
    SORTE,        // Índice para o atributo de Sorte (LUK).
    LENGTH        // Define o número de atributos, útil para loops que percorrem todos os atributos.
}
// A enumeração `BASEATRIBUTES` facilita o acesso aos atributos pelo nome em vez de usar números diretamente.

global.status_buttons = [
    ["STR", 1],
    ["AGI", 1],
    ["LUK", 1]
];
// Define a lista global `status_buttons`, onde cada item é um array que contém:
// 1. Uma string que representa o nome do atributo (STR, AGI, LUK).
// 2. Um valor numérico inicial para o atributo (1).
// Isso é usado para representar os botões que controlam os atributos de Força (STR), Agilidade (AGI) e Sorte (LUK) na interface do jogo.


// Obtém a câmera ativa
_get_camera_x = 0;
_get_camera_y = 0;
// Inicializa as variáveis `_get_camera_x` e `_get_camera_y`, que armazenam as coordenadas da câmera no eixo X e Y.
// Aqui, elas são definidas como 0, mas geralmente são usadas para acompanhar a posição da câmera no jogo.


// Define posições relativas para os botões
button_y = 100;
// Define a posição Y inicial dos botões de status na interface como 100 pixels a partir do topo.

button_spacing = 100;
// Define o espaçamento entre os botões como 100 pixels, garantindo que os botões fiquem com uma distância vertical consistente entre eles.
