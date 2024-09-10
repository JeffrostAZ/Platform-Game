randomize();

enum ITEMS {
    CAPACETE,
    OCULOS,
    MOCHILA,
    CINTO,
    MEIA,
    RELOGIO,
    ANEL,
    COLAR,
    BRACELETE,
    CHAPEU,
    CASACO,
    CALCAS,
    SHORTS,
    SAPATO,
    SANDALIA,
    TENIS,
    GRAVATA,
    CACHECOL,
    LUVAS_DE_INVERNO,
    VESTIDO,
    SAIA,
    BLUSA,
    SOBRETODO,
    JAQUETA,
    BERMUDA,
    PULSEIRA,
    BONE,
    GORRO,
    BANDANA,
    CACHECOL_DE_SEDA
}

enum STATUS {
    ATORDOAMENTO,
    ENVENENAMENTO,
    CONGELAMENTO,
    QUEIMADURA
}

enum ATRIBUTES {
    NAME,
    VALUE,
    LEVEL,
    BOUGHT,
	FORCA,
    VELOCIDADE,
    SORTE,
    VIDA,
    ENERGIA,
    CODE,
    SPRITE,
}

// Exemplo de

_mult = 0.1;
global.items = [
	Item_Create("Escudo Andro", 120, 0, 0, 5, 15, 5, 3, 2, 1000, 0),
	Item_Create("Bomba Eletromagnetica", 140, 0, 0, 5, 12, 3, 5, 4, 1001, 1),
	Item_Create("Exoesqueleto", 90, 0, 0, 4, 10, 3, 2, 3, 1002, 2),
	Item_Create("Manopla de Excesso", 100, 0, 0, 3, 18, 10, 2, 3, 1003, 3),
	Item_Create("Botas Antigravidade", 130, 0, 0, 15, 13, 3, 4, 5, 1004, 4),
	Item_Create("Foguete XRL8", 80, 0, 0, 5, 15, 3, 1, 2, 1005, 5),
	Item_Create("Arpao", 150, 0, 0, 3, 15, 8, 4, 4, 1006, 6),
	Item_Create("Binoculo Andro", 230, 0, 0, 5, 4, 5, 5, 6, 1007, 7),
	Item_Create("Dispositivo Hacker", 110, 0, 0, 2, 5, 5, 2, 3, 1008, 8),
	Item_Create("Mochila do Tempo", 90, 0, 0, 1, 8, 5, 3, 2, 1009, 9),
	Item_Create("Drone Andro", 100, 0, 0, 3, 12, 6, 5, 4, 1010, 10),
	Item_Create("Material de Aluminio", 130, 0, 0, 3, 6, 6, 4, 4, 1011, 11),
	Item_Create("Material de Ferro", 70, 0, 0, 2, 20, 7, 1, 2, 1012, 12),
	Item_Create("Material de Cobra", 150, 0, 0, 3, 5, 9, 7, 5, 1013, 13),
	Item_Create("Material de Titanio", 140, 0, 0, 2, 7, 8, 3, 3, 1014, 14),   
	Item_Create("Material de Aco", 140, 0, 0, 3, 12, 1, 5, 4, 1015, 15)
];

// Sorteia 5 itens únicos e armazena em global.displayed_items
_displayed_items = ds_list_create();

_selected = -1;

_last_selected = -1;

_scroll = 1975;

global._card_size = 0;
global._card_alpha = 0;

// Assegurando que não tentamos sortear mais itens do que disponíveis
var _num_to_draw = 28;

repeat(_num_to_draw){
    var _index = irandom_range(0, array_length(global.items) - 1);
	ds_list_add(_displayed_items, _index);
}

// Obtém a câmera ativa
_cam = view_get_camera(0);
_get_camera_x = camera_get_view_width(_cam);
_get_camera_y = camera_get_view_height(_cam);

// Define posições relativas para os botões
button_y = 100;
button_spacing = 50;